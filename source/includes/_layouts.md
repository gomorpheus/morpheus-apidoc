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
curl "$MORPHEUS_API_URL/api/library/instance-types/132/layouts" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{

}
```

This endpoint retrieves all layouts.

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
    "id": 1516,
    "instanceType": {
      "id": 132,
      "name": "Thing One",
      "code": "thing1"
    },
    "account": {
      "id": 1,
      "name": "root"
    },
    "code": "87d3d0eb-1536-4e8e-8c19-70d4573d236d",
    "name": "Test Layout",
    "instanceVersion": "1.0",
    "description": "A test layout",
    "creatable": true,
    "memoryRequirement": 1073741824,
    "sortOrder": 0,
    "supportsConvertToManaged": true,
    "provisionType": {
      "id": 10,
      "code": "amazon",
      "name": "Amazon"
    },
    "taskSets": [

    ],
    "containerTypes": [
      {
        "id": 1548,
        "account": {
          "id": 1,
          "name": "root"
        },
        "name": "My Node",
        "shortName": "mynode",
        "containerVersion": "1.0",
        "provisionType": {
          "id": 10,
          "name": "Amazon",
          "code": "amazon"
        },
        "virtualImage": {
          "id": 100,
          "name": "Test Image"
        },
        "category": null,
        "config": {
        },
        "containerPorts": [

        ],
        "containerScripts": [

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

Use this command to create a layout.

```shell
curl -XPOST "http://localhost:8080/api/library/instance-types/132/layouts" \
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
memoryRequirement | N | Memory requirement in megabytes
provisionType.id | Y | Provision type ID
containerTypes | N | Array of layout node type IDs, see [Node Types](#node-types)
optionTypes | N | Array of layout option type IDs, see [Option Types](#option-types)
specTemplates | N | Array of layout spec template IDs, see [Spec Templates](#spec-templates)
taskSetId | N | ID of [Workflow](#workflows)
environmentVariables | N | Array of layout env variables, see [Environment Variables](#environment-variables)

#### Environment Variables
The `environmentVariables` parameter is array of env objects with following fields:

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Environment variable name
value | N | Sets fixed value for variable
masked | N | Can be used to enable / disable masking of variable, default if off
export | N | Can be used to enable / disable export of variable, default is off

## Update a Layout

Use this command to update an existing layout.

```shell
curl -XPOST "http://localhost:8080/api/library/instance-types/132/layouts" \
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

### HTTP Request

`PUT https://api.gomorpheus.com/api/library/layouts/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the layout

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Layout name
description | N | Layout description
instanceVersion | Y | Version of the layout
creatable | N | Can be used to enable / disable the creatability of the layout. Default is on
hasAutoScale | N | Can be used to enable / disable the horizontal scaling. Default is off
memoryRequirement | N | Memory requirement in bytes
provisionType.id | Y | Provision type ID
containerTypes | N | Array of layout node type IDs, see [Node Types](#node-types)
optionTypes | N | Array of layout option type IDs, see [Option Types](#option-types)
specTemplates | N | Array of layout spec template IDs, see [Spec Templates](#spec-templates)
taskSetId | N | ID of [Workflow](#workflows)
environmentVariables | N | Array of layout env variables, see [Environment Variables](#environment-variables)


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
