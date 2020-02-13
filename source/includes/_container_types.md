# Node Types

Provides API interfaces for managing node types within Morpheus.

A Node Type may also be referred to as a *Container Type* or *containerType*.

## Get All Node Types

```shell
curl "$MORPHEUS_API_URL/api/library/container-types" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
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
        "name": "morpheus ubuntu 16.04"
      },
      "category": "apache",
      "config": {
      },
      "containerPorts": [
        {
          "id": 8,
          "name": "Http",
          "port": 80,
          "loadBalanceProtocol": "http",
          "exportName": "HTTP"
        },
        {
          "id": 9,
          "name": "Https",
          "port": 443,
          "loadBalanceProtocol": "https",
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

`GET https://api.gomorpheus.com/api/library/container-types`

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
curl "$MORPHEUS_API_URL/api/library/container-types/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
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
        "name": "morpheus activemq config"
      }
    ],
    "environmentVariables": [

    ]
  }
}
```

This endpoint retrieves a specific node type.

### HTTP Request

`GET https://api.gomorpheus.com/api/library/container-types/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the node type


## Create a Node Type

Use this command to create a node type.

```shell
curl -XPOST "$MORPHEUS_API_URL/api/library/container-types" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
  "containerType": {
    "name": "mynode",
    "shortName": "mynode",
    "containerVersion": "1.0",
    "provisionTypeCode": "amazon",
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

`POST https://api.gomorpheus.com/api/library/container-types`

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Node type name
description | N | Node type description
containerVersion | Y | Version of the node type
provisionTypeCode | Y | Provision type code, eg. `amazon`, etc.
containerScripts | N | Array of script IDs, see [Scripts](#scripts)
containerTemplates | N | Array of file template IDs, see [File Templates](#file-templates)
environmentVariables | N | Array of node type env variables, see [Environment Variables](#environment-variables)

**note** The available configuration settings vary by provision type.

#### Environment Variables
The `environmentVariables` parameter is array of env objects with following fields:

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Environment variable name
value | N | Sets fixed value for variable
masked | N | Can be used to enable / disable masking of variable, default if off
export | N | Can be used to enable / disable export of variable, default is off

## Update a Node Type

Use this command to update an existing node type.

```shell
curl -XPUT "$MORPHEUS_API_URL/api/library/container-types/:id" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
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

`PUT https://api.gomorpheus.com/api/library/container-types/:id`

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
containerScripts | N | Array of script IDs, see [Scripts](#scripts)
containerTemplates | N | Array of file template IDs, see [File Templates](#file-templates)
environmentVariables | N | Array of node type env variables, see [Environment Variables](#environment-variables)

**note** The available configuration settings vary by provision type.

## Delete a Node Type

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/library/container-types/:id" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a node type 

### HTTP Request

`DELETE https://api.gomorpheus.com/api/library/container-types/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the node type