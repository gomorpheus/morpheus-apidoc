# Hosts

 A Host, or Server, is either a bare metal machine or virtual machine that is provisioned into <%= application_name %> via Chef. These servers are setup as Docker Hosts and used to provision containers into. They also run the morphd agent which reports host statistics and logs back to the <%= application_name %> stack.

 A Host may also be referred to as a *Server* or *server*.

## Get All Hosts

```shell
curl "<%= curl_url %>/api/servers"
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "servers": [
    {
      "id": 2809,
      "uuid": "01548a80-9c98-49b0-9d36-f438e6557156",
      "externalId": "i-0ca3df01d3ea194eb",
      "internalId": null,
      "externalUniqueId": null,
      "name": "test-nginx",
      "externalName": "test-nginx",
      "hostname": "test-nginx",
      "accountId": 1,
      "account": {
        "id": 1,
        "name": "root"
      },
      "owner": {
        "id": 1,
        "username": "admin"
      },
      "zone": {
        "id": 39,
        "name": "test-aws"
      },
      "plan": {
        "id": 1,
        "code": "amazon-t2.nano",
        "name": "Amazon T2 Nano - 1 Core, 0.5GB Memory"
      },
      "computeServerType": {
        "id": 45,
        "code": "amazonVm",
        "name": "Amazon Instance",
        "managed": true,
        "externalDelete": true
      },
      "visibility": "private",
      "description": null,
      "zoneId": 39,
      "siteId": 1,
      "resourcePoolId": 175,
      "folderId": null,
      "sshHost": null,
      "sshPort": 22,
      "externalIp": null,
      "internalIp": "172.31.3.206",
      "volumeId": null,
      "platform": "ubuntu",
      "platformVersion": "14.04",
      "sshUsername": "admin",
      "sshPassword": "************",
      "osDevice": "/dev/xvda",
      "osType": "linux",
      "dataDevice": "/dev/sdb",
      "lvmEnabled": false,
      "apiKey": "cc58b29b-278b-4847-a001-0295e2f6c897",
      "softwareRaid": false,
      "dateCreated": "2020-09-15T20:24:31Z",
      "lastUpdated": "2021-01-22T17:20:34Z",
      "stats": {
        "ts": "2021-01-22T17:20:34Z",
        "maxMemory": 536870912,
        "usedMemory": 0,
        "maxStorage": 10737418240,
        "usedStorage": 1423470592,
        "cpuUsage": 0.0,
        "freeMemory": 536870912,
        "netTxUsage": 0,
        "netRxUsage": 0,
        "networkBandwidth": 0
      },
      "status": "provisioned",
      "statusMessage": null,
      "errorMessage": null,
      "statusDate": "2020-09-15T20:24:58Z",
      "statusPercent": null,
      "statusEta": null,
      "powerState": "off",
      "agentInstalled": true,
      "lastAgentUpdate": "2020-11-02T16:11:58Z",
      "agentVersion": "2.0.0",
      "maxCores": 1,
      "maxMemory": 536870912,
      "maxStorage": 10737418240,
      "maxCpu": null,
      "hourlyCost": 0.0086816667,
      "hourlyPrice": 0.0086816667,
      "sourceImage": {
        "id": 99,
        "code": "amazon.ec2.image.morpheus.nginx.1.9",
        "name": "ubuntu-14_04-nginx-1_9-morph.0.1"
      },
      "serverOs": {
        "id": 5,
        "code": "ubuntu.14.04.64",
        "name": "ubuntu 14 64-bit",
        "description": null,
        "vendor": "canonical",
        "category": "ubuntu",
        "osFamily": "debian",
        "osVersion": "14.04",
        "bitCount": 64,
        "platform": "linux"
      },
      "serverOs": {
        "id": 50,
        "code": "linux",
        "name": "linux",
        "description": null,
        "vendor": "linux",
        "category": "linux",
        "osFamily": null,
        "osVersion": "all",
        "bitCount": 64,
        "platform": "linux"
      },
      "volumes": [
        {
          "id": 164967,
          "name": "root",
          "controllerId": null,
          "controllerMountPoint": null,
          "resizeable": true,
          "rootVolume": true,
          "unitNumber": null,
          "typeId": 14,
          "configurableIOPS": false,
          "datastoreId": null,
          "maxStorage": 32212254720,
          "displayOrder": 0,
          "maxIOPS": null
        }
      ],
      "controllers": [

      ],
      "interfaces": [
        {
          "refType": null,
          "refId": null,
          "name": "eth0",
          "internalId": null,
          "externalId": "eni-040163be55f537561",
          "uniqueId": "morpheus-nic-346-502-0",
          "publicIpAddress": "52.53.211.255",
          "publicIpv6Address": null,
          "ipAddress": "172.31.3.206",
          "ipv6Address": null,
          "ipSubnet": null,
          "ipv6Subnet": null,
          "description": "",
          "dhcp": true,
          "active": true,
          "poolAssigned": false,
          "primaryInterface": true,
          "network": null,
          "subnet": null,
          "networkGroup": null,
          "networkPosition": null,
          "networkPool": null,
          "networkDomain": null,
          "type": {
            "id": 1,
            "code": "standard",
            "name": "standard"
          },
          "ipMode": null,
          "macAddress": "06:d9:0e:f2:d3:01"
        }
      ],
      "labels": [

      ],
      "tags": [
        {
          "id": 43144,
          "name": "foo",
          "value": "bar"
        },
        {
          "id": 43143,
          "name": "hello",
          "value": "world"
        }
      ],
      "enabled": true,
      "tagCompliant": null,
      "containers": [
        502
      ]
    }
  ],
  "stats": {
    "2809": {
      "usedStorage": 1423470592,
      "reservedStorage": 10737418240,
      "maxStorage": 10737418240,
      "usedMemory": 0,
      "reservedMemory": 512217088,
      "maxMemory": 512217088,
      "cpuUsage": 0
    }
  },
  "multiTenant": true,
  "meta": {
    "max": 25,
    "offset": 0,
    "size": 1,
    "total": 1
  }
}
```

This endpoint retrieves a paginated list of hosts.

### HTTP Request

`GET <%= api_url %>/api/servers`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
name |  | Filter by name
phrase |  | Filter by wildcard search of name and description
zoneId |  | Filter by zone (cloud) ID
siteId |  | Filter by site (group) ID, restricts results to clouds in the specified group(s)
clusterId |  | Filter by cluster ID
managed |  | Filter by managed (true) or unmanaged (false)
serverType |  | Filter by server type code
powerState |  | Filter by power status
ip |  | Filter by IP address
vm |  | Filter to show only Virtual Machines (true)
vmHypervisor |  | Filter to show only VM Hypervisors (true)
bareMetalHost |  | Filter to show only Baremetal Servers (true)
status |  | Filter by status
agentInstalled |  | Filter by agent installed (true)
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
lastUpdated |  | Date filter, restricts query to only load servers updated  timestamp is more recent or equal to the date specified
createdBy |  | Filter by Created By (User) ID. Accepts multiple values.
tags |  | Filter by tags (metadata). This allows filtering by arbitrary tag names and values like this `tags.foo=bar`.
metadata |  | Alias for `tags`
uuid |  | Filter by UUID
externalId |  | Filter by External ID
internalId |  | Filter by Internal ID
externalUniqueId |  | Filter by External Unique ID

<aside class="info">
<b>Deprecation notice.</b> The property <code>metadata</code> was renamed to <code>tags</code>. 
API versions older than 4.2.5/5.2.1 still use the old property name: <code>metadata</code>
</aside>

## Get a Specific Host


```shell
curl "<%= curl_url %>/api/servers/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "server": {
    "id": 2809,
    "uuid": "01548a80-9c98-49b0-9d36-f438e6557156",
    "externalId": "i-0ca3df01d3ea194eb",
    "internalId": null,
    "externalUniqueId": null,
    "name": "test-nginx",
    "externalName": "test-nginx",
    "hostname": "test-nginx",
    "accountId": 1,
    "account": {
      "id": 1,
      "name": "root"
    },
    "owner": {
      "id": 1,
      "username": "admin"
    },
    "zone": {
      "id": 39,
      "name": "test-aws"
    },
    "plan": {
      "id": 1,
      "code": "amazon-t2.nano",
      "name": "Amazon T2 Nano - 1 Core, 0.5GB Memory"
    },
    "computeServerType": {
      "id": 45,
      "code": "amazonVm",
      "name": "Amazon Instance",
      "managed": true,
      "externalDelete": true
    },
    "visibility": "private",
    "description": null,
    "zoneId": 39,
    "siteId": 1,
    "resourcePoolId": 175,
    "folderId": null,
    "sshHost": null,
    "sshPort": 22,
    "externalIp": null,
    "internalIp": "172.31.3.206",
    "volumeId": null,
    "platform": "ubuntu",
    "platformVersion": "14.04",
    "sshUsername": "admin",
    "sshPassword": "************",
    "osDevice": "/dev/xvda",
    "osType": "linux",
    "dataDevice": "/dev/sdb",
    "lvmEnabled": false,
    "apiKey": "cc58b29b-278b-4847-a001-0295e2f6c897",
    "softwareRaid": false,
    "dateCreated": "2020-09-15T20:24:31Z",
    "lastUpdated": "2021-01-22T17:15:10Z",
    "stats": {
      "ts": "2021-01-22T17:15:09Z",
      "maxMemory": 536870912,
      "usedMemory": 0,
      "maxStorage": 10737418240,
      "usedStorage": 1423470592,
      "cpuUsage": 0.0,
      "freeMemory": 536870912,
      "netTxUsage": 0,
      "netRxUsage": 0,
      "networkBandwidth": 0
    },
    "status": "provisioned",
    "statusMessage": null,
    "errorMessage": null,
    "statusDate": "2020-09-15T20:24:58Z",
    "statusPercent": null,
    "statusEta": null,
    "powerState": "off",
    "agentInstalled": true,
    "lastAgentUpdate": "2020-11-02T16:11:58Z",
    "agentVersion": "2.0.0",
    "maxCores": 1,
    "maxMemory": 536870912,
    "maxStorage": 10737418240,
    "maxCpu": null,
    "hourlyCost": 0.0086816667,
    "hourlyPrice": 0.0086816667,
    "sourceImage": {
      "id": 99,
      "code": "amazon.ec2.image.morpheus.nginx.1.9",
      "name": "ubuntu-14_04-nginx-1_9-morph.0.1"
    },
    "serverOs": {
      "id": 5,
      "code": "ubuntu.14.04.64",
      "name": "ubuntu 14 64-bit",
      "description": null,
      "vendor": "canonical",
      "category": "ubuntu",
      "osFamily": "debian",
      "osVersion": "14.04",
      "bitCount": 64,
      "platform": "linux"
    },
    "volumes": [
      {
        "id": 164967,
        "name": "root",
        "controllerId": null,
        "controllerMountPoint": null,
        "resizeable": true,
        "rootVolume": true,
        "unitNumber": null,
        "typeId": 14,
        "configurableIOPS": false,
        "datastoreId": null,
        "maxStorage": 32212254720,
        "displayOrder": 0,
        "maxIOPS": null
      }
    ],
    "controllers": [

    ],
    "interfaces": [
      {
        "refType": null,
        "refId": null,
        "name": "eth0",
        "internalId": null,
        "externalId": "eni-040163be55f537561",
        "uniqueId": "morpheus-nic-346-502-0",
        "publicIpAddress": "52.53.211.255",
        "publicIpv6Address": null,
        "ipAddress": "172.31.3.206",
        "ipv6Address": null,
        "ipSubnet": null,
        "ipv6Subnet": null,
        "description": "",
        "dhcp": true,
        "active": true,
        "poolAssigned": false,
        "primaryInterface": true,
        "network": null,
        "subnet": null,
        "networkGroup": null,
        "networkPosition": null,
        "networkPool": null,
        "networkDomain": null,
        "type": {
          "id": 1,
          "code": "standard",
          "name": "standard"
        },
        "ipMode": null,
        "macAddress": "06:d9:0e:f2:d3:01"
      }
    ],
    "labels": [

    ],
    "tags": [
      {
        "id": 43144,
        "name": "foo",
        "value": "bar"
      },
      {
        "id": 43143,
        "name": "hello",
        "value": "world"
      }
    ],
    "enabled": true,
    "tagCompliant": null,
    "containers": [
      502
    ],
    "config": {
      "isEC2": "false",
      "resourcePoolId": 175,
      "publicIpType": "subnet",
      "createUser": true
    }
  },
  "stats": {
    "usedStorage": 1423470592,
    "reservedStorage": 10737418240,
    "maxStorage": 10737418240,
    "usedMemory": 0,
    "reservedMemory": 512217088,
    "maxMemory": 512217088,
    "cpuUsage": 0
  }
}
```

This endpoint retrieves a specific host.


### HTTP Request

`GET <%= api_url %>/api/servers/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the check to retrieve

## Get Available Service Plans for a Host

```shell
curl -XGET "<%= curl_url %>/api/servers/service-plans?zoneId=2&serverTypeId=60" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "plans": [
    {
      "id": 75,
      "name": "1 CPU, 512MB Memory",
      "value": 75,
      "code": "vm-512",
      "maxStorage": 10737418240,
      "maxMemory": 536870912,
      "maxCpu": 1,
      "maxCores": 1,
      "customCpu": false,
      "customMaxMemory": false,
      "customMaxStorage": true,
      "customMaxDataStorage": true,
      "customCoresPerSocket": false,
      "coresPerSocket": 1,
      "storageTypes": [
        {
          "id": 1,
          "editable": false,
          "optionTypes": [

          ],
          "displayOrder": 1,
          "code": "standard",
          "volumeType": "disk",
          "minStorage": null,
          "deletable": false,
          "defaultType": true,
          "createDatastore": null,
          "resizable": false,
          "storageType": null,
          "allowSearch": true,
          "volumeOptionSource": null,
          "displayName": "Disk",
          "minIOPS": null,
          "maxIOPS": null,
          "hasDatastore": true,
          "customSize": true,
          "autoDelete": true,
          "name": "Standard",
          "configurableIOPS": false,
          "customLabel": true,
          "enabled": true,
          "description": "Standard",
          "volumeCategory": "disk",
          "externalId": null,
          "maxStorage": null
        }
      ],
      "rootStorageTypes": [
        {
          "id": 1,
          "editable": false,
          "optionTypes": [

          ],
          "displayOrder": 1,
          "code": "standard",
          "volumeType": "disk",
          "minStorage": null,
          "deletable": false,
          "defaultType": true,
          "createDatastore": null,
          "resizable": false,
          "storageType": null,
          "allowSearch": true,
          "volumeOptionSource": null,
          "displayName": "Disk",
          "minIOPS": null,
          "maxIOPS": null,
          "hasDatastore": true,
          "customSize": true,
          "autoDelete": true,
          "name": "Standard",
          "configurableIOPS": false,
          "customLabel": true,
          "enabled": true,
          "description": "Standard",
          "volumeCategory": "disk",
          "externalId": null,
          "maxStorage": null
        }
      ],
      "addVolumes": true,
      "customizeVolume": true,
      "rootDiskCustomizable": true,
      "noDisks": false,
      "hasDatastore": true,
      "minDisk": 0,
      "maxDisk": null,
      "lvmSupported": true,
      "datastores": {
        "cluster": [
          {
            "id": 54,
            "name": "demo-qnap - 4.3TB Free"
          }
        ],
        "store": [
          {
            "id": 50,
            "name": "datastore1 - 463.4GB Free"
          }
        ]
      },
      "supportsAutoDatastore": true,
      "autoOptions": [
        {
          "id": "autoCluster",
          "name": "Auto - Cluster"
        },
        {
          "id": "auto",
          "name": "Auto - Datastore"
        }
      ],
      "cpuOptions": [

      ],
      "coreOptions": [

      ],
      "memoryOptions": [

      ],
      "rootCustomSizeOptions": {
      },
      "customSizeOptions": {
      },
      "customCores": false,
      "maxDisks": null,
      "memorySizeType": "MB"
    }
  ]
}
```

This endpoint retrieves all the [Service Plans](#service-plans) available for the specified cloud and host type. It may be used to get the list of available plans when creating a new host or resizing an existing host.

### HTTP Request

`GET <%= api_url %>/api/servers/service-plans?zoneId=:zoneId&serverTypeId=:serverTypeId&siteId=:siteId`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
zoneId | The ID of the [Cloud](#clouds)
serverTypeId | Y | The ID of the [Host Type](#host-types)
siteId | N | The ID of the [Group](#groups)

## Provision a Host

```shell
curl -XPOST "<%= curl_url %>/api/servers" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{ "server": {
  "name": "my-nginx",
  "description": "my-nginx",
  "zone": {"id":1},
  "sshHost": "10.100.54.4",
  "sshUsername": "vagrant",
  "sshPassword": "T8Hqq=cJhb*#",
  "dataDevice": "/dev/sdb"
  },
  "network": {
    "name": "eth1"
  }
  }}'
```

> The above command returns a similar JSON structure when submitting a GET request for a single check

### HTTP Request

`POST <%= api_url %>/api/servers`

### JSON Server Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Unique name scoped to your account for the server
description |  | Optional description field
zone |  | The zone id we want to assign the server to.
sshHost |  | reachable ip address for the server to remote in and provision the server
sshUsername |  | ssh username to use when provisioning
sshPassword |  | optional ssh password to use, if not specified the account public key can be used
dataDevice  |  | the mount point for the lvm volume that needs to be created

## Updating a Host

```shell
curl -XPUT "<%= curl_url %>/api/servers/:id" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{ "server": {
  "name": "my-nginx",
  "description": "my-nginx",
  "addTags": [
    {"name": "hello", "value": "world"}
  ],
  "removeTags": [
    {"name": "oldTag"}
  ]
  }}'
```

> The above command returns a similar JSON structure when submitting a GET request for a specific host

### HTTP Request

`PUT <%= api_url %>/api/servers/:id`

### JSON Server Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Unique name scoped to your account for the server
description |  | Optional description field
sshUsername |  | SSH Username
sshPassword |  | SSH Password
powerScheduleType |  | Power Schedule ID
tags |  | Metadata tags, Array of objects having a name and value, this adds or updates the specified tags and removes any tags not specified.
addTags |  | Add or update value of Metadata tags, Array of objects having a name and value
removeTags |  | Remove Metadata tags, Array of objects having a name and an optional value. If value is passed, it must match to be removed.

## Convert To Managed

```shell
curl -XPUT "<%= curl_url %>/api/servers/1/make-managed" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
    "server": {
      "sshUsername": "admin",
      "sshPassword": "93KL_&Tdst!e",
      "serverOs": {"id": 1},
      "plan": {"id": 9},
      "account": {"id": 1},
      "tags": [
        {"name": "hello", "value": "world"},
        {"name": "flash", "value": "bang"}
      ],
      "config": {
        "customOptions": {
          "dbfoldername": "data"
        }
      }
    }, 
    "installAgent": true
  }
'
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will make the host a managed server, and install the agent.

### HTTP Request

`PUT <%= api_url %>/api/servers/:id/make-managed`


### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
server      |  | Object containing server configuration parameters
installAgent | true | Install agent. Set to false to manually install agent instead.
instanceTypeId |  | Specific instance type ID to assign the server
layout |  | Specific layout ID to assign the server *(required if instanceTypeId is passed)*

### JSON Server Parameters

Parameter | Default | Description
--------- | ------- | -----------
sshUsername      |  | ssh username to use when provisioning
sshPassword |  | ssh password to use, if not specified the account public key can be used
serverOs.id |  | The ID os the OS Type for this server. See GET /api/options/osTypes
plan.id |  | Service Plan to assign to the server
account.id |  | Tenant to assign the server to. Only available to Master Tenant users/
provisionSiteId |  | Specific group to assign the server
tags |  | Metadata tags, Array of objects having a name and value, this adds or updates the specified tags and removes any tags not specified.
config.customOptions  |  | Custom Option Type settings object containing name value pairs to be set.

## Upgrade Agent

```shell
curl -XPUT "<%= curl_url %>/api/servers/1/upgrade" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will upgrade the version of the install installed on the host.

### HTTP Request

`PUT <%= api_url %>/api/servers/:id/upgrade`

## Resize a Host

```shell
curl -XPUT "<%= curl_url %>/api/servers/1/resize" \
  -H "Authorization: BEARER <%= curl_token %>"
  -H "Content-Type: application/json" \
  -d '{
    "server": {
      "id": 82,
      "plan": {
        "id": 76
      }
    },
    "volumes": [
      {
        "id": 419,
        "rootVolume": true,
        "name": "root",
        "size": 10,
        "sizeId": null,
        "storageType": 1,
        "datastoreId": "auto"
      }
    ],
    "deleteOriginalVolumes": true,
    "servicePlanOptions": {
      "maxCores": 1,
      "coresPerSocket": 1,
      "maxMemory": 536870912
    },
    "networkInterfaces": [
      {
        "id": 612,
        "name": "eth0",
        "network": {
          "id": "network-22"
        }
      },
      {
        "name": "eth1",
        "network": {
          "id": "network-22"
        }
      }
    ]
  }'

```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will resize a host asynchronously. This endpoint also allows for NIC reconfiguration by passing a new array of `networkInterfaces`.

### HTTP Request

`PUT <%= api_url %>/api/servers/:id/resize`

### JSON Server Parameters

Parameter | Default | Description
--------- | ------- | -----------
server.plan.id      |  | The ID of the new plan (optional). See [Available Service Plans](#get-available-service-plans-for-a-host)
servicePlanOptions |  | Map of custom options depending on selected service plan.
servicePlanOptions.maxCores |  | Core Count
servicePlanOptions.coresPerSocket |  | Cores Per Socket
servicePlanOptions.maxMemory |  | Memory in bytes **For backwards compatability, values less than 1048576 are treated as being in MB and will be converted to bytes**
volumes |  | List of volumes with their new sizes, see [Volumes](#volumes).
deleteOriginalVolumes | false | Delete the original volumes after resizing. (Amazon only)
networkInterfaces |  | Key for network configuration, see [Network Interfaces](#network-interfaces). Include `id` to update an existing interface.

## Start a Host

```shell
curl -X PUT "<%= api_url %>/api/servers/1/start" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will start a host.

### HTTP Request

`PUT <%= api_url %>/api/servers/:id/start`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the server

## Stop a Host

```shell
curl -X PUT "<%= api_url %>/api/servers/1/stop" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will stop a host.

### HTTP Request

`PUT <%= api_url %>/api/servers/:id/stop`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the server

## Run Workflow on a Host

```shell
curl -X PUT "<%= api_url %>/api/servers/1/workflow?workflowId=33" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -d '{ "taskSet": {
    "customOptions": {"mysqlVersion":"5.6.17"}
    }}'
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will run a provisioning workflow on a host. 

For operational workflows, see [Execute a Workflow](#execute-a-workflow).

### HTTP Request

`PUT <%= api_url %>/api/servers/:id/workflow`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the server

### Query Parameters

Parameter | Description
--------- | -----------
workflowId | ID of the workflow to execute
workflowName | Name of the workflow to execute

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
taskSet      |  | Object containing workflow configuration parameters
taskSet.customOptions      |  | Object containing any custom option type configuration parameters


## Get list of snapshots for a Host

```shell
curl "<%= curl_url %>/api/servers/:id/snapshots" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure that looks like this:

```json
{
    "snapshots": [
    ]
}
```

### HTTP Request

`GET <%= api_url %>/api/servers/:id/snapshots`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the server

## Assign To Tenant

```shell
curl -XPUT "<%= curl_url %>/api/servers/1/assign-account?accountId=2" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{}'
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will change the ownership of the host to the specified Tenant account. This is only available to Master Tenant users.

### HTTP Request

`PUT <%= api_url %>/api/servers/:id/assign-account?accountId=:accountId`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the Server

### URL Parameters

Parameter | Description
--------- | -----------
accountId | ID of the Tenant

## Delete a Host

```shell
curl -XDELETE "<%= curl_url %>/api/servers/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a host asynchronously.

### HTTP Request

`DELETE <%= api_url %>/api/servers/:id`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
removeResources | on if server is managed. | Remove Infrastructure.
removeInstances | off | Remove Associated Instances
preserveVolumes | off | Preserve Volumes
releaseEIPs | on | Release EIPs
force | off | Force Delete


## Remove From Control/Remove Discovered Hosts

```shell
curl -XDELETE "<%= curl_url %>/api/servers/removeFromControl" \
  -H "Authorization: BEARER <%= curl_token %>"
  -d '{ "servers":[3173,3174,3175] }'
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete an unmanaged host asynchronously (Only deletes records local to morpheus, actual VMs remain unchanged).

### HTTP Request

`DELETE <%= api_url %>/api/servers/removeFromControl`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
servers     |  | array of Ids of unmanaged Servers to be deleted
force | off | Force Delete
