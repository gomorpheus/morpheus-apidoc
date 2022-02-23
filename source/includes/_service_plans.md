# Service Plans

Provides API interfaces for managing service plans within <%= application_name %>.

## Get All Service Plans

```shell
curl "<%= curl_url %>/api/service-plans" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "servicePlans": [
    {
      "id": 1,
      "name": "Amazon T2 Nano - 1 Core, 0.5GB Memory",
      "code": "amazon-t2.nano",
      "active": true,
      "sortOrder": 0,
      "description": "Amazon T2 Nano - 1 Core, 0.5GB Memory",
      "maxStorage": 10737418240,
      "maxMemory": 536870912,
      "maxCpu": null,
      "maxCores": 1,
      "maxDisks": null,
      "customCpu": true,
      "customCores": true,
      "customMaxStorage": true,
      "customMaxDataStorage": true,
      "customMaxMemory": true,
      "addVolumes": true,
      "memoryOptionSource": null,
      "cpuOptionSource": null,
      "dateCreated": "2019-07-23T00:38:02+0000",
      "lastUpdated": "2019-07-23T00:38:02+0000",
      "regionCode": null,
      "visibility": "public",
      "editable": false,
      "provisionType": {
        "id": 6,
        "name": "Amazon",
        "code": "amazon",
        "rootDiskCustomizable": true,
        "addVolumes": true,
        "customizeVolume": true,
        "hasConfigurableCpuSockets": false
      },
      "tenants": "",
      "priceSets": [
        {
          "id": 43,
          "name": "Amazon - t2.nano - US West (N. California)",
          "code": "amazon.t2.nano.ec2.us-west-1.amazonaws.com",
          "priceUnit": "hour"
        }
      ],
      "config": {
      },
      "zones": [
        {
          "id": 3,
          "name": "dans aws cloud",
          "code": "dans_aws_cloud"
        },
        {
          "id": 5,
          "name": "dans aws cloud 2",
          "code": "amazon"
        }
      ]
    }
  ],
  "meta": {
    "size": 1,
    "total": 184,
    "max": 1,
    "offset": 0
  }
}
```

This endpoint retrieves all service plans.

### HTTP Request

`GET <%= api_url %>/api/service-plans`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Name, description and provision type name, restricts query to only load service plans which contain the phrase specified
includeZones | false | Indicates including zones in the service plan response payload
provisionTypeId |  | Provision type filter, restricts query to only load service plans of specified provision type
includeInactive | false | Can be used to include inactive service plans


## Get a Specific Service Plan

```shell
curl "<%= curl_url %>/api/service-plans/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "servicePlan": {
    "id": 1,
    "name": "Amazon T2 Nano - 1 Core, 0.5GB Memory",
    "code": "amazon-t2.nano",
    "active": true,
    "sortOrder": 0,
    "description": "Amazon T2 Nano - 1 Core, 0.5GB Memory",
    "maxStorage": 10737418240,
    "maxMemory": 536870912,
    "maxCpu": null,
    "maxCores": 1,
    "maxDisks": null,
    "customCpu": true,
    "customCores": true,
    "customMaxStorage": true,
    "customMaxDataStorage": true,
    "customMaxMemory": true,
    "addVolumes": true,
    "memoryOptionSource": null,
    "cpuOptionSource": null,
    "dateCreated": "2019-07-23T00:38:02+0000",
    "lastUpdated": "2019-07-23T00:38:02+0000",
    "regionCode": null,
    "visibility": "public",
    "editable": false,
    "provisionType": {
      "id": 6,
      "name": "Amazon",
      "code": "amazon",
      "rootDiskCustomizable": true,
      "addVolumes": true,
      "customizeVolume": true,
      "hasConfigurableCpuSockets": false
    },
    "tenants": "",
    "priceSets": [
      {
        "id": 43,
        "name": "Amazon - t2.nano - US West (N. California)",
        "code": "amazon.t2.nano.ec2.us-west-1.amazonaws.com",
        "priceUnit": "hour"
      }
    ],
    "config": {
    },
    "zones": [
      {
        "id": 3,
        "name": "dans aws cloud",
        "code": "dans_aws_cloud"
      },
      {
        "id": 5,
        "name": "dans aws cloud 2",
        "code": "amazon"
      }
    ],
    "permissions": {
    }
  }
}
```

This endpoint retrieves a specific service plan.

### HTTP Request

`GET <%= api_url %>/api/service-plans/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the service plan


## Create a Service Plan

Use this command to create a service plan.

```shell
curl -XPOST "<%= curl_url %>/api/service-plans" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"servicePlan": {
        "name": "stubby toes plan 1",
        "code": "stubby.toes.plan.1",
        "description": null,
        "provisionType": {
          "id": 1
        },
        "customCores": true,
        "config": {
          "ranges": {
              "maxStorage": null,
              "minMemory": 1073741824,
              "maxMemory": 1073741824,
              "minCores": 1,
              "maxCores": 4
          }
        },
        "maxStorage": 1073741824,
        "maxMemory": 1073741824,
        "priceSets": [
          {
              "id": 43
          }
        ],
        "visibility": "private",
        "permissions": {
          "resourcePermissions": {
              "all": true,
              "sites": [
                  {
                      "id": 4,
                      "default": true
                  }
              ]
          },
          "tenantPermissions": {
              "accounts": [
                  1,
                  2
              ]
          }
        }
      }}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`POST <%= api_url %>/api/service-plans`

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Service plan name
code | Y | Service plan code, must be unique
description | N | Service plan description
editable | N | Can be used to enable / disable the editability of the service plan. Default is on
maxStorage | Y | Max storage size in bytes
maxMemory | Y | Max memory size in bytes
maxCores | N | Max cores
maxDisks | N | Max disks allowed
provisionType.id | Y | Provision type ID
customCores | N | Can be used to enable / disable customizable cores. Default is off
customMaxStorage | N | Can be used to enable / disable customizable storage. Default is off
customMaxDataStorage | N | Can be used to enable / disable customizable extra volumes. Default is off
customMaxMemory | N | Can be used to enable / disable customizable memory. Default is off
addVolumes | N | Can be used to enable / disable ability to add volumes. Default is off
sortOrder | N | Sort order
priceSets.id | N | List of price sets to include in service plan
config.ranges | N | Key for service plan custom configuration, see [Config](#config)
        
#### Config 

The `config` parameter is for custom ranges for the service plan.

Parameter | Required | Description
--------- | -------- | -----------
storageSizeType | N | Specifies range min / max storage multiplier [gb, mb]. Defaults to gb
memorySizeType | N | Specifies range min / max memory multiplier [mb, gb]. Defaults to mb. 
range.minStorage | N | Custom min storage in GB (unless storageSizeType set to mb)  
range.maxStorage | N | Custom max storage in GB (unless storageSizeType set to mb)  
range.minMemory | N | Custom min memory in bytes
range.maxMemory | N | Custom max memory in bytes
range.minCores | N | Custom min cores
range.maxCores | N | Custom max cores


## Update a Service Plan

```shell
curl -XPUT "<%= curl_url %>/api/service-plans/1" \
  -H "Authorization: BEARER <%= curl_token %>"
  -H "Content-Type: application/json" \
  -d '{"servicePlan": {  
      "name": "stubby toes plan 1",
      "code": "stubby.toes.plan.1",
      "description": null,
      "maxStorage": 10737418240,
      "config": {
        "storageSizeType": "gb",
        "memorySizeType": "mb",
        "ranges": {
          "minStorage": 1000,
          "maxStorage": 100000,
          "minMemory": 536870912,
          "maxMemory": 1073741824,
          "minCores": 1,
          "maxCores": 3
        }
      },
      "maxMemory": 536870912,
      "maxCores": 3,
      "maxDisks": 5,
      "customCores": true,
      "customMaxStorage": true,
      "customMaxDataStorage": true,
      "customMaxMemory": true,
      "sortOrder": 5,
      "priceSets": [
        {
          "id": 170
        }
      ],
      "addVolumes": true,
      "provisionType": {
        "id": 1
      },
      "visibility": "private",
      "permissions": {
        "resourcePermissions": {
          "all": true,
          "sites": [
            {
              "id": 2
            },
            {
              "id": 4
            }
          ]
        },
        "tenantPermissions": {
          "accounts": [
            1
          ]
        }
      }
    }}
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`PUT <%= api_url %>/api/service-plans/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the service plan

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Service plan name
code | Y | Service plan code, must be unique
description | N | Service plan description
maxStorage | Y | Max storage size in bytes
maxMemory | Y | Max memory size in bytes
maxCores | N | Max cores
maxDisks | N | Max disks allowed
provisionType.id | Y | Provision type ID
customCores | N | Can be used to enable / disable customizable cores. Default is off
customMaxStorage | N | Can be used to enable / disable customizable storage. Default is off
customMaxDataStorage | N | Can be used to enable / disable customizable extra volumes. Default is off
customMaxMemory | N | Can be used to enable / disable customizable memory. Default is off
addVolumes | N | Can be used to enable / disable ability to add volumes. Default is off
sortOrder | N | Sort order
priceSets.id | N | List of price sets to include in service plan
config.ranges | N | Key for service plan custom configuration, see [Config](#config)
 
 
## Activate a Service Plan

```shell
curl -XPUT "<%= curl_url %>/api/service-plans/1/activate" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will activate a service plan 

### HTTP Request

`PUT <%= api_url %>/api/service-plans/:id/activate`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the service plan
 

## Deactivate a Service Plan

```shell
curl -XPUT "<%= curl_url %>/api/service-plans/1/deactivate" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will deactivate a service plan 

### HTTP Request

`PUT <%= api_url %>/api/service-plans/:id/deactivate`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the service plan


## Delete a Service Plan

```shell
curl -XDELETE "<%= curl_url %>/api/service-plans/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a service plan

### HTTP Request

`DELETE <%= api_url %>/api/service-plans/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the service plan
