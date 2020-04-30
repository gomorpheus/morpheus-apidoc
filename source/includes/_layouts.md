# Layouts

Provides API interfaces for managing layouts within Morpheus.

A Layout may also be referred to as an *Instance Type Layout* or *instanceTypeLayout*.

## Get All Layouts

```shell
curl "$MORPHEUS_API_URL/api/library/layouts" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "instanceTypeLayouts": [
    {
      "id": 574,
      "instanceType": {
        "id": 6,
        "name": "Apache",
        "code": "apache"
      },
      "account": null,
      "code": "apache-amazon-2.4-centos-7.3-single",
      "name": "Amazon Apache on CentOS 7.3",
      "instanceVersion": "2.4",
      "description": "This will provision a single process with no redundancy",
      "creatable": true,
      "memoryRequirement": null,
      "sortOrder": 100,
      "supportsConvertToManaged": null,
      "provisionType": {
        "id": 10,
        "code": "amazon",
        "name": "Amazon"
      },
      "taskSets": [

      ],
      "containerTypes": [
        {
          "id": 582,
          "account": null,
          "name": "Apache 2.4",
          "shortName": "apache",
          "code": "apache-amazon-2.4-centos-7.3",
          "containerVersion": "2.4",
          "provisionType": {
            "id": 10,
            "name": "Amazon",
            "code": "amazon"
          },
          "virtualImage": {
            "id": 2020,
            "name": "Morpheus Apache 2.4 on CentOS 7.3"
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
              "id": 90,
              "name": "apache folder config"
            },
            {
              "id": 4,
              "name": "apache vm entrypoint"
            },
            {
              "id": 88,
              "name": "apache stop"
            },
            {
              "id": 89,
              "name": "apache start"
            }
          ],
          "containerTemplates": [

          ],
          "environmentVariables": [

          ]
        }
      ],
      "mounts": [

      ],
      "ports": [
        {
          "id": 8,
          "code": "apache.80",
          "name": "Http",
          "shortName": "http",
          "internalPort": 80,
          "externalPort": 80,
          "loadBalancePort": null,
          "sortOrder": 0,
          "loadBalanceProtocol": "http",
          "loadBalance": true,
          "visible": true
        },
        {
          "id": 9,
          "code": "apache.443",
          "name": "Https",
          "shortName": "https",
          "internalPort": 443,
          "externalPort": 443,
          "loadBalancePort": null,
          "sortOrder": 1,
          "loadBalanceProtocol": "https",
          "loadBalance": true,
          "visible": true
        }
      ],
      "optionTypes": [

      ],
      "environmentVariables": [

      ],
      "specTemplates": [

      ]
    }
  ],
  "meta": {
    "size": 25,
    "total": 1241,
    "max": 25,
    "offset": 0
  }
}
```

This endpoint retrieves all layouts.

### HTTP Request

`GET https://api.gomorpheus.com/api/library/layouts`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Name, description and provision type name, restricts query to only load layouts which contain the phrase specified
name |  | Name filter, restricts query to only load layout matching name specified
code |  | Code filter, restricts query to only load layout matching code specified
provisionType |  | Provision type code filter, restricts query to only load layouts of specified provision type 

## Get All Layouts For an Instance Type

```shell
curl "$MORPHEUS_API_URL/api/library/instance-types/1/layouts" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "instanceTypeLayouts": [
    {
      "id": 9,
      "instanceType": {
        "id": 1,
        "name": "ActiveMQ",
        "code": "activemq"
      },
      "account": null,
      "code": "activemq-amazon-5.11-single",
      "name": "Amazon ActiveMQ",
      "instanceVersion": "5.11",
      "description": "This will provision a single process with no redundancy",
      "creatable": true,
      "memoryRequirement": null,
      "sortOrder": 10,
      "supportsConvertToManaged": null,
      "provisionType": {
        "id": 10,
        "code": "amazon",
        "name": "Amazon"
      },
      "taskSets": [

      ],
      "containerTypes": [
        {
          "id": 9,
          "account": null,
          "name": "ActiveMQ 5.11",
          "shortName": "activemq",
          "code": "activemq-amazon-5.11",
          "containerVersion": "5.11",
          "provisionType": {
            "id": 10,
            "name": "Amazon",
            "code": "amazon"
          },
          "virtualImage": {
            "id": 7,
            "name": "ubuntu-14_04-activemq-5_11-morph.0.1"
          },
          "category": "activemq",
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
            {
              "id": 1,
              "name": "activemq vm entrypoint"
            },
            {
              "id": 2,
              "name": "activemq stop"
            },
            {
              "id": 3,
              "name": "activemq start"
            }
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
      ],
      "mounts": [

      ],
      "ports": [
        {
          "id": 1,
          "code": "activemq.8161",
          "name": "Console",
          "shortName": "http",
          "internalPort": 8161,
          "externalPort": 8161,
          "loadBalancePort": null,
          "sortOrder": 0,
          "loadBalanceProtocol": null,
          "loadBalance": false,
          "visible": true
        },
        {
          "id": 2,
          "code": "activemq.61616",
          "name": "JMS Port",
          "shortName": "jms",
          "internalPort": 61616,
          "externalPort": 61616,
          "loadBalancePort": null,
          "sortOrder": 1,
          "loadBalanceProtocol": null,
          "loadBalance": false,
          "visible": true
        },
        {
          "id": 3,
          "code": "activemq.5672",
          "name": "AMQP Port",
          "shortName": "amqp",
          "internalPort": 5672,
          "externalPort": 5672,
          "loadBalancePort": null,
          "sortOrder": 2,
          "loadBalanceProtocol": null,
          "loadBalance": false,
          "visible": false
        },
        {
          "id": 4,
          "code": "activemq.61613",
          "name": "STOMP Port",
          "shortName": "stomp",
          "internalPort": 61613,
          "externalPort": 61613,
          "loadBalancePort": null,
          "sortOrder": 3,
          "loadBalanceProtocol": null,
          "loadBalance": false,
          "visible": false
        },
        {
          "id": 5,
          "code": "activemq.1883",
          "name": "MQTT Port",
          "shortName": "mqtt",
          "internalPort": 1883,
          "externalPort": 1883,
          "loadBalancePort": null,
          "sortOrder": 4,
          "loadBalanceProtocol": null,
          "loadBalance": false,
          "visible": false
        },
        {
          "id": 6,
          "code": "activemq.61614",
          "name": "Websocket Port",
          "shortName": "websocket",
          "internalPort": 61614,
          "externalPort": 61614,
          "loadBalancePort": null,
          "sortOrder": 5,
          "loadBalanceProtocol": null,
          "loadBalance": false,
          "visible": false
        }
      ],
      "optionTypes": [

      ],
      "environmentVariables": [

      ],
      "specTemplates": [

      ]
    }
  ],
  "meta": {
    "size": 1,
    "total": 43,
    "max": 1,
    "offset": 0
  }
}
```

This endpoint retrieves all layouts for a specific instance type.

### HTTP Request

`GET https://api.gomorpheus.com/api/library/instance-types/:instanceTypeId/layouts`

### URL Parameters

Parameter | Description
--------- | -----------
instanceTypeId | ID of the instance type

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Name, description and provision type name, restricts query to only load layouts which contain the phrase specified
name |  | Name filter, restricts query to only load layout matching name specified
code |  | Code filter, restricts query to only load layout matching code specified
provisionType |  | Provision type code filter, restricts query to only load layouts of specified provision type

## Get a Specific Layout

```shell
curl "$MORPHEUS_API_URL/api/library/layouts/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "instanceTypeLayout": {
    "id": 1,
    "instanceType": {
      "id": 1,
      "name": "ActiveMQ",
      "code": "activemq"
    },
    "account": null,
    "code": "activemq-5.11",
    "name": "Docker ActiveMQ",
    "instanceVersion": "5.11",
    "description": "This will provision a single process with no redundancy",
    "creatable": true,
    "memoryRequirement": null,
    "sortOrder": 0,
    "supportsConvertToManaged": null,
    "provisionType": {
      "id": 1,
      "code": "docker",
      "name": "Docker"
    },
    "taskSets": [

    ],
    "containerTypes": [
      {
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
    ],
    "mounts": [
      {
        "id": 2,
        "code": "mount.data",
        "name": "data",
        "shortName": "data",
        "mountType": "volume",
        "sortOrder": 1,
        "required": false,
        "visible": true,
        "deployable": true,
        "canPersist": true
      }
    ],
    "ports": [
      {
        "id": 1,
        "code": "activemq.8161",
        "name": "Console",
        "shortName": "http",
        "internalPort": 8161,
        "externalPort": 8161,
        "loadBalancePort": null,
        "sortOrder": 0,
        "loadBalanceProtocol": null,
        "loadBalance": false,
        "visible": true
      },
      {
        "id": 2,
        "code": "activemq.61616",
        "name": "JMS Port",
        "shortName": "jms",
        "internalPort": 61616,
        "externalPort": 61616,
        "loadBalancePort": null,
        "sortOrder": 1,
        "loadBalanceProtocol": null,
        "loadBalance": false,
        "visible": true
      },
      {
        "id": 3,
        "code": "activemq.5672",
        "name": "AMQP Port",
        "shortName": "amqp",
        "internalPort": 5672,
        "externalPort": 5672,
        "loadBalancePort": null,
        "sortOrder": 2,
        "loadBalanceProtocol": null,
        "loadBalance": false,
        "visible": false
      },
      {
        "id": 4,
        "code": "activemq.61613",
        "name": "STOMP Port",
        "shortName": "stomp",
        "internalPort": 61613,
        "externalPort": 61613,
        "loadBalancePort": null,
        "sortOrder": 3,
        "loadBalanceProtocol": null,
        "loadBalance": false,
        "visible": false
      },
      {
        "id": 5,
        "code": "activemq.1883",
        "name": "MQTT Port",
        "shortName": "mqtt",
        "internalPort": 1883,
        "externalPort": 1883,
        "loadBalancePort": null,
        "sortOrder": 4,
        "loadBalanceProtocol": null,
        "loadBalance": false,
        "visible": false
      },
      {
        "id": 6,
        "code": "activemq.61614",
        "name": "Websocket Port",
        "shortName": "websocket",
        "internalPort": 61614,
        "externalPort": 61614,
        "loadBalancePort": null,
        "sortOrder": 5,
        "loadBalanceProtocol": null,
        "loadBalance": false,
        "visible": false
      }
    ],
    "optionTypes": [

    ],
    "environmentVariables": [

    ],
    "specTemplates": [

    ]
  }
}
```

This endpoint retrieves a specific layout.

### HTTP Request

`GET https://api.gomorpheus.com/api/library/layouts/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the layout


## Create a Layout

```shell
curl -XPOST "$MORPHEUS_API_URL/api/library/instance-types/132/layouts" \
  -H "Authorization: Bearer $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
  "instanceTypeLayout": {
    "name": "Foobar",
    "instanceVersion": "1.1",
    "description": "An example layout",
    "creatable": true,
    "provisionTypeCode": "amazon",
    "memoryRequirement": "10000",
    "hasAutoScale": true,
    "supportsConvertToManaged": true,
    "containerTypes": [
      1548
    ],
    "optionTypes": [
      
    ],
    "specTemplates": [
      
    ],
    "permissions": {
      "resourcePermissions": {
        "all":true
      }
    ]
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

Use this command to create a layout.

### HTTP Request

`POST https://api.gomorpheus.com/api/library/instance-types/:instanceTypeId/layouts`

### URL Parameters

Parameter | Description
--------- | -----------
instanceTypeId | ID of the instance type

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Layout name
description | N | Layout description
instanceVersion | Y | Version of the layout
creatable | N | Can be used to enable / disable the creatability of the layout. Default is on
hasAutoScale | N | Can be used to enable / disable the horizontal scaling. Default is off
supportsConvertToManaged | N | Can be used to enable / disable the supports convert to managed. Default is off
memoryRequirement | N | Memory requirement in megabytes
provisionTypeCode | Y | Provision type code
containerTypes | N | Array of layout node type IDs, see [Node Types](#node-types)
optionTypes | N | Array of layout option type IDs, see [Option Types](#option-types)
specTemplates | N | Array of layout spec template IDs, see [Spec Templates](#spec-templates)
taskSetId | N | ID of [Workflow](#workflows)
environmentVariables | N | Array of layout env variables, see [Environment Variables](#environment-variable-parameters)
permissions | N | Permissions object for upgrading group access, see [Permissions](#permissions-parameters)

#### Environment Variable Parameters
The `environmentVariables` parameter is array of env objects with following fields:

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Environment variable name
value | N | Sets fixed value for variable
masked | N | Can be used to enable / disable masking of variable, default is off
export | N | Can be used to enable / disable export of variable, default is off

#### Permissions Parameters
The `permissions` parameter is an object with following fields:

Parameter | Required | Description
--------- | -------- | -----------
resourcePermissions | N | Object containing group access settings, see [Group Access Parameters](#group-access-parameters)

##### Group Access Parameters
The `resourcePermissions` parameter is an object with following fields:

Parameter | Required | Description
--------- | -------- | -----------
all | N | Set to true to grant access to all groups
sites | N | Array of objects identifying groups with access eg. `[{"id":1},{"id":2}]`


## Update a Layout

```shell
curl -XPUT "$MORPHEUS_API_URL/api/library/instance-types/132/layouts" \
  -H "Authorization: Bearer $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
  "instanceTypeLayout": {
    "instanceVersion": "1.2",
    "containerTypes": [
      1550
    ]
  }
}'
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

Use this command to update an existing layout.

### HTTP Request

`PUT https://api.gomorpheus.com/api/library/layouts/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the layout

### JSON Parameters

Same as [Create](#create-an-instance-type).

## Update Layout Permissions

```shell
curl -XPOST "$MORPHEUS_API_URL/api/library/instance-types/132/layouts" \
  -H "Authorization: Bearer $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
  "instanceTypeLayout": {
    "permissions": {
      "resourcePermissions": {
        "all":false,
        "sites": [
          {"id": 2},
          {"id": 3}
        ]
      }
    ]
  }
}'
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

Use this command to update permissions for an existing layout.

### HTTP Request

`POST https://api.gomorpheus.com/api/library/layouts/:id/permissions`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the layout

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
permissions | N | Permissions object for upgrading group access, see [Permissions](#permissions-parameters)

#### Permissions Parameters
The `permissions` parameter is an object with following fields:

Parameter | Required | Description
--------- | -------- | -----------
resourcePermissions | N | Object containing permission settings, see [Group Access Parameters](#group-access-parameters)

##### Group Access Parameters
The `resourcePermissions` parameter is an object with following fields:

Parameter | Required | Description
--------- | -------- | -----------
all | N | Set to true to grant access to all groups
sites | N | Array of objects identifying groups with access eg. `[{"id":1},{"id":2}]`

## Delete a Layout

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/library/layouts/:id" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a layout 

### HTTP Request

`DELETE https://api.gomorpheus.com/api/library/layouts/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the layout
