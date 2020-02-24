## Network Routers

Provides API interfaces for managing network routers within Morpheus

## Get All Network Routers

```shell
curl "$MORPHEUS_API_URL/api/networks/routers" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "networkRouters": [
    {
      "id": 32,
      "code": "openstack.router.10.93126dd8-023b-44f5-8100-be2980439419",
      "name": "dand-0218",
      "description": null,
      "category": "openstack.router.10",
      "dateCreated": "2020-02-19T03:08:34+0000",
      "lastUpdated": "2020-02-19T04:13:47+0000",
      "routerType": "neutron",
      "status": "ok",
      "enabled": true,
      "externalIp": null,
      "externalId": "93126dd8-023b-44f5-8100-be2980439419",
      "providerId": null,
      "type": {
        "id": 3,
        "code": "huaweiNeutronRouter",
        "name": "Huawei Router",
        "description": "Neutron Router",
        "enabled": true,
        "creatable": true,
        "selectable": true,
        "hasFirewall": false,
        "hasDhcp": false,
        "hasRouting": false,
        "hasNetworkServer": false,
        "optionTypes": [
        ],
        "ruleOptionTypes": [

        ]
      },
      "networkServer": null,
      "zone": {
        "id": 10,
        "code": "huawei",
        "name": "huawei"
      },
      "instance": null,
      "externalNetwork": {
        "id": 76,
        "code": "openstack.network.10.0a2228f2-7f8a-45f1-8e09-9039e1d09975",
        "name": "admin_external_net"
      },
      "site": null,
      "interfaces": [
        {
          "id": 202,
          "name": "93126dd8-023b-44f5-8100-be2980439419",
          "code": null,
          "interfaceType": null,
          "networkPosition": null,
          "ipAddress": "10.1.0.1",
          "cidr": "10.0.0.0/24",
          "externalLink": null,
          "enabled": true,
          "network": {
            "id": 97,
            "name": "1666113f-e399-44a5-8559-20bee838b83a",
            "code": "openstack.network.10.815f77ba-e5fa-410e-b633-17bb620dd99b"
          }
        }
      ],
      "config": {
        "cidr": "172.16.0.0/24"
      }    
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

This endpoint retrieves all network routers.

### HTTP Request

`GET https://api.gomorpheus.com/api/networks/routers`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Restricts query to only load network routers layouts which contain the phrase specified in name or description


## Get a Specific Network Router

```shell
curl "$MORPHEUS_API_URL/api/networks/routers/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "networkRouter": {
    "id": 32,
    "code": "openstack.router.10.93126dd8-023b-44f5-8100-be2980439419",
    "name": "stubbytoes-router",
    "description": null,
    "category": "openstack.router.10",
    "dateCreated": "2020-02-19T03:08:34+0000",
    "lastUpdated": "2020-02-19T04:13:47+0000",
    "routerType": "neutron",
    "status": "ok",
    "enabled": true,
    "externalIp": null,
    "externalId": "93126dd8-023b-44f5-8100-be2980439419",
    "providerId": null,
    "type": {
      "id": 3,
      "code": "huaweiNeutronRouter",
      "name": "Huawei Router",
      "description": "Neutron Router",
      "enabled": true,
      "creatable": true,
      "selectable": true,
      "hasFirewall": false,
      "hasDhcp": false,
      "hasRouting": false,
      "hasNetworkServer": false,
      "optionTypes": [       
        {
          "id": 1022,
          "name": "cidr",
          "description": null,
          "code": "networkRouter.opentelekom.cidr",
          "fieldName": "cidr",
          "fieldLabel": "cidr",
          "fieldContext": "config",
          "fieldGroup": null,
          "fieldClass": null,
          "fieldAddOn": null,
          "fieldComponent": null,
          "fieldInput": null,
          "placeHolder": "x.x.x.x/x",
          "helpBlock": "Recommended CIDR Block: 10.0.0.0/8-24, 172.16.0.0/12-24, and 192.168.0.0/16-24",
          "defaultValue": null,
          "optionSource": null,
          "optionList": null,
          "type": "text",
          "advanced": false,
          "required": true,
          "editable": true,
          "creatable": true,
          "config": {
          },
          "displayOrder": 17,
          "wrapperClass": null,
          "enabled": true,
          "noBlank": false,
          "dependsOnCode": null,
          "contextualDefault": false
        }
      ],
      "ruleOptionTypes": [

      ]
    },
    "networkServer": null,
    "zone": {
      "id": 10,
      "code": "huawei",
      "name": "huawei"
    },
    "instance": null,
    "externalNetwork": {
      "id": 76,
      "code": "openstack.network.10.0a2228f2-7f8a-45f1-8e09-9039e1d09975",
      "name": "admin_external_net"
    },
    "site": null,
    "interfaces": [
      {
        "id": 204,
        "name": null,
        "code": null,
        "interfaceType": null,
        "networkPosition": null,
        "ipAddress": null,
        "cidr": null,
        "externalLink": null,
        "enabled": true,
        "network": {
          "id": 76,
          "name": "admin_external_net",
          "code": "openstack.network.10.0a2228f2-7f8a-45f1-8e09-9039e1d09975"
        }
      }
    ],
    "config": {
      "cidr": "172.16.0.0/24"
    }
  }
}
```

This endpoint retrieves a specific network router.

### HTTP Request

`GET https://api.gomorpheus.com/api/networks/routers/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the network router


## Create a Network Router

Use this command to create a network router.

```shell
curl -XPOST "$MORPHEUS_API_URL/api/networks/routers" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
          "networkRouter": {
              "type": {
                  "id": 9
              },
              "enabled": true,
              "site": {
                  "id": "shared"
              },
              "networkServer": {
                  "id": 8
              },
              "name": "dand-0217",
              "description": null,
              "hostname": "dand",
              "tenantName": null,
              "sizeId": "compact",
              "datastoreId": "datastore-58601",
              "poolId": 9,
              "folderId": "group-v58681",
              "managementNetwork": {
                  "id": 86
              },
              "managementIp": "172.16.30.10",
              "externalNetwork": null,
              "internalNetwork": null,
              "sshUsername": "stubbytoes",
              "sshPassword": "supersecret"
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

`POST https://api.gomorpheus.com/api/networks/routers`

### JSON Parameters

The parameters for creating a network router is type dependent. The following lists the common parameters. See [get a specific type](#get-a-specific-network-router-type)
to list available options for that network router type.

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Network router name
type.id | Y | Network router type ID
site.id | Y | Group ID or shared
enabled | N | Can be used to enable / disable the network router (true, false). Default is on
zone.id | N | Required when type does not support a network server
networkServer.id | N | Required when type supports a network server


## Update a Network Router

Use this command to update an existing network router.

```shell
curl -XPUT "$MORPHEUS_API_URL/api/networks/routers/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
  -H "Content-Type: application/json" \
  -d '{
        "networkRouter": {
            "enabled": true,
            "externalNetwork": {
                "id": 76
            }
            "managementNetwork": {
                "id": 86
            },
            "managementIp": "172.16.30.10",
            "sshPassword": "supersecret"
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

`PUT https://api.gomorpheus.com/api/networks/routers/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the network router

### JSON Parameters

The parameters for updating a network router is type dependent. The following lists the common parameters. See [get a specific type](#get-a-specific-network-router-type)
to list available options for that network router type.

Parameter | Required | Description
--------- | -------- | -----------
enabled | N | Can be used to enable / disable the network router (true, false). Default is on
 

## Delete a Network Router

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/networks/routers/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a network router 

### HTTP Request

`DELETE https://api.gomorpheus.com/api/networks/routers/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the network router


## Create a Network Router Firewall Rule

Use this command to create a firewall rule for an existing network router.

```shell
curl -XPOST "$MORPHEUS_API_URL/api/networks/routers/1/firewall-rules" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
          "rule": {
              "name": "stubbytoes-rule",
              "direction": "ingress",
              "policy": "accept",
              "sourceType": "any",
              "source": "99.99.99.99",
              "destinationType": "any",
              "destination": "any",
              "ruleType": [
                  963,
                  972
              ],
              "protocol": "tcp",
              "portRange": "80"
          }
      }'
```

> The above command returns JSON Structured like this:

```json
{
  "id": 800,
  "success": true
}
```

### HTTP Request

`POST https://api.gomorpheus.com/api/networks/routers/:router_id/firewall-rules`

### URL Parameters

Parameter | Description
--------- | -----------
router_id | The ID of the network router

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Firewall rule name
direction | Y | Direction of traffic for rule: ingress, egress
policy | Y | Rule policy: accept, deny
sourceType | Y | Source type
source | Y | Source address or range
destinationType | Y | Destination type
destination | Y | Destination address or range
ruleType | Y | Array of rule type IDs
protocol | N | Protocol: tcp, udp, icmp
portRange | N | Port range


## Delete a Network Router Firewall Rule

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/networks/routers/1/firewall-rules/2" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a firewall rule from a network router 

### HTTP Request

`DELETE https://api.gomorpheus.com/api/networks/routers/:router_id/firewall-rules/:rule_id`

### URL Parameters

Parameter | Description
--------- | -----------
router_id | The ID of the network router
rule_id | The ID of the rule to be deleted


## Create a Network Router Route

Use this command to create a route for an existing network router.

```shell
curl -XPOST "$MORPHEUS_API_URL/api/networks/routers/1/routes" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
        "route": {
          "name": "stubbytoes-route",
          "description": "my description",
          "enabled": true,
          "defaultRoute": false,
          "source": "99.99.99.99",
          "destination": "88.88.88.88",
          "networkMtu": "65535"
        }
      }'
```

> The above command returns JSON Structured like this:

```json
{
  "id": 43,
  "success": true
}
```

### HTTP Request

`POST https://api.gomorpheus.com/api/networks/routers/:router_id/routes`

### URL Parameters

Parameter | Description
--------- | -----------
router_id | The ID of the network router

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | N | Route name
description | N | Route description
enabled | N | Can be used to enable / disable the route (true, false). Default is off
defaultRoute | N | Can be used to set as default route (true, false). Default is off
source | Y | Source address or range
destination | Y | Destination address or range
networkMtu | Y | MTU


## Delete a Network Router Route

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/networks/routers/1/routes/2" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a route from a network router 

### HTTP Request

`DELETE https://api.gomorpheus.com/api/networks/routers/:router_id/routes/:route_id`

### URL Parameters

Parameter | Description
--------- | -----------
router_id | The ID of the network router
route_id | The ID of the route to be deleted


## Update Network Router Permissions

```shell
curl -XPUT "$MORPHEUS_API_URL/api/networks/routers/1/permissions" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
        "permissions": {
          "visibility": "public",
          "tenantPermissions": {
            "accounts": [
              1,
              2,
              3
            ]
          }
        }
      }' 
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/networks/routers/:id/permissions`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the network router

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
permissions.visibility | N | Sets visibility: public, private
permissions.tenantPermissions.account | N | Array of tenant account IDs


## Get all Network Router Types

```shell
curl "$MORPHEUS_API_URL/api/network-router-types" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "networkRouterTypes": [
    {
      "id": 2,
      "code": "opentelekomNeutronRouter",
      "name": "Open Telekom Router",
      "description": "Neutron Router",
      "enabled": true,
      "creatable": true,
      "selectable": true,
      "hasFirewall": false,
      "hasDhcp": false,
      "hasRouting": false,
      "hasNetworkServer": false,
      "optionTypes": [        
        {
          "id": 471,
          "name": "networkSubnet",
          "description": null,
          "code": "networkRouter.neutron.internalSubnet",
          "fieldName": "interfaces.networkSubnet.id",
          "fieldLabel": "Internal Subnet",
          "fieldContext": "domain",
          "fieldGroup": null,
          "fieldClass": null,
          "fieldAddOn": null,
          "fieldComponent": null,
          "fieldInput": "ipAddress",
          "placeHolder": null,
          "helpBlock": "",
          "defaultValue": null,
          "optionSource": "openstackInternalSubnets",
          "optionList": null,
          "type": "multiSelect",
          "advanced": false,
          "required": true,
          "editable": true,
          "creatable": true,
          "config": {
          },
          "displayOrder": 120,
          "wrapperClass": null,
          "enabled": true,
          "noBlank": false,
          "dependsOnCode": "router.zone.id",
          "contextualDefault": false
        }
      ],
      "ruleOptionTypes": [

      ]
    }
  ]
}
```

This endpoint retrieves all network router types.

### HTTP Request

`GET https://api.gomorpheus.com/api/network-router-types`


## Get a Specific Network Router Type

```shell
curl "$MORPHEUS_API_URL/api/network-router-types/2" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "networkRouterType": {
    "id": 2,
    "code": "opentelekomNeutronRouter",
    "name": "Open Telekom Router",
    "description": "Neutron Router",
    "enabled": true,
    "creatable": true,
    "selectable": true,
    "hasFirewall": false,
    "hasDhcp": false,
    "hasRouting": false,
    "hasNetworkServer": false,
    "optionTypes": [      
      {
        "id": 1023,
        "name": "enableSnat",
        "description": null,
        "code": "networkRouter.opentelekom.enableSnat",
        "fieldName": "enableSnat",
        "fieldLabel": "Enable SNAT",
        "fieldContext": "config",
        "fieldGroup": null,
        "fieldClass": null,
        "fieldAddOn": null,
        "fieldComponent": null,
        "fieldInput": null,
        "placeHolder": null,
        "helpBlock": "",
        "defaultValue": null,
        "optionSource": "yesNo",
        "optionList": null,
        "type": "select",
        "advanced": false,
        "required": true,
        "editable": false,
        "creatable": true,
        "config": {
        },
        "displayOrder": 18,
        "wrapperClass": null,
        "enabled": true,
        "noBlank": false,
        "dependsOnCode": null,
        "contextualDefault": false
      }
    ],
    "ruleOptionTypes": [

    ]
  }
}
```

This endpoint retrieves a specific network router type. Use this API to retrieve list of available option types for a specific network router type.

### HTTP Request

`GET https://api.gomorpheus.com/api/network-router-types/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the network router type