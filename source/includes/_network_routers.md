## Network Routers

Provides API interfaces for managing network routers within <%= application_name %>.

## Get all Network Routers

```shell
curl "<%= curl_url %>/api/networks/routers" \
  -H "Authorization: BEARER <%= curl_token %>"
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

This endpoint retrieves all network routers.

### HTTP Request

`GET <%= api_url %>/api/networks/routers`

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
curl "<%= curl_url %>/api/networks/routers/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "networkRouter": {
    "id": 99,
    "code": "nsxt.router.13.b05d6532-2742-4dbd-98f2-a62aa8a62ae0",
    "name": "dand-nsxt-t0-0425.1",
    "description": null,
    "category": "nsxt.router.13",
    "dateCreated": "2021-04-25T16:19:27Z",
    "lastUpdated": "2021-07-14T19:12:16Z",
    "routerType": "internal",
    "status": "ok",
    "enabled": true,
    "externalIp": null,
    "externalId": "b05d6532-2742-4dbd-98f2-a62aa8a62ae0",
    "providerId": "/infra/tier-0s/b05d6532-2742-4dbd-98f2-a62aa8a62ae0",
    "type": {
      "id": 5,
      "code": "nsx-t-tier0-gateway",
      "name": "NSX-T Tier-0 Gateway",
      "description": "NSX-T Tier-0 Gateway",
      "enabled": true,
      "creatable": true,
      "selectable": true,
      "hasFirewall": true,
      "hasDhcp": false,
      "hasRouting": true,
      "hasNat": true,
      "hasNetworkServer": true,
      "hasFirewallGroups": true,
      "hasSecurityGroupPriority": true,
      "optionTypes": [
        {
          "id": 1220,
          "name": "TIER0_IPSEC_LOCAL_IP",
          "description": null,
          "code": "networkRouter.nsxt.edge.tier0.route.redist.TIER0_IPSEC_LOCAL_IP",
          "fieldName": "TIER0_IPSEC_LOCAL_IP",
          "fieldLabel": "IP Sec Local IP",
          "fieldCode": "gomorpheus.label.nsxt.tier0.route.redist.TIER0_IPSEC_LOCAL_IP",
          "fieldContext": "config",
          "fieldGroup": "Route Re-distribution - Tier-0",
          "fieldClass": null,
          "fieldAddOn": null,
          "fieldComponent": null,
          "fieldInput": null,
          "placeHolder": null,
          "verifyPattern": null,
          "helpBlock": null,
          "helpBlockFieldCode": null,
          "defaultValue": null,
          "optionSource": null,
          "optionSourceType": null,
          "optionList": null,
          "type": "checkbox",
          "advanced": false,
          "required": false,
          "exportMeta": false,
          "editable": true,
          "creatable": true,
          "config": {
          },
          "displayOrder": 2030,
          "wrapperClass": null,
          "enabled": true,
          "noBlank": false,
          "dependsOnCode": null,
          "visibleOnCode": null,
          "requireOnCode": null,
          "contextualDefault": false,
          "displayValueOnDetails": null,
          "showOnCreate": true,
          "showOnEdit": true
        }
      ],
      "ruleOptionTypes": [
        {
          "id": 1186,
          "name": "profile",
          "description": null,
          "code": "networkRouter.nsxt.firewall.rule.profiles",
          "fieldName": "profile",
          "fieldLabel": "Profiles",
          "fieldCode": "gomorpheus.label.profiles",
          "fieldContext": "config",
          "fieldGroup": null,
          "fieldClass": null,
          "fieldAddOn": null,
          "fieldComponent": null,
          "fieldInput": null,
          "placeHolder": "Any",
          "verifyPattern": null,
          "helpBlock": "",
          "helpBlockFieldCode": null,
          "defaultValue": null,
          "optionSource": "nsxtFirewallRuleProfiles",
          "optionSourceType": null,
          "optionList": null,
          "type": "multiTypeahead",
          "advanced": false,
          "required": false,
          "exportMeta": false,
          "editable": true,
          "creatable": true,
          "config": {
          },
          "displayOrder": 400,
          "wrapperClass": null,
          "enabled": true,
          "noBlank": false,
          "dependsOnCode": null,
          "visibleOnCode": null,
          "requireOnCode": null,
          "contextualDefault": false,
          "displayValueOnDetails": null,
          "showOnCreate": true,
          "showOnEdit": true
        }
      ],
      "firewallGroupOptionTypes": [
        {
          "id": 1548,
          "name": "externalType",
          "description": null,
          "code": "networkRouter.nsxt.firewall.externalType",
          "fieldName": "externalType",
          "fieldLabel": "externalType",
          "fieldCode": null,
          "fieldContext": "group",
          "fieldGroup": null,
          "fieldClass": null,
          "fieldAddOn": null,
          "fieldComponent": null,
          "fieldInput": null,
          "placeHolder": null,
          "verifyPattern": null,
          "helpBlock": "",
          "helpBlockFieldCode": null,
          "defaultValue": "GatewayPolicy",
          "optionSource": null,
          "optionSourceType": null,
          "optionList": null,
          "type": "hidden",
          "advanced": false,
          "required": true,
          "exportMeta": false,
          "editable": false,
          "creatable": true,
          "config": {
          },
          "displayOrder": 0,
          "wrapperClass": null,
          "enabled": true,
          "noBlank": false,
          "dependsOnCode": null,
          "visibleOnCode": null,
          "requireOnCode": null,
          "contextualDefault": false,
          "displayValueOnDetails": false,
          "showOnCreate": true,
          "showOnEdit": true
        }
      ],
      "natOptionTypes": [
        {
          "id": 1038,
          "name": "description",
          "description": null,
          "code": "networkRouter.global.description",
          "fieldName": "description",
          "fieldLabel": "Description",
          "fieldCode": "gomorpheus.optiontype.Description",
          "fieldContext": "nat",
          "fieldGroup": null,
          "fieldClass": null,
          "fieldAddOn": null,
          "fieldComponent": null,
          "fieldInput": null,
          "placeHolder": null,
          "verifyPattern": null,
          "helpBlock": "",
          "helpBlockFieldCode": null,
          "defaultValue": null,
          "optionSource": null,
          "optionSourceType": null,
          "optionList": null,
          "type": "text",
          "advanced": false,
          "required": false,
          "exportMeta": false,
          "editable": true,
          "creatable": true,
          "config": {
          },
          "displayOrder": 10,
          "wrapperClass": null,
          "enabled": true,
          "noBlank": false,
          "dependsOnCode": null,
          "visibleOnCode": null,
          "requireOnCode": null,
          "contextualDefault": false,
          "displayValueOnDetails": null,
          "showOnCreate": null,
          "showOnEdit": null
        }
      ]
    },
    "networkServer": {
      "id": 13,
      "name": "Labs NSX-T",
      "integration": {
        "id": 14,
        "name": "Labs NSX-T",
        "enabled": true,
        "type": "nsx-t",
        "integrationType": {
          "id": 28,
          "code": "nsx-t",
          "name": "NSX-T"
        },
        "url": "https://10.32.23.7",
        "port": "22",
        "username": "admin",
        "password": "************",
        "refType": "NetworkServer",
        "refId": "13",
        "isPlugin": false,
        "config": {
        },
        "status": "error",
        "statusDate": "2021-07-15T11:48:33Z",
        "statusMessage": "nsx-t api not reachable",
        "lastSync": "2021-07-14T19:10:59Z",
        "lastSyncDuration": 108394
      }
    },
    "zone": {
      "id": 20,
      "code": "nsxt",
      "name": "QA VMware NSX-T"
    },
    "instance": null,
    "externalNetwork": null,
    "site": null,
    "interfaces": [

    ],
    "firewall": {
      "enabled": true,
      "version": null,
      "defaultPolicy": null,
      "global": null,
      "ruleGroups": [
        {
          "id": 321,
          "name": "Policy_Default_Infra",
          "description": null,
          "externalId": "Policy_Default_Infra",
          "iacId": null,
          "zone": null,
          "zonePool": null,
          "status": "available",
          "priority": 10,
          "groupLayer": "Default",
          "rules": [
            {
              "id": 1056,
              "name": "dand-nsxt-t0-0425.1",
              "code": null,
              "enabled": true,
              "groupName": "Policy_Default_Infra",
              "direction": "any",
              "ruleType": "custom",
              "policy": "accept",
              "source": [
                "ANY"
              ],
              "sourceType": "cidr",
              "destination": [
                "ANY"
              ],
              "destinationType": "instance",
              "profiles": [
                "ANY"
              ],
              "protocol": null,
              "application": null,
              "applicationType": "port",
              "portRange": null,
              "sourcePortRange": null,
              "sourceGroup": null,
              "sourceTier": null,
              "applications": [
                {
                  "id": 432,
                  "name": "ANY"
                }
              ]
            }
          ]
        }
      ]
    },
    "routes": [

    ],
    "nats": [

    ],
    "permissions": {
      "visibility": "private",
      "tenantPermissions": {
        "accounts": [
          1
        ]
      }
    }
  }
}
```

This endpoint retrieves a specific network router.

### HTTP Request

`GET <%= api_url %>/api/networks/routers/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the network router


## Create a Network Router

Use this command to create a network router.

```shell
curl -XPOST "<%= curl_url %>/api/networks/routers" \
  -H "Authorization: BEARER <%= curl_token %>" \
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

`POST <%= api_url %>/api/networks/routers`

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

<aside class="info">
  Note: when creating a router on NSX-T v3.0+ some BGP configuration settings require BGP to be disabled during initial creation. The BGP feature can be enabled in a subsequent router update API call.
</aside>

## Update a Network Router

Use this command to update an existing network router.

```shell
curl -XPUT "<%= curl_url %>/api/networks/routers/1" \
  -H "Authorization: BEARER <%= curl_token %>"
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

`PUT <%= api_url %>/api/networks/routers/:id`

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
curl -XDELETE "<%= curl_url %>/api/networks/routers/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a network router.

### HTTP Request

`DELETE <%= api_url %>/api/networks/routers/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the network router


## Get all Firewall Rules for Network Router

```shell
curl "<%= curl_url %>/api/networks/routers/1/firewall-rules" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "rules": [
    {
      "id": 1056,
      "name": "dand-nsxt-t0-0425.1",
      "code": null,
      "enabled": true,
      "priority": 10,
      "groupName": "Policy_Default_Infra",
      "direction": "any",
      "ruleType": "custom",
      "policy": "accept",
      "source": [
        "ANY"
      ],
      "sourceType": "cidr",
      "destination": [
        "ANY"
      ],
      "destinationType": "instance",
      "profiles": [
        "ANY"
      ],
      "protocol": null,
      "application": null,
      "applicationType": "port",
      "portRange": null,
      "sourcePortRange": null,
      "sourceGroup": null,
      "sourceTier": null,
      "applications": [
        {
          "id": 432,
          "name": "ANY"
        }
      ]
    }
  ]
}
```

This endpoint retrieves all firewall rules for specified network router.

### HTTP Request

`GET <%= api_url %>/api/networks/routers/:router_id/firewall-rules`


## Get a Firewall Rule for Network Router

```shell
curl "<%= curl_url %>/api/networks/routers/1/firewall-rules/1056" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "rule": {
    "id": 1056,
    "name": "dand-nsxt-t0-0425.1",
    "code": null,
    "enabled": true,
    "priority": 10,
    "groupName": "Policy_Default_Infra",
    "direction": "any",
    "ruleType": "custom",
    "policy": "accept",
    "source": [
      "ANY"
    ],
    "sourceType": "cidr",
    "destination": [
      "ANY"
    ],
    "destinationType": "instance",
    "profiles": [
      "ANY"
    ],
    "protocol": null,
    "application": null,
    "applicationType": "port",
    "portRange": null,
    "sourcePortRange": null,
    "sourceGroup": null,
    "sourceTier": null,
    "applications": [
      {
        "id": 432,
        "name": "ANY"
      }
    ]
  }
}
```

This endpoint retrieves a firewall rule.

### HTTP Request

`GET <%= api_url %>/api/networks/routers/:router_id/firewall-rules/:rule_id`

### URL Parameters

Parameter | Description
--------- | -----------
router_id | The ID of the network router
rule_id | The ID of the firewall rule


## Create a Network Router Firewall Rule

Use this command to create a firewall rule for an existing network router.

```shell
curl -XPOST "<%= curl_url %>/api/networks/routers/1/firewall-rules" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
          "rule": {
              "name": "stubbytoes-rule",
              "config": {
                  "source": null,
                  "destination": null,
                  "application": [
                      "TELNET"
                  ],
                  "profile": null
              },
              "enabled": true,
              "priority": 10,
              "direction": "egress",
              "policy": "accept"
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

`POST <%= api_url %>/api/networks/routers/:router_id/firewall-rules`

### URL Parameters

Parameter | Description
--------- | -----------
router_id | The ID of the network router

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Firewall rule name
enabled | N | Can be used to enable / disable the rule (true, false). Default is on
priority | N | Priority for rule

For a full list of available firewall rule options, see ruleOptionTypes in [Get a Specific Network Router Type](#get-a-specific-network-router-type)


## Update a Network Router Firewall Rule

Use this command to update an existing network router firewall rule.

```shell
curl -XPUT "<%= curl_url %>/api/networks/routers/1/firewall-rules" \
  -H "Authorization: BEARER <%= curl_token %>"
  -H "Content-Type: application/json" \
  -d '{
        "rule": {
            "enabled": true,
            "priority": 10,
            "name": "New Rule Name"
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

`PUT <%= api_url %>/api/networks/routers/:router_id/firewall-rules/:rule_id`

### URL Parameters

Parameter | Description
--------- | -----------
router_id | The ID of the network router
rule_id | The ID of the network router rule

### JSON Parameters

The parameters for updating a network router is type dependent. The following lists the common parameters. See [get a specific type](#get-a-specific-network-router-type)
to list available options for that network router type.

Parameter | Required | Description
--------- | -------- | -----------
name | N | Sets name of firewall rule
enabled | N | Can be used to enable / disable the network router (true, false). Default is on
priority | N | Sets priority of firewall rule


## Delete a Network Router Firewall Rule

```shell
curl -XDELETE "<%= curl_url %>/api/networks/routers/1/firewall-rules/2" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a firewall rule from a network router.

### HTTP Request

`DELETE <%= api_url %>/api/networks/routers/:router_id/firewall-rules/:rule_id`

### URL Parameters

Parameter | Description
--------- | -----------
router_id | The ID of the network router
rule_id | The ID of the rule to be deleted


## Get all Routes for Network Router

```shell
curl "<%= curl_url %>/api/networks/routers/1/routes" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "networkRoutes": [
    {
      "id": 58,
      "name": "api-test-route3",
      "code": null,
      "description": null,
      "priority": null,
      "routeType": "static",
      "source": "10.10.0.0/24",
      "sourceType": "cidr",
      "destination": "10.20.0.0",
      "destinationType": "cidr",
      "defaultRoute": false,
      "networkMtu": null,
      "externalInterface": null,
      "internalId": null,
      "externalId": "58ee0c3a-9223-4d01-a1bb-517f48e7b04e",
      "uniqueId": null,
      "providerId": "/infra/tier-0s/b05d6532-2742-4dbd-98f2-a62aa8a62ae0/static-routes/58ee0c3a-9223-4d01-a1bb-517f48e7b04e",
      "externalType": null,
      "enabled": true,
      "visible": true
    }
  ]
}
```

This endpoint retrieves all routes for specified network router.

### HTTP Request

`GET <%= api_url %>/api/networks/routers/:router_id/routes`

### URL Parameters

Parameter | Description
--------- | -----------
router_id | The ID of the network router


## Get a Route for Network Router

```shell
curl "<%= curl_url %>/api/networks/routers/1/routes/59" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "networkRoute": {
    "id": 59,
    "name": "api-test-route3",
    "code": "nsxt.router.static.route.13.99.58ee0c3a-9223-4d01-a1bb-517f48e7b04e.10.20.0.0",
    "description": null,
    "priority": null,
    "routeType": "static",
    "source": "10.10.0.0/24",
    "sourceType": "cidr",
    "destination": "10.20.0.0",
    "destinationType": "cidr",
    "defaultRoute": false,
    "networkMtu": null,
    "externalInterface": null,
    "internalId": null,
    "externalId": "58ee0c3a-9223-4d01-a1bb-517f48e7b04e.10.20.0.0",
    "uniqueId": null,
    "providerId": "/infra/tier-0s/b05d6532-2742-4dbd-98f2-a62aa8a62ae0/static-routes/58ee0c3a-9223-4d01-a1bb-517f48e7b04e",
    "externalType": null,
    "enabled": true,
    "visible": true
  }
}
```

This endpoint retrieves a network router route for specified network router.

### HTTP Request

`GET <%= api_url %>/api/networks/routers/:router_id/routes/:route_id`

### URL Parameters

Parameter | Description
--------- | -----------
router_id | The ID of the network router
route_id | The ID of the route



## Create a Network Router Route

Use this command to create a route for an existing network router.

```shell
curl -XPOST "<%= curl_url %>/api/networks/routers/1/routes" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
        "networkRoute": {
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

`POST <%= api_url %>/api/networks/routers/:router_id/routes`

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
curl -XDELETE "<%= curl_url %>/api/networks/routers/1/routes/2" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a route from a network router.

### HTTP Request

`DELETE <%= api_url %>/api/networks/routers/:router_id/routes/:route_id`

### URL Parameters

Parameter | Description
--------- | -----------
router_id | The ID of the network router
route_id | The ID of the route to be deleted


## Update Network Router Permissions

```shell
curl -XPUT "<%= curl_url %>/api/networks/routers/1/permissions" \
  -H "Authorization: BEARER <%= curl_token %>" \
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

`PUT <%= api_url %>/api/networks/routers/:id/permissions`

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
curl "<%= curl_url %>/api/network-router-types" \
  -H "Authorization: BEARER <%= curl_token %>"
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

      ],
      "natOptionTypes": [

      ],
      "ruleGroupOptionTypes": [

      ]
    }
  ]
}
```

This endpoint retrieves all network router types.

### HTTP Request

`GET <%= api_url %>/api/network-router-types`


## Get a Specific Network Router Type

```shell
curl "<%= curl_url %>/api/network-router-types/2" \
  -H "Authorization: BEARER <%= curl_token %>"
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

    ],
    "ruleGroupOptionTypes": [

    ],
    "natOptionTypes": [

    ],
    "bgpOptionTypes": [
    ]
  }
}
```

This endpoint retrieves a specific network router type. Use this API to retrieve list of available option types for a specific network router type.

### HTTP Request

`GET <%= api_url %>/api/network-router-types/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the network router type


## Get all Firewall Rule Groups for Network Router

```shell
curl "<%= curl_url %>/api/networks/routers/1/firewall-rule-groups" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "ruleGroups": [
    {
      "id": 321,
      "name": "Policy_Default_Infra",
      "description": null,
      "externalId": "Policy_Default_Infra",
      "iacId": null,
      "zone": null,
      "zonePool": null,
      "status": "available",
      "priority": 20,
      "groupLayer": "Default",
      "rules": [
        {
          "id": 1056,
          "name": "dand-nsxt-t0-0425.1",
          "code": null,
          "enabled": true,
          "groupName": "Policy_Default_Infra",
          "direction": "any",
          "ruleType": "custom",
          "policy": "accept",
          "source": [
            "ANY"
          ],
          "sourceType": "cidr",
          "destination": [
            "ANY"
          ],
          "destinationType": "instance",
          "profiles": [
            "ANY"
          ],
          "protocol": null,
          "application": null,
          "applicationType": "port",
          "portRange": null,
          "sourcePortRange": null,
          "sourceGroup": null,
          "sourceTier": null,
          "applications": [
            {
              "id": 432,
              "name": "ANY"
            }
          ]
        }
      ]
    }
  ]
}
```

This endpoint retrieves all firewall rule groups for specified network router.

### HTTP Request

`GET <%= api_url %>/api/networks/routers/:router_id/firewall-rule-groups`

### URL Parameters

Parameter | Description
--------- | -----------
router_id | The ID of the network router


## Get a Firewall Rule Group for Network Router

```shell
curl "<%= curl_url %>/api/networks/routers/1/firewall-rule-groups/488" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "ruleGroup": {
    "id": 488,
    "name": "Test Group",
    "description": "foo2",
    "externalId": "c85ab668-9de2-4e6b-a460-6a376f61e0f5",
    "iacId": null,
    "zone": null,
    "zonePool": null,
    "status": "available",
    "priority": 10,
    "groupLayer": "LocalGatewayRules",
    "rules": [
      {
        "id": 1444,
        "name": "api-test-rule-2",
        "code": null,
        "enabled": true,
        "groupName": "Test Group",
        "direction": "any",
        "ruleType": "custom",
        "policy": "accept",
        "source": [
          "ANY"
        ],
        "sourceType": "cidr",
        "destination": [
          "ANY"
        ],
        "destinationType": "instance",
        "profiles": [
          "ANY"
        ],
        "protocol": null,
        "application": null,
        "applicationType": "port",
        "portRange": null,
        "sourcePortRange": null,
        "sourceGroup": null,
        "sourceTier": null,
        "applications": [
          {
            "id": 466,
            "name": "ANY"
          }
        ]
      }
    ]
  }
}
```

This endpoint retrieves a firewall rule group for specified network router.

### HTTP Request

`GET <%= api_url %>/api/networks/routers/:router_id/firewall-rule-groups/:group_id`

### URL Parameters

Parameter | Description
--------- | -----------
router_id | The ID of the network router
group_id | The ID of the firewall rule group


## Create a Network Router Firewall Rule Group

Use this command to create a firewall rule group for an existing network router.

```shell
curl -XPOST "<%= curl_url %>/api/networks/routers/1/firewall-rule-groups" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
        "ruleGroup": {
          "name": "Test Group",
          "description": "Group description",
          "priority": 100,
          "externalType": "GatewayPolicy",
          "groupLayer": "LocalGatewayRules"
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

`POST <%= api_url %>/api/networks/routers/:router_id/firewall-rule-groups`

### URL Parameters

Parameter | Description
--------- | -----------
router_id | The ID of the network router

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Firewall rule group name
description | N | Firewall rule group description
priority | N | Firewall rule group priority
externalType | Y | Platform / vendor specific type
groupLayer | Y | Platform / vendor specific category


## Update Network Router Firewall Rule Group

```shell
curl -XPUT "<%= curl_url %>/api/networks/routers/100/firewall-rule-groups/477" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
        "ruleGroup": {
          "name": "Test Group",
          "description": "Group description",
          "priority": 100
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

`PUT <%= api_url %>/api/networks/routers/:id/firewall-rule-groups/:group_id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the network router
group_id | The ID of the firewall rule group

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | N | Sets name of firewall rule group
description | N | Sets description of firewall rule group
priority | N | Sets priority of the firewall rule group


## Delete a Network Router Firewall Rule Group

```shell
curl -XDELETE "<%= curl_url %>/api/networks/routers/100/firewall-rule-groups/477" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a firewall rule group from a network router.

### HTTP Request

`DELETE <%= api_url %>/api/networks/routers/:router_id/firewall-rule-groups/:group_id`

### URL Parameters

Parameter | Description
--------- | -----------
router_id | The ID of the network router
group_id | The ID of the firewall rule group to be deleted


## Get all Network Router NATs for Network Router

```shell
curl "<%= curl_url %>/api/networks/routers/99/nats" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "networkRouterNATs": [
    {
      "id": 11,
      "name": "api-test-nat",
      "description": "description",
      "enabled": true,
      "sourceNetwork": "1.1.1.1",
      "destinationNetwork": null,
      "translatedNetwork": "2.2.2.2",
      "sourcePorts": null,
      "destinationPorts": null,
      "translatedPorts": null,
      "priority": 100,
      "protocol": null,
      "matchIpv6DestinationPrefix": null,
      "translatedIpv4SourcePrefix": null,
      "refType": null,
      "refId": null,
      "syncSource": "external",
      "internalId": null,
      "externalId": "15efe516-af3a-4e37-af7b-dff5a62c6faa",
      "providerId": "/infra/tier-0s/b05d6532-2742-4dbd-98f2-a62aa8a62ae0/nat/USER/nat-rules/15efe516-af3a-4e37-af7b-dff5a62c6faa",
      "dateCreated": "2021-07-20T12:54:46Z",
      "lastUpdated": "2021-07-20T12:56:11Z"
    }
  ]
}
```

This endpoint retrieves all NATs for specified network router.

### HTTP Request

`GET <%= api_url %>/api/networks/routers/:router_id/nats`

### URL Parameters

Parameter | Description
--------- | -----------
router_id | The ID of the network router


## Get a Network Router NAT

```shell
curl "<%= curl_url %>/api/networks/routers/1/nats/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "networkRouterNAT": {
    "id": 11,
    "name": "api-test-nat",
    "description": "description",
    "enabled": true,
    "sourceNetwork": "1.1.1.1",
    "destinationNetwork": null,
    "translatedNetwork": "2.2.2.2",
    "sourcePorts": null,
    "destinationPorts": null,
    "translatedPorts": null,
    "priority": 100,
    "protocol": null,
    "matchIpv6DestinationPrefix": null,
    "translatedIpv4SourcePrefix": null,
    "refType": null,
    "refId": null,
    "syncSource": "external",
    "internalId": null,
    "externalId": "15efe516-af3a-4e37-af7b-dff5a62c6faa",
    "providerId": "/infra/tier-0s/b05d6532-2742-4dbd-98f2-a62aa8a62ae0/nat/USER/nat-rules/15efe516-af3a-4e37-af7b-dff5a62c6faa",
    "dateCreated": "2021-07-20T12:54:46Z",
    "lastUpdated": "2021-07-20T12:56:11Z"
  }
}
```

This endpoint retrieves a network router NAT for specified network router.

### HTTP Request

`GET <%= api_url %>/api/networks/routers/:router_id/nats/:nat_id`

### URL Parameters

Parameter | Description
--------- | -----------
router_id | The ID of the network router
nat_id | The ID of the NAT


## Create a Network Router NAT

Use this command to create a NAT for an existing network router.

```shell
curl -XPOST "<%= curl_url %>/api/networks/routers/1/nats" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
        "networkRouterNAT": {
          "name": "Name of NAT",
          "description": "Description of NAT",
          "enabled": "on",
          "config": {
            "action": "SNAT",
            "service": "/infra/services/TELNET",
            "firewall": "MATCH_INTERNAL_ADDRESS",
            "scope": null,
            "logging": "off"
         },
         "sourceNetwork": "1.1.1.1",
         "destinationNetwork": "1.2.3.4",
         "translatedNetwork": "2.2.2.2",
         "translatedPorts": "2222",
         "priority": 100
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

`POST <%= api_url %>/api/networks/routers/:router_id/nats`

### URL Parameters

Parameter | Description
--------- | -----------
router_id | The ID of the network router

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | Y | NAT name

For a full list of available NAT options, see natOptionTypes in [Get a Specific Network Router Type](#get-a-specific-network-router-type)


## Update Network Router NAT

```shell
curl -XPUT "<%= curl_url %>/api/networks/routers/100/nats/477" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
        "networkRouterNAT": {
          "name": "Test NAT",
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

`PUT <%= api_url %>/api/networks/routers/:id/nats/:nat_id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the network router
nat_id | The ID of the network router NAT

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | N | Sets name of NAT

For a full list of available NAT options, see natOptionTypes in [Get a Specific Network Router Type](#get-a-specific-network-router-type)


## Delete a Network Router NAT

```shell
curl -XDELETE "<%= curl_url %>/api/networks/routers/100/nats/477" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a NAT from a network router.

### HTTP Request

`DELETE <%= api_url %>/api/networks/routers/:router_id/nats/:nat_id`

### URL Parameters

Parameter | Description
--------- | -----------
router_id | The ID of the network router
nat_id | The ID of the NAT to be deleted


## Get all BGP Neighbors for Network Router

```shell
curl "<%= curl_url %>/api/networks/routers/99/bgp-neighbors" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "networkRouterBgpNeighbors": [
    {
      "id": 15,
      "ipAddress": "172.16.2.22",
      "forwardingAddress": null,
      "protocolAddress": null,
      "remoteAs": "12345",
      "weight": 60,
      "keepAlive": 60,
      "holdDown": 180,
      "password": null,
      "routeFilteringType": "IPV4",
      "routeFilteringIn": "prefixlist-out-default",
      "routeFilteringOut": "prefixlist-out-default",
      "bfdEnabled": false,
      "bfdInterval": 1000,
      "bfdMultiple": 3,
      "allowAsIn": false,
      "hopLimit": 1,
      "restartMode": "HELPER_ONLY",
      "providerId": "/infra/tier-0s/b05d6532-2742-4dbd-98f2-a62aa8a62ae0/locale-services/default/bgp/neighbors/d20fc560-35e3-11ec-b68f-c788e632ae30",
      "syncSource": "external",
      "internalId": null,
      "externalId": "d20fc560-35e3-11ec-b68f-c788e632ae30",
      "refType": null,
      "refId": null,
      "config": {
        "sourceAddresses": [
          "12.12.22.22",
          "10.22.12.2"
        ]
      },
      "dateCreated": "2021-10-25T22:37:54Z",
      "lastUpdated": "2021-10-27T15:08:12Z"
    }
  ]
}
```

This endpoint retrieves all BGP Neighbors for specified network router.

### HTTP Request

`GET <%= api_url %>/api/networks/routers/:router_id/bgp-neighbors`

### URL Parameters

Parameter | Description
--------- | -----------
router_id | The ID of the network router


## Get a Network Router BGP Neighbor

```shell
curl "<%= curl_url %>/api/networks/routers/1/bgp-neighbors/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "networkRouterBgpNeighbor": {
    "id": 15,
    "ipAddress": "172.16.2.22",
    "forwardingAddress": null,
    "protocolAddress": null,
    "remoteAs": "21345",
    "weight": 60,
    "keepAlive": 60,
    "holdDown": 180,
    "password": null,
    "routeFilteringType": "IPV4",
    "routeFilteringIn": "prefixlist-out-default",
    "routeFilteringOut": "prefixlist-out-default",
    "bfdEnabled": false,
    "bfdInterval": 1000,
    "bfdMultiple": 3,
    "allowAsIn": false,
    "hopLimit": 1,
    "restartMode": "HELPER_ONLY",
    "providerId": "/infra/tier-0s/b05d6532-2742-4dbd-98f2-a62aa8a62ae0/locale-services/default/bgp/neighbors/d20fc560-35e3-11ec-b68f-c788e632ae30",
    "syncSource": "external",
    "internalId": null,
    "externalId": "d20fc560-35e3-11ec-b68f-c788e632ae30",
    "refType": null,
    "refId": null,
    "config": {
      "sourceAddresses": [
        "12.12.22.22",
        "10.22.12.2"
      ]
    },
    "dateCreated": "2021-10-25T22:37:54Z",
    "lastUpdated": "2021-10-27T15:08:12Z"
  }
}
```

This endpoint retrieves a network router BGP Neighbor for specified network router.

### HTTP Request

`GET <%= api_url %>/api/networks/routers/:router_id/bgp-neighbors/:bgp_neighbor_id`

### URL Parameters

Parameter | Description
--------- | -----------
router_id | The ID of the network router
bgp_neighbor_id | The ID of the BGP neighbor


## Create a Network Router BGP Neighbor

Use this command to create a BGP Neighbor for an existing network router.

```shell
curl -XPOST "<%= curl_url %>/api/networks/routers/1/bgp-neighbors" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
        "networkRouterBgpNeighbor": {
          "ipAddress": "172.16.2.23",
          "config": {
              "sourceAddresses": [
                  "10.22.12.2"
              ]
          },
          "remoteAs": "21346",
          "keepAlive": 60,
          "holdDown": 180,
          "routeFilteringType": "IPV4",
          "routeFilteringIn": "prefixlist-out-default",
          "routeFilteringOut": "prefixlist-out-default",
          "bfdEnabled": "off",
          "bfdInterval": 1000,
          "bfdMultiple": 3,
          "allowAsIn": "off",
          "hopLimit": 1,
          "restartMode": "HELPER_ONLY"
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

`POST <%= api_url %>/api/networks/routers/:router_id/bgp-neighbors`

### URL Parameters

Parameter | Description
--------- | -----------
router_id | The ID of the network router

For a full list of available options, see bgpOptionTypes in [Get a Specific Network Router Type](#get-a-specific-network-router-type)


## Update Network Router BGP Neighbor

```shell
curl -XPUT "<%= curl_url %>/api/networks/routers/1/bgp-neighbors/1" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
        "networkRouterBgpNeighbor": {
          "ipAddress": "172.16.0.1",
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

`PUT <%= api_url %>/api/networks/routers/:id/bgp-neighbors/:bgp_neighbor_id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the network router
bgp_neighbor_id | The ID of the network router BGP neighbor

For a full list of available BGP Neighbor options, see bgpOptionTypes in [Get a Specific Network Router Type](#get-a-specific-network-router-type)


## Delete a Network Router BGP Neighbor

```shell
curl -XDELETE "<%= curl_url %>/api/networks/routers/100/bgp-neighbors/477" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a BGP Neighbor from a network router.

### HTTP Request

`DELETE <%= api_url %>/api/networks/routers/:router_id/bgp-neighbors/:bgp_neighbor_id`

### URL Parameters

Parameter | Description
--------- | -----------
router_id | The ID of the network router
bgp_neighbor_id | The ID of the BGP Neighbor to be deleted
