# Hosts

 A Host, or Server, is either a bare metal machine or virtual machine that is provisioned into morpheus via Chef. These servers are setup as Docker Hosts and used to provision containers into. They also run the morphd agent which reports host statistics and logs back to the morpheus stack.

 A Host may also be referred to as a *Server* or *server*.

## Get All Hosts

```shell
curl "$MORPHEUS_API_URL/api/servers"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "servers": [
    {
      "id": 1,
      "accountId": 1,
      "name": "dre-matrix-1",
      "visibility": "public",
      "description": "dre-matrix-1",
      "zoneId": 1,
      "siteId": 1,
      "sshHost": "10.100.54.2",
      "internalIp": "10.100.54.2",
      "externalIp": "10.100.54.2",
      "sshPort": 22,
      "volumeId": null,
      "platform": null,
      "platformVersion": null,
      "sshUsername": "vagrant",
      "sshPassword": "****",
      "osDevice": "\/dev\/sda",
      "dataDevice": "\/dev\/sdb",
      "apiKey": "a3914182-0f2f-4e9c-a6d2-63822747b9cd",
      "softwareRaid": false,
      "config": null,
      "capacityInfo": {
        "class": "com.morpheus.ComputeCapacityInfo",
        "id": 1,
        "maxCores": null,
        "maxMemory": 2099228672,
        "maxStorage": 42945478656,
        "server": {
          "class": "com.morpheus.ComputeServer",
          "id": 1
        },
        "usedMemory": 1073741824,
        "usedStorage": 3221225472
      },
      "dateCreated": "2015-06-09T12:43:51Z",
      "lastUpdated": "2015-06-09T12:47:42Z",
      "lastStats": "{\"cpuIdleTime\":131115400,\"cpuSystemTime\":76300,\"cpuTotalTime\":131297000,\"cpuUsage\":0.13391375541687012,\"cpuUserTime\":105300,\"freeMemory\":91340800,\"freeSwap\":0,\"ts\":\"2015-06-10T13:11:45+0000\",\"usedMemory\":2007887872,\"usedSwap\":0}",
      "status": "provisioned",
      "interfaces": [
        {
          "id": 1,
          "active": true,
          "dhcp": true,
          "ipAddress": "10.100.54.2",
          "ipSubnet": null,
          "ipv6Address": null,
          "ipv6Subnet": null,
          "name": "eth1",
          "network": null,
          "networkPosition": null,
          "primaryInterface": true,
          "publicIpAddress": null,
          "publicIpv6Address": null,
          "server": {
            "id": 1
          }
        }
      ],
      "zone": {
        "id": 1,
        "accountId": 1,
        "groupId": 1,
        "name": "Davids Laptop",
        "description": "My Laptop Vagrant",
        "location": null,
        "visibility": "public",
        "zoneTypeId": 1
      }
    },
    {
      "id": 2,
      "accountId": 1,
      "name": "dre-matrix-2",
      "visibility": "public",
      "description": "dre-matrix-2",
      "zoneId": 1,
      "siteId": 1,
      "sshHost": "10.100.54.3",
      "internalIp": "10.100.54.3",
      "externalIp": "10.100.54.3",
      "sshPort": 22,
      "volumeId": null,
      "platform": null,
      "platformVersion": null,
      "sshUsername": "vagrant",
      "sshPassword": "****",
      "osDevice": "\/dev\/sda",
      "dataDevice": "\/dev\/sdb",
      "apiKey": "c3c12af8-1db2-44b3-930d-87f914b14577",
      "softwareRaid": false,
      "config": null,
      "capacityInfo": {
        "id": 2,
        "maxCores": null,
        "maxMemory": 2099228672,
        "maxStorage": 42945478656,
        "server": {
          "id": 2
        },
        "usedMemory": 1073741824,
        "usedStorage": 3221225472
      },
      "dateCreated": "2015-06-09T14:07:57Z",
      "lastUpdated": "2015-06-09T14:17:51Z",
      "lastStats": "{\"cpuIdleTime\":130016650,\"cpuSystemTime\":1041990,\"cpuTotalTime\":131172760,\"cpuUsage\":0.1677870750427246,\"cpuUserTime\":114120,\"freeMemory\":215248896,\"freeSwap\":0,\"ts\":\"2015-06-10T13:18:33+0000\",\"usedMemory\":1883979776,\"usedSwap\":0}",
      "status": "provisioned",
      "interfaces": [
        {
          "id": 2,
          "active": true,
          "dhcp": true,
          "ipAddress": "10.100.54.3",
          "ipSubnet": null,
          "ipv6Address": null,
          "ipv6Subnet": null,
          "name": "eth1",
          "network": null,
          "networkPosition": null,
          "primaryInterface": true,
          "publicIpAddress": null,
          "publicIpv6Address": null,
          "server": {
            "id": 2
          }
        }
      ],
      "zone": {
        "id": 1,
        "accountId": 1,
        "groupId": 1,
        "name": "Davids Laptop",
        "description": "My Laptop Vagrant",
        "location": null,
        "visibility": "public",
        "zoneTypeId": 1
      }
    }
  ],
  "serverCount": 2,
  "stats": {
    "1": {
      "usedStorage": 48861184,
      "reservedStorage": 3221225472,
      "maxStorage": 42945478656,
      "usedMemory": 2007887872,
      "reservedMemory": 1073741824,
      "maxMemory": 2099228672
    },
    "2": {
      "usedStorage": 18976768,
      "reservedStorage": 3221225472,
      "maxStorage": 42945478656,
      "usedMemory": 1883979776,
      "reservedMemory": 1073741824,
      "maxMemory": 2099228672
    }
  }
}
```

This endpoint retrieves a paginated list of hosts.

### HTTP Request

`GET https://api.gomorpheus.com/api/servers`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
name |  | Filter by name
phrase |  | Filter by wildcard search of name and description
siteId |  | Filter by group ID
zoneId |  | Filter by zone ID
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
tags |  | Filter by metadata tags. This allows filtering by arbitrary tag names and values like this `metadata.foo=bar`.


## Get a Specific Host


```shell
curl "$MORPHEUS_API_URL/api/servers/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "server": {
    "id": 1,
    "accountId": 1,
    "name": "dre-matrix-1",
    "visibility": "public",
    "description": "dre-matrix-1",
    "zoneId": 1,
    "siteId": 1,
    "sshHost": "10.100.54.2",
    "internalIp": "10.100.54.2",
    "externalIp": "10.100.54.2",
    "sshPort": 22,
    "volumeId": null,
    "platform": null,
    "platformVersion": null,
    "sshUsername": "vagrant",
    "sshPassword": "****",
    "osDevice": "\/dev\/sda",
    "dataDevice": "\/dev\/sdb",
    "apiKey": "a3914182-0f2f-4e9c-a6d2-63822747b9cd",
    "softwareRaid": false,
    "config": null,
    "capacityInfo": {
      "class": "com.morpheus.ComputeCapacityInfo",
      "id": 1,
      "maxCores": null,
      "maxMemory": 2099228672,
      "maxStorage": 42945478656,
      "server": {
        "class": "com.morpheus.ComputeServer",
        "id": 1
      },
      "usedMemory": 1073741824,
      "usedStorage": 3221225472
    },
    "dateCreated": "2015-06-09T12:43:51Z",
    "lastUpdated": "2015-06-09T12:47:42Z",
    "lastStats": "{\"cpuIdleTime\":131294520,\"cpuSystemTime\":76390,\"cpuTotalTime\":131476290,\"cpuUsage\":0.10046958923339844,\"cpuUserTime\":105380,\"freeMemory\":91181056,\"freeSwap\":0,\"ts\":\"2015-06-10T13:14:45+0000\",\"usedMemory\":2008047616,\"usedSwap\":0}",
    "status": "provisioned",
    "interfaces": [
      {
        "id": 1,
        "active": true,
        "dhcp": true,
        "ipAddress": "10.100.54.2",
        "ipSubnet": null,
        "ipv6Address": null,
        "ipv6Subnet": null,
        "name": "eth1",
        "network": null,
        "networkPosition": null,
        "primaryInterface": true,
        "publicIpAddress": null,
        "publicIpv6Address": null,
        "server": {
          "id": 1
        }
      }
    ],
    "zone": {
      "id": 1,
      "accountId": 1,
      "groupId": 1,
      "name": "Davids Laptop",
      "description": "My Laptop Vagrant",
      "location": null,
      "visibility": "public",
      "zoneTypeId": 1
    }
  }
}
```

This endpoint retrieves a specific host.


### HTTP Request

`GET https://api.gomorpheus.com/api/servers/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of the check to retrieve

## Get Available Service Plans for a Host

```shell
curl -XGET "https://api.gomorpheus.com/api/servers/service-plans?zoneId=2&serverTypeId=60" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
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

This returns a list of all of the service plans available for a host type. The response includes details about the plans and their configuration options. The parameters *zoneId* and *serverTypeId* are required.  

This endpoint can  be used to get the list of plans available for provisioning a new host or resizing a host.

### HTTP Request

`GET https://api.gomorpheus.com/api/servers/service-plans`

### Query Parameters

Parameter | Description
--------- | -----------
zoneId | The ID of the [Cloud](#compute-zones)
serverTypeId | The ID of the [Server Type](#compute-server-types)

## Provision a Host

```shell
curl -XPOST "$MORPHEUS_API_URL/api/servers" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{ "server": {
  "name": "dre-matrix-3",
  "description": "dre-matrix-3",
  "zone": {"id":1},
  "sshHost": "10.100.54.4",
  "sshUsername": "vagrant",
  "sshPassword": "vagrant",
  "dataDevice": "/dev/sdb"
  },
  "network": {
    "name": "eth1"
  }}'
```

> The above command returns a similar JSON structure when submitting a GET request for a single check

### HTTP Request

`POST https://api.gomorpheus.com/api/servers`

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
curl -XPUT "$MORPHEUS_API_URL/api/servers/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{ "server": {
  "name": "dre-matrix-3",
  "description": "dre-matrix-3"
  }}'
```

> The above command returns a similar JSON structure when submitting a GET request for a single check

### HTTP Request

`PUT https://api.gomorpheus.com/api/servers/:id`

### JSON Server Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Unique name scoped to your account for the server
description |  | Optional description field
sshUsername |  | SSH Username
sshPassword |  | SSH Password
powerScheduleType |  | Power Schedule ID

## Convert To Managed

```shell
curl -XPUT "$MORPHEUS_API_URL/api/servers/1/make-managed" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{ "server": {
  "sshUsername": "admin",
  "sshPassword": "asafepassword",
  "serverOs": {"id": 1}
  }, "installAgent": true}'
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will make the host a managed server, and install the agent.

### HTTP Request

`PUT https://api.gomorpheus.com/api/servers/:id/make-managed`


### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
server      |  | Object containing server configuration parameters
installAgent | true | Install agent. Set to false to manually install agent instead.

### JSON Server Parameters

Parameter | Default | Description
--------- | ------- | -----------
sshUsername      |  | ssh username to use when provisioning
sshPassword |  | ssh password to use, if not specified the account public key can be used
serverOs.id |  | The ID os the OS Type for this server. See GET /api/options/osTypes
provisionSiteId |  | Specific group to provision to

## Upgrade Agent

```shell
curl -XPUT "$MORPHEUS_API_URL/api/servers/1/upgrade" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will upgrade the version of the install installed on the host.

### HTTP Request

`PUT https://api.gomorpheus.com/api/servers/:id/upgrade`

## Resize a Host

```shell
curl -XPUT "$MORPHEUS_API_URL/api/servers/1/resize" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
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
    "deleteOriginalVolumes": true
  }'

```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will resize a host asynchronously.

### HTTP Request

`PUT https://api.gomorpheus.com/api/servers/:id/resize`

### JSON Server Parameters

Parameter | Default | Description
--------- | ------- | -----------
server.plan.id      |  | The ID of the new plan (optional). See [Available Service Plans](##get-available-service-plans-for-a-server)
volumes |  | List of volumes with their new sizes.
deleteOriginalVolumes | false | Delete the original volumes after resizing. (Amazon only)

## Start a Host

```shell
curl -X PUT "https://api.gomorpheus.com/api/servers/1/start" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will start a host.

### HTTP Request

`PUT https://api.gomorpheus.com/api/servers/:id/start`

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the server

## Stop a Host

```shell
curl -X PUT "https://api.gomorpheus.com/api/servers/1/stop" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will stop a host.

### HTTP Request

`PUT https://api.gomorpheus.com/api/servers/:id/stop`

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the server

## Run Workflow on a Host

```shell
curl -X PUT "https://api.gomorpheus.com/api/servers/1/workflow?workflowId=33" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
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

`PUT https://api.gomorpheus.com/api/servers/:id/workflow`

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the server

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

## Delete a Host

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/servers/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a host asynchronously.

### HTTP Request

`DELETE https://api.gomorpheus.com/api/servers/:id`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
removeResources | on if server is managed. | Remove Infrastructure.
removeInstances | off | Remove Associated Instances
preserveVolumes | off | Preserve Volumes
releaseEIPs | on | Release EIPs
force | off | Force Delete

