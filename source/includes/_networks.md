# Networks

Provides API for managing Networks.

## Get All Networks

```shell
curl "<%= curl_url %>/api/networks"
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "networks": [
    {
      "id": 1,
      "name": "my-network",
      "displayName": "my-displayName",
      "zone": {
        "id": 5,
        "name": "qa-azure"
      },
      "type": {
        "id": 8,
        "name": "Network",
        "code": "azureNetwork"
      },
      "owner": {
        "id": 1,
        "name": "root"
      },
      "code": null,
      "category": "azure.network.5",
      "interfaceName": null,
      "bridgeName": null,
      "bridgeInterface": null,
      "description": null,
      "externalId": "/subscriptions/88213e1e-d4c5-467f-b029-f34622281a98/resourceGroups/ARMUbuntu16/providers/Microsoft.Network/virtualNetworks/my-network",
      "internalId": null,
      "uniqueId": null,
      "externalType": "Network",
      "refUrl": null,
      "refType": "ComputeZone",
      "refId": 31,
      "vlanId": null,
      "vswitchName": null,
      "dhcpServer": true,
      "dhcpIp": null,
      "gateway": null,
      "netmask": null,
      "broadcast": null,
      "subnetAddress": null,
      "dnsPrimary": null,
      "dnsSecondary": null,
      "cidr": "192.168.0.0/16",
      "tftpServer": null,
      "bootFile": null,
      "switchId": null,
      "fabricId": null,
      "networkRole": null,
      "status": "available",
      "availabilityZone": null,
      "pool": null,
      "networkProxy": null,
      "networkDomain": null,
      "prefixLength": null,
      "visibility": "private",
      "enableAdmin": false,
      "active": true,
      "defaultNetwork": false,
      "assignPublicIp": false,
      "noProxy": null,
      "applianceUrlProxyBypass": true,
      "zonePool": {
        "id": 118,
        "name": "ARMUbuntu16"
      },
      "allowStaticOverride": false,
      "config": {
        "vlanIDs": null,
        "connectedGateway": "/infra/tier-1s/51b5f3c3-cc7e-4cef-89b5-dd576e8df454",
        "subnetIpManagementType": "dhcpLocal",
        "subnetIpServerId": "/infra/dhcp-server-configs/f1137d64-8402-41a2-abd8-7347743e5f4f",
        "dhcpRange": "192.168.123.10-192.168.123.100",
        "subnetDhcpServerAddress": "192.168.123.1/24",
        "subnetDhcpLeaseTime": "86400"
      },
      "tenants": [
        {
          "id": 1,
          "name": "root"
        }
      ]
    }
  ],
  "meta": {
    "size": 1,
    "total": 1,
    "offset": 0,
    "max": 25
  }
}
```

This endpoint retrieves all Networks associated with the account.

### HTTP Request

`GET <%= api_url %>/api/networks`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
name |  | If specified will return an exact match on name
phrase |  | If specified will return a partial match on name

## Get a Specific Network


```shell
curl "<%= curl_url %>/api/networks/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "network": {
    "id": 1,
    "name": "my-network",
    "displayName" : "network display name",
    "zone": {
      "id": 31,
      "name": "qa-azure"
    },
    "type": {
      "id": 8,
      "name": "Network",
      "code": "azureNetwork"
    },
    "owner": {
      "id": 1,
      "name": "root"
    },
    "code": null,
    "category": "azure.network.31",
    "interfaceName": null,
    "bridgeName": null,
    "bridgeInterface": null,
    "description": null,
    "externalId": "/subscriptions/88213e1e-d4c5-467f-b029-f34622281a98/resourceGroups/ARMUbuntu16/providers/Microsoft.Network/virtualNetworks/my-network",
    "internalId": null,
    "uniqueId": null,
    "externalType": "Network",
    "refUrl": null,
    "refType": "ComputeZone",
    "refId": 31,
    "vlanId": null,
    "vswitchName": null,
    "dhcpServer": true,
    "dhcpIp": null,
    "gateway": null,
    "netmask": null,
    "broadcast": null,
    "subnetAddress": null,
    "dnsPrimary": null,
    "dnsSecondary": null,
    "cidr": "192.168.0.0/16",
    "tftpServer": null,
    "bootFile": null,
    "switchId": null,
    "fabricId": null,
    "networkRole": null,
    "status": "available",
    "availabilityZone": null,
    "pool": null,
    "networkProxy": null,
    "networkDomain": null,
    "prefixLength": null,
    "visibility": "private",
    "enableAdmin": false,
    "active": true,
    "defaultNetwork": false,
    "assignPublicIp": false,
    "noProxy": null,
    "applianceUrlProxyBypass": true,
    "zonePool": {
      "id": 118,
      "name": "ARMUbuntu16"
    },
    "allowStaticOverride": false,
    "config": {
      "vlanIDs": null,
      "connectedGateway": "/infra/tier-1s/51b5f3c3-cc7e-4cef-89b5-dd576e8df454",
      "subnetIpManagementType": "dhcpLocal",
      "subnetIpServerId": "/infra/dhcp-server-configs/f1137d64-8402-41a2-abd8-7347743e5f4f",
      "dhcpRange": "192.168.123.10-192.168.123.100",
      "subnetDhcpServerAddress": "192.168.123.1/24",
      "subnetDhcpLeaseTime": "86400"
    },
    "tenants": [
      {
        "id": 1,
        "name": "root"
      }
    ]
  }
}
```

This endpoint retrieves a specific Network.


### HTTP Request

`GET <%= api_url %>/api/networks/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Network to retrieve


## Create a Network

```shell
curl -XPOST "<%= curl_url %>/api/networks" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "network": {
    "name": "test network",
    "displayName": "Network Display Name",
    "description": "a test network",
    "zone": {
      "id": 31
    },
    "type": {
      "id": 8
    },
    "resourceGroupId": "testresource",
    "addressSpace": "192.168.2.0/24",
    "subnetName": "test",
    "subnetCidr": "192.168.2.0/28",
    "scanNetwork": "off",
    "applianceUrlProxyBypass": "on",
    "noProxy": null,
    "resourcePermission": {
      "all": true
    },
    "config": {
      "vlanIDs": null,
	  "connectedGateway": "/infra/tier-1s/51b5f3c3-cc7e-4cef-89b5-dd576e8df454",
	  "subnetIpManagementType": "dhcpLocal",
      "subnetIpServerId": "/infra/dhcp-server-configs/f1137d64-8402-41a2-abd8-7347743e5f4f",
      "dhcpRange": "192.168.123.10-192.168.123.100",
	  "subnetDhcpServerAddress": "192.168.123.1/24",
	  "subnetDhcpLeaseTime": "86400"
    },
    "tenants": [
      {
        "id": 2
      },
      {
        "id": 1
      }
    ],
    "visibility": "private"
  }
}'
```

> The above command returns JSON structured like getting a single Network: 

### HTTP Request

`POST <%= api_url %>/api/networks`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Name
displayName | | Display Name
description      |  | Description
zone.id      |  | Cloud ID
type.id      |  | Network Type ID
pool      |  | Network Pool ID
allowStaticOverride      |  | Allow IP Override
assignPublicIP      |  | Assign Public IP
active      |  | Activate (true) or disable (false) the network
availabilityZone      |  | Availability Zone
networkDomain.id      |  | Network Domain ID
searchDomains      |  | Search Domains
scanNetwork      | off | Scan Network
networkProxy.id      |  | Network Proxy ID
applianceUrlProxyBypass      | on |  Bypass Proxy for Appliance URL 
noProxy      |  | List of ip addresses or name servers to exclude proxy traversal for. Typically locally routable servers are excluded.
visibility      | private | private or public
config      |  | Configuration object. Settings vary by type.
tenants  |  | Array of tenant account ids that are allowed access
resourcePermissions.all  |  | Pass true to allow access all groups
resourcePermissions.sites  |  | Array of groups that are allowed access

This endpoint allows creating a Network.  Only certain types of clouds support creating and deleting networks. Configuration options vary by [Network Types](#network-types).


## Update a Network

```shell
curl -XPUT "<%= curl_url %>/api/networks/1" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "network": {
    "description": "a test network",
    "config": {
      "vlanIDs": null,
      "connectedGateway": "/infra/tier-1s/51b5f3c3-cc7e-4cef-89b5-dd576e8df454",
      "subnetIpManagementType": "dhcpLocal",
      "subnetIpServerId": "/infra/dhcp-server-configs/f1137d64-8402-41a2-abd8-7347743e5f4f",
      "dhcpRange": "192.168.123.10-192.168.123.100",
      "subnetDhcpServerAddress": "192.168.123.1/24",
      "subnetDhcpLeaseTime": "86400"
    }
  }
}'
```

> The above command returns JSON structured like getting a single Network: 

### HTTP Request

`PUT <%= api_url %>/api/networks/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Network

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
displayName | | Display Name
description      |  | Description
dhcpServer      |  | DHCP Server
allowStaticOverride      |  | Allow IP Override
assignPublicIP      |  | Assign Public IP
active      |  | Activate (true) or disable (false) the network
availabilityZone      |  | Availability Zone
scanNetwork      | off | Scan Network
networkProxy.id      |  | Network Proxy ID
applianceUrlProxyBypass      | on |  Bypass Proxy for Appliance URL 
noProxy      |  | List of ip addresses or name servers to exclude proxy traversal for. Typically locally routable servers are excluded.
visibility      | private | private or public
config      |  | Configuration object. Settings vary by type.
tenants  |  | Array of tenant account ids that are allowed access
resourcePermissions.all  |  | Pass true to allow access all groups
resourcePermissions.sites  |  | Array of groups that are allowed access

This endpoint allows updating a Network.  Configuration options vary by [Network Types](#network-types).

## Delete a Network

```shell
curl -XDELETE "<%= curl_url %>/api/networks/:id" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

Will delete a Network from the system and make it no longer usable.

### HTTP Request

`DELETE <%= api_url %>/api/networks/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Network

