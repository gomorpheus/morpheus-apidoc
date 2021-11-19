## Network Firewalls

Provides API interfaces for managing Network Firewalls for a Network Service within <%= application_name %>.

## Get all Network Firewall Rules for Network Server

```shell
curl "<%= curl_url %>/api/networks/servers/1/firewall-rules" \
-H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "rules": [
    {
      "id": 1,
      "direction": "ingress",
      "sourceType": "cidr",
      "destinationType": "instance",
      "name": "stubby-toes-rule-1",
      "policy": "accept",
      "priority": 0,
      "enabled": true,
      "ruleGroup": {
        "id": 1,
        "name": "stubby-toes-group"
      },
      "groupName": "stubby-toes-group",
      "config": {

      },
      "sources": [
        {
          "id": "/infra/domains/default/groups/DB",
          "name": "DB"
        },
        {
          "id": "/infra/domains/default/groups/stubby-toes-group",
          "name": "stubby-toes-group"
        }
      ],
      "destinations": [
        {
          "id": "/infra/domains/default/groups/stubby-toes-group",
          "name": "stubby-toes-group"
        },
        {
          "id": "/infra/domains/default/groups/DB",
          "name": "DB"
        }
      ],
      "applications": [
        {
          "id": "/infra/services/ICMP-ALL",
          "name": "ICMP-ALL"
        }
      ],
      "scopes": [
        {
          "id": "/infra/domains/default/groups/DB",
          "name": "DB"
        },
        {
          "id": "/infra/domains/default/groups/stubby-toes-group",
          "name": "stubby-toes-group"
        }
      ],
      "profiles": [
        {
          "id": "ANY",
          "name": "ANY"
        }
      ],
      "appliedTargets": [

      ]
    }
  ]
}
```

This endpoint retrieves all Network Firewall Rules for a specified Network Service.

### HTTP Request

`GET <%= api_url %>/api/networks/servers/:id/firewall-rules`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Restricts query to only load network firewall rules that contain the phrase specified in name or description


## Get a Specific Network Firewall Rule

```shell
curl "<%= curl_url %>/api/networks/servers/1/firewall-rules/1" \
-H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "rule": {
    "id": 1,
    "direction": "ingress",
    "sourceType": "cidr",
    "destinationType": "instance",
    "name": "stubby-toes-rule-1",
    "policy": "accept",
    "priority": 0,
    "enabled": true,
    "ruleGroup": {
      "id": 1,
      "name": "stubby-toes-group"
    },
    "groupName": "stubby-toes-group",
    "config": {

    },
    "sources": [
      {
        "id": "/infra/domains/default/groups/DB",
        "name": "DB"
      },
      {
        "id": "/infra/domains/default/groups/stubby-toes-group",
        "name": "stubby-toes-group"
      }
    ],
    "destinations": [
      {
        "id": "/infra/domains/default/groups/stubby-toes-group",
        "name": "stubby-toes-group"
      },
      {
        "id": "/infra/domains/default/groups/DB",
        "name": "DB"
      }
    ],
    "applications": [
      {
        "id": "/infra/services/ICMP-ALL",
        "name": "ICMP-ALL"
      }
    ],
    "scopes": [
      {
        "id": "/infra/domains/default/groups/DB",
        "name": "DB"
      },
      {
        "id": "/infra/domains/default/groups/stubby-toes-group",
        "name": "stubby-toes-group"
      }
    ],
    "profiles": [
      {
        "id": "ANY",
        "name": "ANY"
      }
    ],
    "appliedTargets": [

    ]
  }
}
```

This endpoint retrieves a specific network firewall rule.

### HTTP Request

`GET <%= api_url %>/api/networks/servers/:serverId/firewall-rules/:ruleId`

### URL Parameters

Parameter | Description
--------- | -----------
serverId | ID of the network server
ruleId | ID of the network firewall rule


## Create a Network Firewall Rule

Use this command to create a network firewall rule.

```shell
curl -XPOST "<%= curl_url %>/api/networks/servers/1/firewall-rules" \
-H "Authorization: BEARER <%= curl_token %>" \
-H "Content-Type: application/json" \
-d '{
  "rule": {
    "ruleGroup": {
      "id": 1032
    },
    "name": "stubby-toes-rule",
    "description": null,
    "enabled": true,
    "priority": null,
    "direction": "ingress",
    "sources": {
      "id": [
        "/infra/domains/default/groups/stubby-toes-group"
      ]
    },
    "destinations": {
      "id": [
        "/infra/domains/default/groups/stubby-toes-group"
      ]
    },
    "config": {
      "application": [
        "HTTP"
      ],
      "profile": [
        "HTTP"
      ]
    },
    "scopes": {
      "id": [
        "/infra/domains/default/groups/stubby-toes-group"
      ]
    },
    "policy": "accept"
  }
}'
```

> The above command returns JSON Structured like this:

```json
{
  "id": 1,
  "success": true
}
```

### HTTP Request

`POST <%= api_url %>/api/networks/servers/:serverId/firewall-rules`

### JSON Parameters

The parameters for creating a network firewall rule is type dependent. The following lists the common parameters. See [get a specific type](#get-a-specific-network-type)
to list available options for the network server type.

Parameter | Required | Description
--------- | -------- | -----------
ruleGroup.id | * | Firewall rule group for rule (*applicable to select network servers).
name | Y | Network firewall rule name
description | N | Network firewall rule description
priority | N | Network firewall rule priority
enabled | N | Use this to set enabled state


## Update a Network Firewall Rule

Use this command to update an existing network firewall rule.

```shell
curl -XPUT "<%= curl_url %>/api/networks/servers/1/firewall-rules/1" \
-H "Authorization: BEARER <%= curl_token %>"
-H "Content-Type: application/json" \
-d '{
  "rule": {
    "name": "name",
    "description": "description",
    "enabled": false,
    "priority": 10
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

`PUT <%= api_url %>/api/networks/servers/:serverId/firewall-rules/:ruleId`

### URL Parameters

Parameter | Description
--------- | -----------
serverId | ID of the network server
ruleId | ID of the network firewall rule

### JSON Parameters

The parameters for update a network firewall rule is type dependent. The following lists the common parameters. See [get a specific type](#get-a-specific-network-type)
to list available options for the network server type.

Parameter | Description
--------- | -----------
name | Network firewall rule name
description | Network firewall rule description
priority | Network firewall rule priority
enabled | Use this to set enabled state


## Delete a Network firewall rule

```shell
curl -XDELETE "<%= curl_url %>/api/networks/servers/1/firewall-rules/1" \
-H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
"success": true
}
```

Will delete a network firewall rule.

### HTTP Request

`DELETE <%= api_url %>/api/networks/servers/:serverId/firewall-rules/:ruleId`

### URL Parameters

Parameter | Description
--------- | -----------
serverId | ID of the network server
ruleId | ID of the network firewall rule


## Get all Network Firewall Rule Groups for Network Server

```shell
curl "<%= curl_url %>/api/networks/servers/1/firewall-rule-groups" \
-H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "ruleGroups": [
    {
      "id": 1,
      "name": "stubby-toes-group",
      "description": null,
      "priority": 0,
      "groupLayer": "Infrastructure",
      "rules": [
        {
          "id": 1,
          "direction": "ingress",
          "sourceType": "cidr",
          "destinationType": "instance",
          "name": "stubby-toes-rule-1",
          "policy": "accept",
          "priority": 0,
          "enabled": true,
          "ruleGroup": {
            "id": 1,
            "name": "stubby-toes-group"
          },
          "groupName": "stubby-toes-group",
          "config": {

          },
          "sources": [
            {
              "id": "/infra/domains/default/groups/DB",
              "name": "DB"
            },
            {
              "id": "/infra/domains/default/groups/stubby-toes-group",
              "name": "stubby-toes-group"
            }
          ],
          "destinations": [
            {
              "id": "/infra/domains/default/groups/stubby-toes-group",
              "name": "stubby-toes-group"
            },
            {
              "id": "/infra/domains/default/groups/DB",
              "name": "DB"
            }
          ],
          "applications": [
            {
              "id": "/infra/services/ICMP-ALL",
              "name": "ICMP-ALL"
            }
          ],
          "scopes": [
            {
              "id": "/infra/domains/default/groups/DB",
              "name": "DB"
            },
            {
              "id": "/infra/domains/default/groups/stubby-toes-group",
              "name": "stubby-toes-group"
            }
          ],
          "profiles": [
            {
              "id": "ANY",
              "name": "ANY"
            }
          ],
          "appliedTargets": [

          ]
        }
      ]
    }
  ]
}
```

This endpoint retrieves all Network Firewall Rule Groups for a specified Network Service.

### HTTP Request

`GET <%= api_url %>/api/networks/servers/:id/firewall-rule-groups`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Restricts query to only load network firewall rule groups that contain the phrase specified in name or description


## Get a Specific Network Firewall Rule Group

```shell
curl "<%= curl_url %>/api/networks/servers/1/firewall-rule-groups/1" \
-H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "name": "stubby-toes-group",
  "description": null,
  "priority": 0,
  "groupLayer": "Infrastructure",
  "rules": [
    {
      "id": 1,
      "direction": "ingress",
      "sourceType": "cidr",
      "destinationType": "instance",
      "name": "stubby-toes-rule-1",
      "policy": "accept",
      "priority": 0,
      "enabled": true,
      "ruleGroup": {
        "id": 1,
        "name": "stubby-toes-group"
      },
      "groupName": "stubby-toes-group",
      "config": {

      },
      "sources": [
        {
          "id": "/infra/domains/default/groups/DB",
          "name": "DB"
        },
        {
          "id": "/infra/domains/default/groups/stubby-toes-group",
          "name": "stubby-toes-group"
        }
      ],
      "destinations": [
        {
          "id": "/infra/domains/default/groups/stubby-toes-group",
          "name": "stubby-toes-group"
        },
        {
          "id": "/infra/domains/default/groups/DB",
          "name": "DB"
        }
      ],
      "applications": [
        {
          "id": "/infra/services/ICMP-ALL",
          "name": "ICMP-ALL"
        }
      ],
      "scopes": [
        {
          "id": "/infra/domains/default/groups/DB",
          "name": "DB"
        },
        {
          "id": "/infra/domains/default/groups/stubby-toes-group",
          "name": "stubby-toes-group"
        }
      ],
      "profiles": [
        {
          "id": "ANY",
          "name": "ANY"
        }
      ],
      "appliedTargets": [

      ]
    }
  ]
}
```

This endpoint retrieves a specific network firewall rule group.

### HTTP Request

`GET <%= api_url %>/api/networks/servers/:serverId/firewall-rule-groups/:groupId`

### URL Parameters

Parameter | Description
--------- | -----------
serverId | ID of the network server
groupId | ID of the network firewall rule group


## Create a Network Firewall Rule Group

Use this command to create a network firewall rule group.

```shell
curl -XPOST "<%= curl_url %>/api/networks/servers/1/firewall-rule-groups" \
-H "Authorization: BEARER <%= curl_token %>" \
-H "Content-Type: application/json" \
-d '{
  "ruleGroup": {
    "name": "stubby-toes-group",
    "description": "description",
    "priority": 10,
    "externalType": "SecurityPolicy",
    "groupLayer": "Infrastructure"
  }
}'
```

> The above command returns JSON Structured like this:

```json
{
  "id": 1,
  "success": true
}
```

### HTTP Request

`POST <%= api_url %>/api/networks/servers/:serverId/firewall-rule-groups`

### JSON Parameters

The parameters for creating a network firewall rule group is type dependent. The following lists the common parameters. See [get a specific type](#get-a-specific-network-type)
to list available options for the network server type.

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Network firewall rule group name
description | N | Network firewall rule group description
priority | N | Network firewall rule group priority
externalType | Y | Use SecurityPolicy


## Update a Network Firewall Rule Group

Use this command to update an existing network firewall rule group.

```shell
curl -XPUT "<%= curl_url %>/api/networks/servers/1/firewall-rule-groups/1" \
-H "Authorization: BEARER <%= curl_token %>"
-H "Content-Type: application/json" \
-d '{
  "ruleGroup": {
    "name": "name",
    "description": "description",
    "priority": 10
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

`PUT <%= api_url %>/api/networks/servers/:serverId/firewall-rule-groups/:groupId`

### URL Parameters

Parameter | Description
--------- | -----------
serverId | ID of the network server
groupId | ID of the network firewall rule group

### JSON Parameters

The parameters for update a network firewall rule group is type dependent. The following lists the common parameters. See [get a specific type](#get-a-specific-network-type)
to list available options for the network server type.

Parameter | Description
--------- | -----------
name | Network firewall rule group name
description | Network firewall rule group description
priority | Network firewall rule group priority


## Delete a Network firewall rule group

```shell
curl -XDELETE "<%= curl_url %>/api/networks/servers/1/firewall-rule-groups/1" \
-H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
"success": true
}
```

Will delete a network firewall rule group.

### HTTP Request

`DELETE <%= api_url %>/api/networks/servers/:serverId/firewall-rule-groups/:groupId`

### URL Parameters

Parameter | Description
--------- | -----------
serverId | ID of the network server
groupId | ID of the network firewall rule group