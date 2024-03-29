# VDI Pools

Provides API interfaces for the Tools: VDI Pools functionality, which involves viewing and managing VDI Pools, Apps and Gateways. VDI Pools are the virtual desktops that become available for allocation and use by the [Virtual Desktop Persona](#virtual-desktop).

## List VDI Pools

```shell
curl "<%= curl_url %>/api/vdi-pools" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "vdiPools": [
    {
      "id": 1,
      "name": "Windows Desktop",
      "description": "A fancy windows desktop",
      "minIdle": 0,
      "maxIdle": 0,
      "initialPoolSize": 0,
      "maxPoolSize": 5,
      "allocationTimeoutMinutes": 60,
      "persistentUser": false,
      "recyclable": false,
      "enabled": true,
      "autoCreateLocalUserOnReservation": false,
      "allowHypervisorConsole": false,
      "allowCopy": false,
      "allowPrinter": false,
      "allowFileshare": false,
      "guestConsoleJumpHost": null,
      "guestConsoleJumpPort": null,
      "guestConsoleJumpUsername": null,
      "guestConsoleJumpPassword": null,
      "guestConsoleJumpKeypair": null,
      "gateway": null,
      "iconPath": "/assets/containers-png/morph-resource2.png",
      "logo": "/assets/containers-png/morph-resource2.png",
      "apps": [
        {
          "id": 1,
          "name": "Notepad"
        }
      ],
      "owner": {
        "id": 1,
        "name": "Admin",
        "username": "admin"
      },
      "config": {
        "group": {
          "id": 1,
          "name": "dev"
        },
        "cloud": {
          "id": 34,
          "name": "vmware"
        },
        "type": "windows",
        "config": {
          "isEC2": false,
          "isVpcSelectable": true,
          "noAgent": false,
          "resourcePoolId": 3551
        },
        "name": "vdi-example-${sequence}",
        "volumes": [
          {
            "name": "root",
            "rootVolume": true,
            "typeId": 1,
            "size": 16,
            "storageType": 1,
            "datastoreId": "auto"
          }
        ],
        "hostName": "vdi-example-${sequence}",
        "layout": {
          "id": 250,
          "code": "vmware-windows-2012_r2-single"
        },
        "networkInterfaces": [
          {
            "primaryInterface": true,
            "network": {
              "id": "network-1482"
            },
            "networkInterfaceTypeId": 4,
            "networkInterfaceTypeIdName": "VMXNET 3"
          }
        ],
        "plan": {
          "id": 75,
          "code": "vm-512"
        },
        "version": "2012 r2"
      },
      "group": {
        "id": 1,
        "name": "dev"
      },
      "cloud": {
        "id": 34,
        "name": "vmware"
      },
      "usedCount": 0,
      "reservedCount": 0,
      "preparingCount": 0,
      "idleCount": 0,
      "status": "available",
      "dateCreated": "2021-04-13T14:45:25Z",
      "lastUpdated": "2021-04-13T14:45:25Z"
    },
    {
      "id": 2,
      "name": "Test Desktop",
      "description": "Our test machine",
      "minIdle": 0,
      "maxIdle": 0,
      "initialPoolSize": 0,
      "maxPoolSize": 1,
      "allocationTimeoutMinutes": 360,
      "persistentUser": false,
      "recyclable": false,
      "enabled": true,
      "autoCreateLocalUserOnReservation": false,
      "allowHypervisorConsole": false,
      "allowCopy": false,
      "allowPrinter": false,
      "allowFileshare": false,
      "guestConsoleJumpHost": null,
      "guestConsoleJumpPort": null,
      "guestConsoleJumpUsername": null,
      "guestConsoleJumpPassword": null,
      "guestConsoleJumpKeypair": null,
      "gateway": null,
      "iconPath": "/assets/containers-png/morph-resource2.png",
      "logo": "/assets/containers-png/morph-resource2.png",
      "apps": [

      ],
      "owner": {
        "id": 1,
        "name": "Admin",
        "username": "admin"
      },
      "config": {
        "group": {
          "id": 1,
          "name": "dev"
        },
        "cloud": {
          "id": 34,
          "name": "vmware"
        },
        "type": "windows",
        "config": {
          "isEC2": false,
          "isVpcSelectable": true,
          "noAgent": false,
          "resourcePoolId": 3551
        },
        "name": "vdi-test-${sequence}",
        "volumes": [
          {
            "name": "root",
            "rootVolume": true,
            "typeId": 1,
            "size": 16,
            "storageType": 1,
            "datastoreId": "auto"
          }
        ],
        "hostName": "vdi-test-${sequence}",
        "layout": {
          "id": 250,
          "code": "vmware-windows-2012_r2-single"
        },
        "networkInterfaces": [
          {
            "primaryInterface": true,
            "network": {
              "id": "network-1482"
            },
            "networkInterfaceTypeId": 4,
            "networkInterfaceTypeIdName": "VMXNET 3"
          }
        ],
        "plan": {
          "id": 75,
          "code": "vm-512"
        },
        "version": "2012 r2"
      },
      "group": {
        "id": 1,
        "name": "dev"
      },
      "cloud": {
        "id": 34,
        "name": "vmware"
      },
      "usedCount": 1,
      "reservedCount": 1,
      "preparingCount": 0,
      "idleCount": 0,
      "status": "available",
      "dateCreated": "2021-03-30T03:10:40Z",
      "lastUpdated": "2021-03-30T03:45:36Z"
    }
  ],
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 2,
    "total": 2
  }
}

```

This endpoint retrieves all VDI Pools.

### HTTP Request

`GET <%= api_url %>/api/vdi-pools`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Filter by wildcard search of name and description
name |  | Filter by name, wildcard may be specified as **%**, eg. `example-%`
description |  | Filter by description, wildcard may be specified as **%**. eg. `example-%`
enabled |  | Filter by enabled, eg. `true` or `false`

## Get a Specific VDI Pool

```shell
curl "<%= curl_url %>/api/vdi-pools/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "vdiPool": {
      "id": 1,
      "name": "Windows Desktop",
      "description": "A fancy windows desktop",
      "minIdle": 0,
      "maxIdle": 0,
      "initialPoolSize": 0,
      "maxPoolSize": 5,
      "allocationTimeoutMinutes": 60,
      "persistentUser": false,
      "recyclable": false,
      "enabled": true,
      "autoCreateLocalUserOnReservation": false,
      "allowHypervisorConsole": false,
      "allowCopy": false,
      "allowPrinter": false,
      "allowFileshare": false,
      "guestConsoleJumpHost": null,
      "guestConsoleJumpPort": null,
      "guestConsoleJumpUsername": null,
      "guestConsoleJumpPassword": null,
      "guestConsoleJumpKeypair": null,
      "gateway": null,
      "iconPath": "/assets/containers-png/morph-resource2.png",
      "logo": "/assets/containers-png/morph-resource2.png",
      "apps": [
        {
          "id": 1,
          "name": "Notepad"
        }
      ],
      "owner": {
        "id": 1,
        "name": "Admin",
        "username": "admin"
      },
      "config": {
        "group": {
          "id": 1,
          "name": "dev"
        },
        "cloud": {
          "id": 34,
          "name": "vmware"
        },
        "type": "windows",
        "config": {
          "isEC2": false,
          "isVpcSelectable": true,
          "noAgent": false,
          "resourcePoolId": 3551
        },
        "name": "vdi-example-${sequence}",
        "volumes": [
          {
            "name": "root",
            "rootVolume": true,
            "typeId": 1,
            "size": 16,
            "storageType": 1,
            "datastoreId": "auto"
          }
        ],
        "hostName": "vdi-example-${sequence}",
        "layout": {
          "id": 250,
          "code": "vmware-windows-2012_r2-single"
        },
        "networkInterfaces": [
          {
            "primaryInterface": true,
            "network": {
              "id": "network-1482"
            },
            "networkInterfaceTypeId": 4,
            "networkInterfaceTypeIdName": "VMXNET 3"
          }
        ],
        "plan": {
          "id": 75,
          "code": "vm-512"
        },
        "version": "2012 r2"
      },
      "group": {
        "id": 1,
        "name": "dev"
      },
      "cloud": {
        "id": 34,
        "name": "vmware"
      },
      "usedCount": 0,
      "reservedCount": 0,
      "preparingCount": 0,
      "idleCount": 0,
      "status": "available",
      "dateCreated": "2021-04-13T14:45:25Z",
      "lastUpdated": "2021-04-13T14:45:25Z"
    }
}
```

This endpoint retrieves a specific VDI Pool.

### HTTP Request

`GET <%= api_url %>/api/vdi-pools/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the VDI Pool


## Create a VDI Pool

```shell
curl -XPOST "<%= curl_url %>/api/vdi-pools" \
  -H "Authorization: Bearer <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "vdiPool": {
    "name": "Windows Desktop",
    "description": "A fancy windows desktop",
    "owner": 1,
    "minIdle": 0,
    "initialPoolSize": 0,
    "maxIdle": 0,
    "maxPoolSize": 5,
    "allocationTimeoutMinutes": 60,
    "persistentUser": false,
    "recyclable": false,
    "allowCopy": false,
    "allowPrinter": false,
    "allowFileshare": false,
    "allowHypervisorConsole": false,
    "autoCreateLocalUserOnReservation": false,
    "enabled": true,
    "iconPath": "/assets/containers-png/windows.png",
    "apps": [
      1
    ],
    "gateway": null,
    "instanceConfig": "{\n  \"group\": {\n    \"id\": \"1\",\n    \"name\": \"dev\"\n  },\n  \"cloud\": {\n    \"id\": 34,\n    \"name\": \"vmware\"\n  },\n  \"type\": \"windows\",\n  \"config\": {\n    \"isEC2\": false,\n    \"isVpcSelectable\": true,\n    \"noAgent\": false,\n    \"resourcePoolId\": 3551\n  },\n  \"name\": \"desktop-example-${sequence}\",\n  \"volumes\": [\n    {\n      \"name\": \"root\",\n      \"rootVolume\": true,\n      \"typeId\": 1,\n      \"size\": 16,\n      \"storageType\": 1,\n      \"datastoreId\": \"auto\"\n    }\n  ],\n  \"hostName\": \"desktop-example-${sequence}\",\n  \"layout\": {\n    \"id\": 250,\n    \"code\": \"vmware-windows-2012_r2-single\"\n  },\n  \"networkInterfaces\": [\n    {\n      \"primaryInterface\": true,\n      \"network\": {\n        \"id\": \"network-1482\"      },\n      \"networkInterfaceTypeId\": 4,\n      \"networkInterfaceTypeIdName\": \"VMXNET 3\"\n    }\n  ],\n  \"plan\": {\n    \"id\": 75,\n    \"code\": \"vm-512\"\n  },\n  \"version\": \"2012 r2\"\n}"
  }
}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "vdiPool": {
    "id": 1,
    "name": "Windows Desktop",
    "description": "A fancy windows desktop",
    "minIdle": 0,
    "maxIdle": 0,
    "initialPoolSize": 0,
    "maxPoolSize": 5,
    "allocationTimeoutMinutes": 60,
    "persistentUser": false,
    "recyclable": false,
    "enabled": true,
    "autoCreateLocalUserOnReservation": false,
    "allowHypervisorConsole": false,
    "allowCopy": false,
    "allowPrinter": false,
    "allowFileshare": false,
    "guestConsoleJumpHost": null,
    "guestConsoleJumpPort": null,
    "guestConsoleJumpUsername": null,
    "guestConsoleJumpPassword": null,
    "guestConsoleJumpKeypair": null,
    "gateway": null,
    "iconPath": "/assets/containers-png/morph-resource2.png",
    "logo": "/assets/containers-png/morph-resource2.png",
    "apps": [
      {
        "id": 1,
        "name": "Notepad"
      }
    ],
    "owner": {
      "id": 1,
      "name": "Admin",
      "username": "admin"
    },
    "config": {
      "group": {
        "id": 1,
        "name": "dev"
      },
      "cloud": {
        "id": 34,
        "name": "vmware"
      },
      "type": "windows",
      "config": {
        "isEC2": false,
        "isVpcSelectable": true,
        "noAgent": false,
        "resourcePoolId": 3551
      },
      "name": "vdi-example-${sequence}",
      "volumes": [
        {
          "name": "root",
          "rootVolume": true,
          "typeId": 1,
          "size": 16,
          "storageType": 1,
          "datastoreId": "auto"
        }
      ],
      "hostName": "vdi-example-${sequence}",
      "layout": {
        "id": 250,
        "code": "vmware-windows-2012_r2-single"
      },
      "networkInterfaces": [
        {
          "primaryInterface": true,
          "network": {
            "id": "network-1482"
          },
          "networkInterfaceTypeId": 4,
          "networkInterfaceTypeIdName": "VMXNET 3"
        }
      ],
      "plan": {
        "id": 75,
        "code": "vm-512"
      },
      "version": "2012 r2"
    },
    "group": {
      "id": 1,
      "name": "dev"
    },
    "cloud": {
      "id": 34,
      "name": "vmware"
    },
    "usedCount": 0,
    "reservedCount": 0,
    "preparingCount": 0,
    "idleCount": 0,
    "status": "available",
    "dateCreated": "2021-04-13T14:45:25Z",
    "lastUpdated": "2021-04-13T14:45:25Z"
  }
}
```

This endpoint creates a new VDI Pool. Instances will be provisioned right away if the pool is enabled and has an `initialPoolSize` greater than 0.

### HTTP Request

`POST <%= api_url %>/api/vdi-pools`

### JSON Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
name | Y |  | Virtual Desktop name
description | N |  | Virtual Desktop description
owner | N | (current user) | Owner (User) ID
minIdle | N | 0 | Min Idle - Sets the minimum number of idle instances on standby in the pool. The pool will always try to maintain this number of available instances on standby.
initialPoolSize | N | 0 | Initial Pool Size - The initial size of the pool to be allocated on creation.
maxIdle | N | 0 | Max Idle - Sets the maximum number of idle instances on standby in the pool. If the number of idle instances supersedes this, the pool will start removing instances
maxPoolSize | Y |  | Max Size - Max limit on number of allocations and instances within the pool.
allocationTimeoutMinutes | N | 0 | Lease Timeout - Time (in minutes) after a user disconnects before an allocation is recycled or shutdown depending on persistence.
persistentUser | N | N | Persistent User
recyclable | N | N | Recyclable. Recyclable VDI Pools only work with cloud types that support snapshot management (i.e. Vmware, Nutanix, VCD)
allowCopy | N |  | Allow Copy
allowPrinter | N |  | Allow Printer
allowFileshare | N |  | Allow File Share
allowHypervisorConsole | N |  | Allow Hypervisor Console
autoCreateLocalUserOnReservation | N |  | Auto Create Local User Upon Reservation
enabled | N | Y | Can be used to enable / disable the VDI pool. Default is true
iconPath | N |  | Icon Path, relative location of an icon image, eg. `/assets/containers-png/windows.png`.
logo | N |  | Logo File, upload a custom logo, requires `Content-Type: multipart/form-data`
apps | N |  | Array of VDI App IDs, see [VDI App](#list-vdi-apps).
gateway | N |  | VDI Gateway ID, see [VDI Gateway](#list-vdi-gateways).
instanceConfig | Y |  | Instance Config JSON, see [VDI Pool Instance Config](#vdi-pool-instance-config). Passing as a string will preserve property order.
config | N |  | Config Object, see [VDI Pool Instance Config](#vdi-pool-instance-config). This can be passed in place of `instanceConfig`, but will not preserve the config property order.
guestConsoleJumpHost | N |  | Guest Console Jump Host
guestConsoleJumpPort | N |  | Guest Console Jump Port
guestConsoleJumpUsername | N |  | Guest Console Jump Username
guestConsoleJumpPassword | N |  | Guest Console Jump Password
guestConsoleJumpKeypair | N |  | Guest Console Jump Key Pair. see [Key Pair](#key-pairs)

#### VDI Pool Instance Config

The `instanceConfig` *(string)* or `config` *(object)* with fields:

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Name of instance
group | Y | Group, id or name of the group to associate the instance with
cloud | Y | Cloud, id or name of the cloud being provisioned into
type | Y |  Instance Type, id or code for the type of instance eg. `nginx`
layout |  Y | Layout, id or code for the instance type that you want to provision. i.e. single process or cluster
plan | Y | Plan, id or code for the memory and storage option

For the full list of instance provisioning options, see [Create an Instance](#create-an-instance)


## Update a VDI Pool

```shell
curl -XPUT "<%= curl_url %>/api/vdi-pools/:id" \
  -H "Authorization: Bearer <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "vdiPool": {
    "maxPoolSize": 10
  }
}'
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

This endpoint updates an existing VDI Pool. Instance may be provisioned or removed based on the new VDI pool settings.

### HTTP Request

`PUT <%= api_url %>/api/vdi-pools/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the VDI pool

### JSON Parameters

Same as [Create](#create-a-vdi-pool).

## Upload Logo for a VDI Pool

```shell
curl -XPUT "<%= curl_url %>/api/vdi-pools/:id" \
  -H "Authorization: Bearer <%= curl_token %>" \
  -F 'vdiPool.logo=@filename'
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

This uses `Content-Type: multipart/form-data` to upload a custom logo file. The `vdiPool.logo` parameter can be a multipart file for both the create (`POST`) and update (`PUT`) endpoints.

### HTTP Request

`PUT <%= api_url %>/api/vdi-pools/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the VDI pool

### HTTP Headers

Header | Description
--------- | -----------
Content-Type     | `multipart/form-data` is expected.

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
vdiPool.logo      |  | Image File png,jpg,svg

## Delete a VDI Pool

```shell
curl -XDELETE "<%= curl_url %>/api/vdi-pools/:id" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This endpoint deletes an existing VDI pool.

### HTTP Request

`DELETE <%= api_url %>/api/vdi-pools/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the VDI pool

## List VDI Allocations

```shell
curl "<%= curl_url %>/api/vdi-allocations" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "vdiAllocations": [
    {
      "id": 1,
      "pool": {
        "id": 3,
        "name": "My Desktop"
      },
      "instance": {
        "id": 397,
        "name": "my-desktop-12",
        "status": "provisioning"
      },
      "user": {
        "id": 53,
        "name": "Joseph D",
        "username": "jdoe"
      },
      "localUserCreated": false,
      "persistent": false,
      "recyclable": false,
      "status": "preparing",
      "dateCreated": "2021-04-22T18:38:38Z",
      "lastUpdated": "2021-04-22T18:38:39Z",
      "lastReserved": null,
      "releaseDate": "2021-04-22T20:38:39Z"
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

This endpoint retrieves all VDI Allocations.

### HTTP Request

`GET <%= api_url %>/api/vdi-allocations`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | id | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
id |  | Filter by allocation ID
status |  | Filter by allocation status
poolId |  | Filter by [VDI Pool](#vdi-pools) ID
userId |  | Filter by [User](#users) ID

## Get a Specific VDI Allocation

```shell
curl "<%= curl_url %>/api/vdi-allocations/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "vdiAllocation": {
    "id": 1,
    "pool": {
      "id": 3,
      "name": "My Desktop"
    },
    "instance": {
      "id": 397,
      "name": "my-desktop-12",
      "status": "provisioning"
    },
    "user": {
      "id": 53,
      "name": "Joseph D",
      "username": "jdoe"
    },
    "localUserCreated": false,
    "persistent": false,
    "recyclable": false,
    "status": "preparing",
    "dateCreated": "2021-04-22T18:38:38Z",
    "lastUpdated": "2021-04-22T18:38:39Z",
    "lastReserved": null,
    "releaseDate": "2021-04-22T20:38:39Z"
  }
}
```

This endpoint retrieves a specific VDI Allocation

### HTTP Request

`GET <%= api_url %>/api/vdi-allocations/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the VDI Allocation


## List VDI Apps

```shell
curl "<%= curl_url %>/api/vdi-apps" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "vdiApps": [
    {
      "id": 1,
      "name": "Notepad",
      "description": "A fine text editor",
      "launchPrefix": "||notepad",
      "logo": "<%= api_url %>/storage/uploads/uploads/VdiApp/1/logo/Notepad_Logo_original_original.png",
      "dateCreated": "2021-03-30T02:59:23Z",
      "lastUpdated": "2021-03-30T02:59:23Z"
    },
    {
      "id": 2,
      "name": "Explorer",
      "description": "A file browser",
      "launchPrefix": "!!explorer",
      "logo": "",
      "dateCreated": "2021-04-08T11:28:14Z",
      "lastUpdated": "2021-04-08T11:28:14Z"
    },
  ],
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 2,
    "total": 2
  }
}
```

This endpoint retrieves all VDI Apps.

### HTTP Request

`GET <%= api_url %>/api/vdi-apps`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Filter by wildcard search of name and description
name |  | Filter by name, wildcard may be specified as **%**, eg. `example-%`
description |  | Filter by description, wildcard may be specified as **%**. eg. `example-%`

## Get a Specific VDI App

```shell
curl "<%= curl_url %>/api/vdi-apps/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "vdiApp": {
    "id": 1,
    "name": "Notepad",
    "description": "A fine text editor",
    "launchPrefix": "||notepad",
    "logo": "<%= api_url %>/storage/uploads/uploads/VdiApp/1/logo/Notepad_Logo_original_original.png",
    "dateCreated": "2021-03-30T02:59:23Z",
    "lastUpdated": "2021-03-30T02:59:23Z"
  }
}
```

This endpoint retrieves a specific VDI App.

### HTTP Request

`GET <%= api_url %>/api/vdi-apps/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the VDI App


## Create a VDI App

```shell
curl -XPOST "<%= curl_url %>/api/vdi-apps" \
  -H "Authorization: Bearer <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "vdiApp": {
    "name": "Notepad",
    "description": "A fine text editor",
    "launchPrefix": "||notepad"
  }
}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "vdiApp": {
    "id": 1,
    "name": "Notepad",
    "description": "A fine text editor",
    "launchPrefix": "||notepad",
    "logo": "",
    "dateCreated": "2021-03-30T02:59:23Z",
    "lastUpdated": "2021-03-30T02:59:23Z"
  }
}
```

This endpoint creates a new VDI App.

### HTTP Request

`POST <%= api_url %>/api/vdi-apps`

### JSON Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
name | Y |  | Name
description | N |  | Description
iconPath | N |  | Icon Path. A relative location of an icon image, eg. `/assets/containers-png/windows.png`.
logo | N |  | Logo File, upload a custom logo, requires `Content-Type: multipart/form-data`
launchPrefix | N |  | Launch Prefix. The RDS App Name Prefix. Note: Must start with **||** (i.e. `||notepad`) to launch notepad

## Update a VDI App

```shell
curl -XPUT "<%= curl_url %>/api/vdi-apps/:id" \
  -H "Authorization: Bearer <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "vdiApp": {
    "description": "A handy app"
  }
}'
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

This endpoint updates an existing VDI App.

### HTTP Request

`PUT <%= api_url %>/api/vdi-apps/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the VDI app

### JSON Parameters

Same as [Create](#create-a-vdi-app).

## Upload Logo for a VDI App

```shell
curl -XPUT "<%= curl_url %>/api/vdi-apps/:id" \
  -H "Authorization: Bearer <%= curl_token %>" \
  -F 'vdiApp.logo=@filename'
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

This uses `Content-Type: multipart/form-data` to upload a custom logo file. The `vdiApp.logo` parameter can be a multipart file for both the create (`POST`) and update (`PUT`) endpoints.

### HTTP Request

`PUT <%= api_url %>/api/vdi-apps/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the VDI app

### HTTP Headers

Header | Description
--------- | -----------
Content-Type     | `multipart/form-data` is expected.

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
vdiApp.logo      |  | Image File png,jpg,svg

## Delete a VDI App

```shell
curl -XDELETE "<%= curl_url %>/api/vdi-apps/:id" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This endpoint deletes an existing VDI app.

### HTTP Request

`DELETE <%= api_url %>/api/vdi-apps/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the VDI app

## List VDI Gateways

```shell
curl "<%= curl_url %>/api/vdi-gateways" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "vdiGateways": [
    {
      "id": 1,
      "name": "Gateway Example",
      "description": "An example of a VDI Gateway",
      "gatewayUrl": "https://vdigateway.mydomain",
      "apiKey": "40160686-d534-4566-9006-10fcb4797fa7",
      "dateCreated": "2021-04-08T10:45:20Z",
      "lastUpdated": "2021-04-08T10:45:20Z"
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

This endpoint retrieves all VDI Gateways.

### HTTP Request

`GET <%= api_url %>/api/vdi-gateways`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Filter by wildcard search of name and description
name |  | Filter by name, wildcard may be specified as **%**, eg. `example-%`
description |  | Filter by description, wildcard may be specified as **%**. eg. `example-%`

## Get a Specific VDI Gateway

```shell
curl "<%= curl_url %>/api/vdi-gateways/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "vdiGateway": {
    "id": 1,
    "name": "Gateway Example",
    "description": "An example of a VDI Gateway",
    "gatewayUrl": "https://vdigateway.mydomain",
    "apiKey": "40160686-d534-4566-9006-10fcb4797fa7",
    "dateCreated": "2021-04-08T10:45:20Z",
    "lastUpdated": "2021-04-08T10:45:20Z"
  }
}
```

This endpoint retrieves a specific VDI Gateway.

### HTTP Request

`GET <%= api_url %>/api/vdi-gateways/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the VDI Gateway


## Create a VDI Gateway

```shell
curl -XPOST "<%= curl_url %>/api/vdi-gateways" \
  -H "Authorization: Bearer <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "vdiGateway": {
    "name": "Gateway Example",
    "description": "An example of a VDI Gateway",
    "gatewayUrl": "https://vdigateway.mydomain"
  }
}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "vdiGateway": {
    "id": 1,
    "name": "Gateway Example",
    "description": "An example of a VDI Gateway",
    "gatewayUrl": "https://vdigateway.mydomain",
    "dateCreated": "2021-04-08T10:45:20Z",
    "lastUpdated": "2021-04-08T10:45:20Z"
  }
}
```

This endpoint creates a new VDI Gateway.

### HTTP Request

`POST <%= api_url %>/api/vdi-gateways`

### JSON Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
name | Y |  | Name
description | N |  | Description
gatewayUrl | Y |  | Gateway URL

## Update a VDI Gateway

```shell
curl -XPUT "<%= curl_url %>/api/vdi-gateways/:id" \
  -H "Authorization: Bearer <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "vdiGateway": {
    "description": "The best VDI gateway to use"
  }
}'
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

This endpoint updates an existing VDI Gateway.

### HTTP Request

`PUT <%= api_url %>/api/vdi-gateways/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the VDI gateway

### JSON Parameters

Same as [Create](#create-a-vdi-gateway).

## Delete a VDI Gateway

```shell
curl -XDELETE "<%= curl_url %>/api/vdi-gateways/:id" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This endpoint deletes an existing VDI gateway.

### HTTP Request

`DELETE <%= api_url %>/api/vdi-gateways/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the VDI gateway
