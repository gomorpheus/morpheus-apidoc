# Cluster Layouts

Provides API interfaces for managing cluster layouts within <%= application_name %>.

## Get All Cluster Layouts

```shell
curl "<%= curl_url %>/api/library/cluster-layouts" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "layouts": [
    {
      "id": 1,
      "optionTypes": [
        {
          "id": 1080,
          "name": "Option 2",
          "code": "option2",
          "description": null,
          "fieldName": "option2",
          "fieldLabel": "Option 2",
          "fieldContext": "config.customOptions",
          "fieldGroup": null,
          "fieldClass": null,
          "fieldAddOn": null,
          "fieldComponent": null,
          "placeHolder": null,
          "helpBlock": null,
          "defaultValue": null,
          "optionSource": null,
          "optionList": null,
          "type": "checkbox",
          "advanced": false,
          "required": false,
          "editable": false,
          "creatable": true,
          "config": {
          },
          "displayOrder": 0,
          "wrapperClass": null,
          "enabled": true,
          "noBlank": false,
          "dependsOnCode": null,
          "contextualDefault": false
        }
      ],
      "serverCount": 1,
      "dateCreated": "2019-07-23T00:38:25+0000",
      "code": "docker-fusion-ubuntu-16.04-single",
      "lastUpdated": "2019-10-21T20:39:54+0000",
      "hasAutoScale": true,
      "memoryRequirement": 1073741824,
      "actions": [
  
      ],
      "installContainerRuntime": true,
      "computeServers": [
        {
          "id": 1,
          "priorityOrder": 0,
          "nodeCount": 1,
          "nodeType": "worker",
          "minNodeCount": null,
          "maxNodeCount": null,
          "dynamicCount": true,
          "name": "docker host",
          "code": "docker-fusion-ubuntu-16.04-set",
          "category": "ubuntu",
          "config": null,
          "containerType": {
            "id": 1106,
            "account": null,
            "name": "Docker Ubuntu 16.04",
            "shortName": "ubuntu",
            "containerVersion": "16.04",
            "provisionType": {
              "id": 19,
              "name": "Fusion",
              "code": "fusion"
            },
            "virtualImage": {
              "id": 204,
              "name": "<%= application_name %> Ubuntu 16.04.3 v1"
            },
            "category": "ubuntu",
            "config": {
            },
            "containerPorts": [
              {
                "id": 7,
                "name": "SSH",
                "port": 22,
                "loadBalanceProtocol": null,
                "exportName": "SSH"
              }
            ],
            "containerScripts": [
  
            ],
            "containerTemplates": [
  
            ],
            "environmentVariables": [
  
            ]
          },
          "computeServerType": {
            "id": 119,
            "code": "fusionLinux",
            "name": "Fusion Docker Host",
            "managed": true,
            "externalDelete": true
          },
          "provisionService": null,
          "planCategory": null,
          "namePrefix": null,
          "nameSuffix": null,
          "forceNameIndex": null,
          "loadBalance": false
        }
      ],
      "computeVersion": "16.04",
      "provisionType": {
        "id": 19,
        "name": "Fusion",
        "code": "fusion"
      },
      "hasSettings": false,
      "sortOrder": 5,
      "taskSets": [
  
      ],
      "environmentVariables": [
        {
          "evarName": "foo",
          "name": "foo",
          "defaultValue": "bar",
          "valueType": "fixed",
          "export": false,
          "masked": false
        }
      ],
      "hasConfig": false,
      "groupType": {
        "id": 2,
        "code": "docker-cluster",
        "name": "Docker Cluster"
      },
      "name": "Docker on Ubuntu 16.04",
      "type": {
        "id": 119,
        "code": "fusionLinux",
        "name": "Fusion Docker Host"
      },
      "creatable": true,
      "specTemplates": [
  
      ],
      "enabled": true,
      "description": "This will provision a single docker host vm in fusion"
    }
  ],
  "meta": {
    "size": 1,
    "total": 84,
    "offset": 0,
    "max": 1
  }
}
```

This endpoint retrieves all cluster layouts.

### HTTP Request

`GET <%= api_url %>/api/library/cluster-layouts`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Name, description and provision type name, restricts query to only load cluster layouts which contain the phrase specified
provisionType |  | Provision type code filter, restricts query to only load cluster layouts of specified provision type 


## Get a Specific Cluster Layout

```shell
curl "<%= curl_url %>/api/library/cluster-layouts/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "layout": {
    "id": 1,
    "optionTypes": [

    ],
    "serverCount": 1,
    "dateCreated": "2019-07-23T00:38:25+0000",
    "code": "docker-fusion-ubuntu-16.04-single",
    "lastUpdated": "2019-10-21T20:39:54+0000",
    "hasAutoScale": true,
    "memoryRequirement": 1073741824,
    "actions": [

    ],
    "installContainerRuntime": true,
    "computeServers": [
      {
        "id": 1,
        "priorityOrder": 0,
        "nodeCount": 1,
        "nodeType": "worker",
        "minNodeCount": null,
        "maxNodeCount": null,
        "dynamicCount": true,
        "name": "docker host",
        "code": "docker-fusion-ubuntu-16.04-set",
        "category": "ubuntu",
        "config": null,
        "containerType": {
          "id": 1106,
          "account": null,
          "name": "Docker Ubuntu 16.04",
          "shortName": "ubuntu",
          "containerVersion": "16.04",
          "provisionType": {
            "id": 19,
            "name": "Fusion",
            "code": "fusion"
          },
          "virtualImage": {
            "id": 204,
            "name": "<%= application_name %> Ubuntu 16.04.3 v1"
          },
          "category": "ubuntu",
          "config": {
          },
          "containerPorts": [
            {
              "id": 7,
              "name": "SSH",
              "port": 22,
              "loadBalanceProtocol": null,
              "exportName": "SSH"
            }
          ],
          "containerScripts": [

          ],
          "containerTemplates": [

          ],
          "environmentVariables": [

          ]
        },
        "computeServerType": {
          "id": 119,
          "code": "fusionLinux",
          "name": "Fusion Docker Host",
          "managed": true,
          "externalDelete": true
        },
        "provisionService": null,
        "planCategory": null,
        "namePrefix": null,
        "nameSuffix": null,
        "forceNameIndex": null,
        "loadBalance": false
      }
    ],
    "computeVersion": "16.04",
    "provisionType": {
      "id": 19,
      "name": "Fusion",
      "code": "fusion"
    },
    "hasSettings": false,
    "sortOrder": 5,
    "taskSets": [

    ],
    "environmentVariables": [

    ],
    "hasConfig": false,
    "groupType": {
      "id": 2,
      "code": "docker-cluster",
      "name": "Docker Cluster"
    },
    "name": "Docker on Ubuntu 16.04",
    "type": {
      "id": 119,
      "code": "fusionLinux",
      "name": "Fusion Docker Host"
    },
    "creatable": true,
    "specTemplates": [

    ],
    "enabled": true,
    "description": "This will provision a single docker host vm in fusion"
  }
}
```

This endpoint retrieves a specific cluster layout.

### HTTP Request

`GET <%= api_url %>/api/library/cluster-layouts/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the cluster layout


## Create a Cluster Layout

Use this command to create a cluster layout.

```shell
curl -XPOST "<%= curl_url %>/api/library/cluster-layouts" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"layout": {
       "name": "Stubby Toes Docker Cluster",
       "computeVersion": "2.2",
       "description": null,
       "creatable": true,
       "groupType": {
         "id": 2
       },
       "provisionType": {
         "id": 6
       },
       "memoryRequirement": 1073741824,
       "taskSets": [
         {
           "id": 3
         }
       ],
       "hasAutoScale": true,
       "environmentVariables": [
         {
           "name": "foo",
           "value": "bar",
           "masked": false,
           "export": false
         }
       ],
       "optionTypes": [
   
       ],
       "masters": [
   
       ],
       "workers": [
         {
           "count": 3,
           "containerType": {
             "id": 1076
           }
         }
       ]
     }}'
```

> The above command returns JSON Structured like this:

```json
{
  "id": 104,
  "success": true
}
```

### HTTP Request

`POST <%= api_url %>/api/library/cluster-layouts`

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Cluster layout name
description | N | Cluster layout description
computeVersion | Y | Version of the cluster layout
creatable | N | Can be used to enable / disable the creatability of the cluster layout. Default is on
hasAutoScale | N | Can be used to enable / disable the horizontal scaling. Default is off
installContainerRuntime | N | Install Docker (container runtime). Default is off
memoryRequirement | N | Memory requirement in bytes
groupType.id | Y | Cluster type ID
provisionType.id | Y | Provision type ID
optionTypes | N | Array of cluster layout option types, see [Inputs](#inputs)
taskSets | N | Array of cluster layout task sets, see [Task Sets](#task-sets)
environmentVariables | N | Array of cluster layout env variables, see [Environment Variables](#environment-variables)
masters | N | Array of cluster layout master nodes, see [Nodes](#nodes)
workers | N | Array of cluster layout worker nodes, see [Nodes](#nodes)

#### Option Types
The `optionTypes` parameter is array of objects with id field:
```json
"optionTypes": [{"id":1}, {"id":2}]
```
        
Parameter | Required | Description
--------- | -------- | -----------
id | Y | ID of option type
        
#### Task Sets
The `taskSets` parameter is array of objects with id field, currently only supports single item:
```json
"taskSets": [{"id":1}]
```
        
Parameter | Required | Description
--------- | -------- | -----------
id | Y | ID of task set
      
#### Environment Variables
The `environmentVariables` parameter is array of env objects with following fields:

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Environment variable name
value | N | Sets fixed value for variable
masked | N | Can be used to enable / disable masking of variable, default is off
export | N | Can be used to enable / disable export of variable, default is off

#### Nodes
The `masters` and `workers` parameters are array of node objects with following fields:

Parameter | Required | Description
--------- | -------- | -----------
count | N | Number of nodes, defaults to 1
containerType.id | Y | Container type ID


## Update a Cluster Layout

Use this command to update an existing cluster layout.

```shell
curl -XPUT "<%= curl_url %>/api/library/cluster-layouts/1" \
  -H "Authorization: BEARER <%= curl_token %>"
  -H "Content-Type: application/json" \
  -d '{"layout": {
        "name": "Cluster Name",
        "description": "Cluster description",
        "computeVersion": "1.2",
        "creatable": false,
        "memoryRequirement": 1073741824,
        "hasAutoScale": true,
        "environmentVariables": [
          {
            "name": "foo",
            "value": "bar"
          }
        ],
        "groupType": {
          "id": 1
        },
        "provisionType": {
          "id": 6
        },
        "taskSets": [
          {
            "id": 3
          }
        ],
        "optionTypes": [
          {
            "id": 1079
          },
          {
            "id": 1080
          }
        ],
        "masters": [
          {
            "count": 1,
            "containerType": {
              "id": 1080
            }
          }
        ],
        "workers": [
          {
            "count": 2,
            "containerType": {
              "id": 48
            }
          }
        ]
      }}
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`PUT <%= api_url %>/api/library/cluster-layouts/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the cluster layout

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Cluster layout name
description | N | Cluster layout description
computeVersion | Y | Version of the cluster layout
creatable | N | Can be used to enable / disable the creatability of the cluster layout. Default is on
hasAutoScale | N | Can be used to enable / disable the horizontal scaling. Default is off
installContainerRuntime | N | Install Docker (container runtime).
memoryRequirement | N | Memory requirement in bytes
groupType.id | Y | Cluster type ID
provisionType.id | Y | Provision type ID
optionTypes | N | Array of cluster layout option types, see [Inputs](#option-types)
taskSets | N | Array of cluster layout task sets, see [Task Sets](#task-sets)
environmentVariables | N | Array of cluster layout env variables, see [Environment Variables](#environment-variables)
masters | N | Array of cluster layout master nodes, see [Nodes](#nodes)
workers | N | Array of cluster layout worker nodes, see [Nodes](#nodes)
 

## Clone a Cluster Layout

Use this command to clone a cluster layout.

```shell
curl -XPOST "<%= curl_url %>/api/library/cluster-layouts/7/clone" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json"
```

> The above command returns JSON Structured like this:

```json
{
  "id": 104,
  "success": true
}
```

### HTTP Request

`POST <%= api_url %>/api/library/cluster-layouts/:id/clone`

### Query Parameters

Parameter | Required | Description
--------- | ------- | -----------
name | N | Name of cluster layout. Defaults to `Copy of <cloned layout name>`
description | N | Description of cluster layout. Defaults to cloned layout description
computeVersion | N | Version of cluster layout. Defaults to cloned layout version


## Delete a Cluster Layout

```shell
curl -XDELETE "<%= curl_url %>/api/library/cluster-layouts/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a cluster layout 

### HTTP Request

`DELETE <%= api_url %>/api/library/cluster-layouts/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the cluster layout