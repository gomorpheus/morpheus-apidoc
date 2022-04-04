# Apps

Apps are groupings of instances that are linked together to form a full application stack. They can be created with existing templates or new templates, as well as from existing instances.

## Get All Apps

```shell
curl "<%= curl_url %>/api/apps" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "apps": [
    {
      "id": 1,
      "name": "My Test App",
      "description": "Sample Description",
      "accountId": 1,
      "account": {
        "id": 1,
        "name": "<%= company_name %>"
      },
      "owner": {
        "id": 127,
        "username": "admin"
      },
      "siteId": 1,
      "group": {
        "id": 1,
        "name": "My Group"
      },
      "blueprint": {
        "id": 135,
        "name": "Grails Example",
        "type": "morpheus"
      },
      "type": "morpheus",
      "status": "running",
      "instanceCount": 2,
      "containerCount": 2,
      "dateCreated": "2015-06-09T20:59:17Z",
      "lastUpdated": "2015-06-09T21:00:19Z",
      "appTiers": [
        {
          "tier": {
            "id": 2,
            "name": "App"
          },
          "appInstances": [
            {
              "instance": {
                "id": 53,
                "name": "Test App - Grails"
              }
            }
          ]
        },
        {
          "tier": {
            "id": 5,
            "name": "Database"
          },
          "appInstances": [
            {
              "instance": {
                "id": 54,
                "name": "Test App - MySQL"
              }
            }
          ]
        }
      ],
      "stats": {
        "usedMemory": 0,
        "maxMemory": 1073741824,
        "usedStorage": 0,
        "maxStorage": 21474836480,
        "running": 0,
        "total": 0,
        "cpuUsage": 0,
        "instanceCount": 2
      }
    }
  ],
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 1,
    "total": 1
  }
}
```

This endpoint retrieves a paginated list of apps.

### HTTP Request

`GET <%= api_url %>/api/apps`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
name |  | Filter by name
phrase |  | Filter by wildcard search of name and description
createdBy |  | Filter by Created By (User) ID. Accepts multiple values.
showDeleted | false | If true, includes apps in pending removal status.

## Get a Specific App


```shell
curl "<%= curl_url %>/api/apps/4" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "app": {
    "id": 1,
    "name": "My Test App",
    "description": "Sample Description",
    "accountId": 1,
    "account": {
      "id": 1,
      "name": "<%= company_name %>"
    },
    "owner": {
      "id": 127,
      "username": "admin"
    },
    "siteId": 1,
    "group": {
      "id": 1,
      "name": "My Group"
    },
    "blueprint": {
      "id": 135,
      "name": "Grails Example",
      "type": "morpheus"
    },
    "type": "morpheus",
    "status": "running",
    "instanceCount": 2,
    "containerCount": 2,
    "dateCreated": "2015-06-09T20:59:17Z",
    "lastUpdated": "2015-06-09T21:00:19Z",
    "appTiers": [
      {
        "tier": {
          "id": 2,
          "name": "App"
        },
        "appInstances": [
          {
            "instance": {
              "id": 53,
              "name": "Test App - Grails"
            }
          }
        ]
      },
      {
        "tier": {
          "id": 5,
          "name": "Database"
        },
        "appInstances": [
          {
            "instance": {
              "id": 54,
              "name": "Test App - MySQL"
            }
          }
        ]
      }
    ],
    "stats": {
      "usedMemory": 0,
      "maxMemory": 1073741824,
      "usedStorage": 0,
      "maxStorage": 21474836480,
      "running": 0,
      "total": 0,
      "cpuUsage": 0,
      "instanceCount": 2
    }
  }
}
```

This endpoint retrieves a specific app.

### HTTP Request

`GET <%= api_url %>/api/apps/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the app

## Create an App

```shell
curl -XPOST "<%= curl_url %>/api/apps" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
    "blueprintId": "existing",
    "name": "sample",
    "description": "A sample app",
    "group": {
      "id": 1
    }
  }'
```

> The above command returns JSON structured like getting a single app.

### HTTP Request

`POST <%= api_url %>/api/apps`

### JSON App Parameters

Parameter | Default | Description
--------- | ------- | -----------
blueprintId  |  | The ID of the Blueprint. Use `existing` to create a blank app.
name  |  | A unique name for the app
group |  | A Map containing the id of the Group
description     |  | Description
environment |  | Environment code (appContext)

## Updating an App

```shell
curl -XPUT "<%= curl_url %>/api/apps/2" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "My Sample App",
    "description": "A new description of this app",
  }'
```

> The above command returns JSON structured like getting a single app.

This endpoint provides updating of some basic app settings.

### HTTP Request

`PUT <%= api_url %>/api/apps/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the app

### JSON App Parameters

Parameter | Default | Description
--------- | ------- | -----------
name  |  | Name
description     |  | Description
environment     |  | Environment (appContext)
ownerId  |  | [User](#users) ID, can be used to change app owner. This also changes the owner for each instance in the app.

## Add Existing Instance to App

```shell
curl -XPOST "<%= curl_url %>/api/apps/1/add-instance" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"instanceId": 55, tierName: "App"}'
```

> The above command returns JSON structured like getting a single app.

### HTTP Request

`POST <%= api_url %>/api/apps/:id/add-instance`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the app

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
instanceId  |  | The ID of the instance being added
tierName     |  | The Name of the Tier


## Remove Instance from App

```shell
curl -XPOST "<%= curl_url %>/api/apps/1/remove-instance" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"instanceId": 55}'
```

> The above command returns JSON structured like getting a single app.

### HTTP Request

`POST <%= api_url %>/api/apps/:id/remove-instance`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the app

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
instanceId  |  | The ID of the instance being removed


## Get Security Groups for an App

```shell
curl -XGET "<%= curl_url %>/api/apps/1/security-groups" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true,
  "firewallEnabled": true,
  "securityGroups": [
    {
      "id": 19,
      "accountId": 1,
      "name": "All Tomcat Access",
      "description": "Allow everyone to access Tomcat"
    }
  ]
}
```

This returns a list of all of the security groups applied to an app and whether the firewall is enabled.

### HTTP Request

`GET <%= api_url %>/api/apps/:id/security-groups`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the app

## Set Security Groups for an App

```shell
curl -XPOST "<%= curl_url %>/api/apps/1/security-groups" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{ "securityGroupIds": [19, 2] }'
```

> The above command returns JSON structure similar to the 'get' of security groups.

### HTTP Request

`POST <%= api_url %>/api/apps/:id/security-groups`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the app

### JSON Parameters

Parameter   | Default | Description
---------   | ------- | -----------
securityGroupIds |  | List of all security groups ids which should be applied.  If no security groups should apply, pass '[]'

## Delete an App

```shell
curl -XDELETE "<%= curl_url %>/api/apps/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete an app. 
Use `removeInstances=on` to also delete the instances in the app and all associated monitors and backups.

### HTTP Request

`DELETE <%= api_url %>/api/apps/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the app

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
removeInstances | off | Remove Instances
preserveVolumes | off | Preserve Volumes
keepBackups | off | Preserve copy of backups
releaseEIPs | on | Release EIPs
force | off | Force Delete


## Undo Delete of an App

```shell
curl -XPUT "<%= curl_url %>/api/apps/2/cancel-removal" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json"
```

> The above command returns JSON structured like getting a single app.

This operation will undo the delete of an app that is pending removal.

### HTTP Request

`PUT <%= api_url %>/api/apps/:id/cancel-removal`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the app

## Get State of an App

```shell
curl -XGET "<%= curl_url %>/api/apps/:id/state" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "workloads": [
    {
      "refType": "App",
      "refId": 65,
      "refName": "tf-example",
      "subRefName": null,
      "stateDate": "2022-04-04T17:35:01Z",
      "status": "ok",
      "iacDrift": false
    }
  ],
  "iacDrift": false,
  "planResources": [

  ],
  "specs": [
    {
      "id": 9,
      "name": "tf-example",
      "template": null,
      "isolated": false
    }
  ],
  "stateData": "{\n    \"format_version\": \"1.0\",\n    \"terraform_version\": \"1.1.7\",\n    ....",
  "planData": "vsphere_virtual_machine.vm: Refreshing state... [id=422da4c7-2fdb-cb01-e65c-0c07e17903a8]\n\nNo changes. Your infrastructure matches the configuration.\n\nTerraform has compared your real infrastructure against your configuration\nand found no differences, so no changes are needed.\n",
  "input": {
    "variables": [
      {
        "name": "environment",
        "value": "dev",
        "sensitive": false,
        "type": "string"
      },
      {
        "name": "instanceName",
        "value": "tf-example",
        "sensitive": false,
        "type": "string"
      }
    ],
    "providers": [
      {
        "name": "vsphere"
      }
    ],
    "data": [
      {
        "key": "dc",
        "name": "labs-qa",
        "type": "vsphere_datacenter"
      },
      {
        "key": "datastore",
        "name": "ESXi-LUN1",
        "type": "vsphere_datastore"
      },
      {
        "key": "pool",
        "name": "QA",
        "type": "vsphere_resource_pool"
      },
      {
        "key": "network",
        "name": "VLAN0002",
        "type": "vsphere_network"
      },
      {
        "key": "template",
        "name": "Morpheus Ubuntu 20.04.1 v1",
        "type": "vsphere_virtual_machine"
      }
    ]
  },
  "output": {
    "outputs": [

    ]
  }
}
```

This endpoint provides a way to view the state of an app. The response includes output and resource planning information from the template provider software such as Terraform.
This action only applies to Terraform, CloudFormation and ARM and will return an HTTP 400 error for other types.

### HTTP Request

`GET <%= api_url %>/api/apps/:id/state`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the app


## Refresh State of an App

```shell
curl -XPOST "<%= curl_url %>/api/apps/:id/refresh" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

This endpoint provides a way to refresh the state of an app.
This action only applies to Terraform, CloudFormation and ARM and will return an HTTP 400 error for other types.

### HTTP Request

`POST <%= api_url %>/api/apps/:id/refresh`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the app

## Prepare To Apply an App

```shell
curl -XGET "<%= curl_url %>/api/apps/:id/prepare-apply" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "data": {
    "image": "/assets/branding/90x30/blueprint-terraform.svg",
    "name": "tf-example",
    "terraform": {
      "tf": "(your terraform config)",
      "tfvarSecret": "tfvars/tf-example",
      "configType": "tf"
    },
    "type": "terraform",
    "executionId": "23e55735-3b6e-4183-861c-01a12eae2f9f",
    "templateParameter": {
      "environment": "dev",
      "instanceName": "tf-example"
    }
  }
}
```

This endpoint provides a way to view the current app configuration and `templateParameter` variables available to [apply](#apply-state-of-an-app).
This action only applies to Terraform, CloudFormation and ARM and will return an HTTP 400 error for other types.

### HTTP Request

`GET <%= api_url %>/api/apps/:id/prepare-apply`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the app

## Apply State of an App

```shell
curl -XPOST "<%= curl_url %>/api/apps/:id/apply" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
    "templateParameter": {
      "myVar": "My Value",
      "another": "Hello World"
    }
  }'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

This endpoint provides a way to apply the state of an app.
This action only applies to Terraform, CloudFormation and ARM and will return an HTTP 400 error for other types.

### HTTP Request

`POST <%= api_url %>/api/apps/:id/apply`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the app

### JSON Parameters

Parameter   | Default | Description
---------   | ------- | -----------
templateParameter |    | Template Parameter object. A map of key-value pairs that correspond to the template variables i.e. `tfvars`
