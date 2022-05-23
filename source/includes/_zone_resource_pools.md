## Resource Pools

Resource Pools can be managed for each Compute Zone (Cloud) in your infrastructure.

<!--## Get All Resource Pools for Cloud-->

```shell
curl "<%= curl_url %>/api/zones/5/resource-pools"
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "resourcePools": [
    {
      "id": 89,
      "name": "labs",
      "description": "labs - vpc-231b2e3c - 10.50.0.0/16",
      "zone": {
        "id": 8,
        "name": "labs-aws"
      },
      "parent": null,
      "type": "vpc",
      "externalId": "vpc-231b2e3c",
      "iacId": null,
      "visibility": "private",
      "readOnly": false,
      "defaultPool": false,
      "active": true,
      "status": "available",
      "config": {
        "cidrBlock": "10.50.0.0/16",
        "tenancy": "default"
      },
      "tenants": [
        {
          "id": 1,
          "name": "root"
        }
      ],
      "resourcePermission": {
        "all": true,
        "sites": [

        ],
        "allPlans": true,
        "plans": [

        ]
      },
      "depth": 0
    }
  ],
  "meta": {
    "size": 1,
    "total": 1,
    "max": 25,
    "offset": 0
  }
}
```

This endpoint retrieves all resource pools under a cloud.

### HTTP Request

`GET <%= api_url %>/api/zones/:zoneId/resource-pools`

### URL Parameters

Parameter | Description
--------- | -----------
zoneId | The ID of the cloud

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
phrase |  | Filter on partial match of name or displayName
name |  | Filter on exact match of name or displayName

## Get a Specific Resource Pool

```shell
curl "<%= curl_url %>/api/zones/5/resource-pools/50" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "resourcePool": {
    "id": 89,
    "name": "labs",
    "description": "labs - vpc-231b2e3c - 10.50.0.0/16",
    "zone": {
      "id": 8,
      "name": "labs-aws"
    },
    "parent": null,
    "type": "vpc",
    "externalId": "vpc-231b2e3c",
    "iacId": null,
    "visibility": "private",
    "readOnly": false,
    "defaultPool": false,
    "active": true,
    "status": "available",
    "config": {
      "cidrBlock": "10.50.0.0/16",
      "tenancy": "default"
    },
    "tenants": [
      {
        "id": 1,
        "name": "root"
      }
    ],
    "resourcePermission": {
      "all": true,
      "sites": [

      ],
      "allPlans": true,
      "plans": [

      ]
    },
    "depth": 0
  }
}
```

This endpoint retrieves a specific resource pool.


### HTTP Request

`GET <%= api_url %>/api/zones/:zoneId/resource-pools/:id`

### URL Parameters

Parameter | Description
--------- | -----------
zoneId | The ID of the cloud
id | The ID of the resource pool to retrieve

## Create a Resource Pool

```shell
curl -XPOST "<%= curl_url %>/api/zones/5/resource-pools" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"resourcePool": {
    "name": "mypool",
    "config": {
      "cidrBlock": "10.20.254.0/28",
      "tenancy": "default"
    },
    "tenantPermissions": {
      "accounts": [1,2,3,4,5]
    },
    "resourcePermissions": {
      "all": false,
      "sites": [
        {"id": 1}, {"id": 2}, {"id": 3}
      ]
    }
  }}'
```

> The above command returns JSON structured like getting a single resource pool:

This endpoint allows updating settings for a resource pool.  Only certain types of clouds support creating and deleting resource pools. Configuration options vary by type.

### HTTP Request

`POST <%= api_url %>/api/zones/:zoneId/resource-pools`

### URL Parameters

Parameter | Description
--------- | -----------
zoneId | The ID of the cloud

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Name
defaultPool      | false | Set as the Default Pool
defaultImage      | false | Set as the Default Image Target
active      | true | Activate (true) or disable (false) the resource pool
visibility      | private | private or public
tenantPermissions.accounts  |  | Array of tenant account ids that are allowed access
resourcePermissions.all  | true | Pass true to allow access all groups
resourcePermissions.sites  |  | Array of groups that are allowed access
resourcePermissions.allPlans  | true | Pass true to allow access all plans
resourcePermissions.plans  |  | Array of plans that are allowed access

### JSON Parameters for Amazon Resource Pool

Parameter | Default | Description
--------- | ------- | -----------
config.cidrBlock      |  | Provide the base CIDR Block to use for this VPC (must be between a /16 and /28 Block)
config.tenancy      | default | default or dedicated

### JSON Parameters for Cloud Foundry

Parameter | Default | Description
--------- | ------- | -----------
config.managers      | [] | Array of manager usernames
config.developers      | [] | Array of developer usernames
config.auditors      | [] | Array of auditor usernames

## Updating a Resource Pool

```shell
curl -XPUT "<%= curl_url %>/api/zones/5/resource-pools/50" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"resourcePool":{
    "active": true,
    "visibility": "private",
    "displayName": "foo",
    "tenantPermissions": {
      "accounts": [1,2,3,4,5]
    },
    "resourcePermissions": {
      "all": false,
      "sites": [
        {"id": 1}, {"id": 2}, {"id": 3}
      ]
    }
  }}'
```

> The above command returns JSON structured like getting a single resource pool:

This endpoint allows updating settings for a resource pool.

### HTTP Request

`PUT <%= api_url %>/api/zones/:zoneId/resource-pools/:id`

### URL Parameters

Parameter | Description
--------- | -----------
zoneId | The ID of the cloud
id | The ID of the resource pool

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
active      |  | Activate (true) or disable (false) the resource pool
visibility      | private | private or public
displayName  |  | Optional Display Name (VMware only)
tenantPermissions.accounts  |  | Array of tenant account ids that are allowed access
resourcePermissions.all  |  | Pass true to allow access all groups
resourcePermissions.sites  |  | Array of groups that are allowed access
resourcePermissions.allPlans  |  | Pass true to allow access all plans
resourcePermissions.plans  |  | Array of plans that are allowed access

## Delete a Resource Pool

```shell
curl -XDELETE "<%= curl_url %>/api/zones/5/resource-pools/50" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

### HTTP Request

`DELETE <%= api_url %>/api/zones/:zoneId/resource-pools/:id`

### URL Parameters

Parameter | Description
--------- | -----------
zoneId | The ID of the cloud
id | The ID of the resource pool
