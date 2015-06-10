# Compute Servers

 A Compute Server is either a bare metal machine or virtual machine that is provisioned into morpheus via Chef. These servers are setup as Docker Hosts and used to provision containers into. They also run the morphd agent which reports server statistics and logs back to the morpheus stack.

 <aside class="warning">You must be authorized as a System Admin to provision servers into Morpheus cloud or in an Appliance context.</aside>

## Get All Servers

```shell
curl "https://api.gomorpheus.com/api/servers"
  -H "Authorization: BEARER access_token"
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
      "serverTypes": [
        
      ],
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
      "serverTypes": [
        
      ],
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

This endpoint retrieves all servers and their JSON encoded configuration attributes based on check type. Server data is encrypted in the database.

### HTTP Request

`GET https://api.gomorpheus.com/api/servers`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
lastUpdated | null | Date filter, restricts query to only load servers updated  timestamp is more recent or equal to the date specified


<aside class="success">
Remember — a happy kitten is an authenticated kitten!
</aside>

## Get a Specific Server


```shell
curl "https://api.gomorpheus.com/api/servers/1" \
  -H "Authorization: BEARER access_token"
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
    "serverTypes": [
      
    ],
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

This endpoint retrieves a specific server.


### HTTP Request

`GET https://api.gomorpheus.com/api/servers/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of the check to retrieve

## Provision a Server

```shell
curl -XPOST "https://api.gomorpheus.com/api/servers" \
  -H "Authorization: BEARER access_token" \
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
name      | null | Unique name scoped to your account for the server
description | null | Optional description field
zone | null | The zone id we want to assign the server to.
sshHost | null | reachable ip address for the server to remote in and provision the server
sshUsername | null | ssh username to use when provisioning
sshPassword | null | optional ssh password to use, if not specified the account public key can be used
dataDevice  | null | the mount point for the lvm volume that needs to be created

## Updating a Server

```shell
curl -XPUT "https://api.gomorpheus.com/api/servers/1" \
  -H "Authorization: BEARER access_token" \
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
name      | null | Unique name scoped to your account for the server
description | null | Optional description field

## Delete a Server

```shell
curl -XDELETE "https://api.gomorpheus.com/api/servers/1" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a server asynchronously and remove from the hosted chef system.

