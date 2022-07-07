# Node Types

Provides API interfaces for managing node types within <%= application_name %>.

A Node Type may also be referred to as a *Container Type* or *containerType*.

## Get All Node Types

```shell
curl "<%= curl_url %>/api/library/container-types" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "containerTypes": [
    {
      "id": 1283,
      "account": null,
      "name": "Apache 2.4",
      "shortName": "apache",
      "code": "apache-upcloud-2.4-ubuntu-16.04",
      "containerVersion": "2.4",
      "provisionType": {
        "id": 30,
        "name": "UpCloud",
        "code": "upcloud"
      },
      "virtualImage": {
        "id": 6640,
        "name": "<%= application_name %> ubuntu 16.04"
      },
      "category": "apache",
      "config": {
      },
      "containerPorts": [
        {
          "id": 8,
          "name": "Http",
          "port": 80,
          "loadBalanceProtocol": "HTTP",
          "exportName": "HTTP"
        },
        {
          "id": 9,
          "name": "Https",
          "port": 443,
          "loadBalanceProtocol": "HTTPS",
          "exportName": "HTTPS"
        }
      ],
      "containerScripts": [
        {
          "id": 4,
          "name": "apache vm entrypoint"
        },
        {
          "id": 5,
          "name": "apache stop"
        },
        {
          "id": 6,
          "name": "apache start"
        }
      ],
      "containerTemplates": [

      ],
      "environmentVariables": [

      ]
    }
  ],
  "meta": {
    "size": 25,
    "total": 1285,
    "max": 25,
    "offset": 0
  }
```

This endpoint retrieves all node types.

### HTTP Request

`GET <%= api_url %>/api/library/container-types`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Name, description and provision type name, restricts query to only load node types which contain the phrase specified
name |  | Name filter, restricts query to only load type matching name specified
code |  | Code filter, restricts query to only load type matching code specified
provisionType |  | Provision type code filter, restricts query to only load node types of specified provision type


## Get a Specific Node Type

```shell
curl "<%= curl_url %>/api/library/container-types/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "containerType": {
    "id": 1,
    "account": null,
    "name": "ActiveMQ 5.11",
    "shortName": "activemq",
    "code": "activemq-5.11",
    "containerVersion": "5.11-morph.0.1",
    "provisionType": {
      "id": 1,
      "name": "Docker",
      "code": "docker"
    },
    "virtualImage": null,
    "category": null,
    "config": {
    },
    "containerPorts": [
      {
        "id": 1,
        "name": "Console",
        "port": 8161,
        "loadBalanceProtocol": null,
        "exportName": "CONSOLE"
      },
      {
        "id": 2,
        "name": "JMS Port",
        "port": 61616,
        "loadBalanceProtocol": null,
        "exportName": "JMS"
      },
      {
        "id": 3,
        "name": "AMQP Port",
        "port": 5672,
        "loadBalanceProtocol": null,
        "exportName": "AMQP"
      },
      {
        "id": 4,
        "name": "STOMP Port",
        "port": 61613,
        "loadBalanceProtocol": null,
        "exportName": "STOMP"
      },
      {
        "id": 5,
        "name": "MQTT Port",
        "port": 1883,
        "loadBalanceProtocol": null,
        "exportName": "MQTT"
      },
      {
        "id": 6,
        "name": "Websocket Port",
        "port": 61614,
        "loadBalanceProtocol": null,
        "exportName": "WEBSOCKET"
      }
    ],
    "containerScripts": [

    ],
    "containerTemplates": [
      {
        "id": 1,
        "name": "<%= application_name %> activemq config"
      }
    ],
    "environmentVariables": [

    ]
  }
}
```

This endpoint retrieves a specific node type.

### HTTP Request

`GET <%= api_url %>/api/library/container-types/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the node type


## Create a Node Type

Use this command to create a node type.

```shell
curl -XPOST "<%= curl_url %>/api/library/container-types" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "containerType": {
    "name": "mynode",
    "shortName": "mynode",
    "containerVersion": "1.0",
    "provisionTypeCode": "amazon",
    "containerPorts": [
      {
        "name": "Web",
        "port": 80,
        "loadBalanceProtocol": "HTTP"
      },
      {
        "name": "Secure Web",
        "port": 443,
        "loadBalanceProtocol": "HTTPS"
      }
    ],
    "scripts": [
      88
    ],
    "virtualImageId": 183,
    "mountLogs": null,
    "mountData": null,
    "statTypeCode": "amazon",
    "logTypeCode": "amazon",
    "serverType": "vm",
    "config": {
    }
  }
}'
```

> The above command returns JSON Structured like this:

```json
{
  "id": 104,
  "success": true
}
```

### HTTP Request

`POST <%= api_url %>/api/library/container-types`

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Node type name
shortName | Y | The short name is a name with no spaces used for display in your container list.
code | N | Node type code. Default is auto-generated UUID.
description | N | Node type description
containerVersion | Y | Version of the node type
provisionTypeCode | Y | Provision type code, eg. `amazon`, etc.
containerPorts | N | Array of exposed port definitions, see [Container Ports](#container-ports-parameter)
scripts | N | Array of script IDs, see [Scripts](#scripts)
templates | N | Array of file template IDs, see [File Templates](#file-templates)
environmentVariables | N | Array of node type env variables, see [Environment Variables](#environment-variable-parameters)

**note** The available configuration settings vary by provision type.

#### Container Ports Parameter

The `containerPorts` parameter is for exposed port configuration.

It should be passed as an array of Objects with the following attributes:

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
port | Y | n/a | port number. eg. `8080`
name | N | n/a | A name for the port eg. `web`
loadBalanceProtocol | N |  | The load balancer protocol. `HTTP`, `HTTPS`, or `TCP`. Default is none.

#### Environment Variable Parameters
The `environmentVariables` parameter is array of env objects with following fields:

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Environment variable name
value | N | Sets fixed value for variable
masked | N | Can be used to enable / disable masking of variable, default is off
export | N | Can be used to enable / disable export of variable, default is off

## Update a Node Type

Use this command to update an existing node type.

```shell
curl -XPUT "<%= curl_url %>/api/library/container-types/:id" \
  -H "Authorization: BEARER <%= curl_token %>"
  -H "Content-Type: application/json" \
  -d '{"layout": {
        "name": "Custom Node Name",
        "containerVersion": "1.2",
        "environmentVariables": [
          {
            "name": "foo",
            "value": "bar"
          }
        ],
      }}
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`PUT <%= api_url %>/api/library/container-types/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the node type

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Node type name
description | N | Node type description
containerVersion | Y | Version of the node type
provisionTypeCode | Y | Provision type code, eg. `amazon`, etc.
containerPorts | N | Array of exposed port definitions, see [Container Ports](#container-ports-parameter)
containerScripts | N | Array of script IDs, see [Scripts](#scripts)
containerTemplates | N | Array of file template IDs, see [File Templates](#file-templates)
environmentVariables | N | Array of node type env variables, see [Environment Variables](#environment-variables)

**note** The available configuration settings vary by provision type.

## Delete a Node Type

```shell
curl -XDELETE "<%= curl_url %>/api/library/container-types/:id" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a node type 

### HTTP Request

`DELETE <%= api_url %>/api/library/container-types/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the node type