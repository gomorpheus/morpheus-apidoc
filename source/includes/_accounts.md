# Tenants

Provides API interfaces for managing the creation and modification of tenants within Morpheus. Typically this is only accessible by users of the Master Tenant.

<!--
  JD: uhh this "(Typically only accessible by the Master Account)." needs to be investigated. non master account users should not be able to edit other tenant accounts, only their own...
-->

A Tenant may also be referred to as an *Account* or *account*.

## Get All Tenants

```shell
curl "$MORPHEUS_API_URL/api/accounts" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "accounts": [
    {
      "id": 1,
      "name": "Master",
      "description": "The master tenant",
      "subdomain": null,
      "currency": "USD",
      "confs": {
        "isMasterAccount": "true"
      },
      "instanceLimits": null,
      "lastUpdated": "2015-11-10T18:58:55+0000",
      "dateCreated": "2015-11-10T18:58:55+0000",
      "role": {
        "id": 1,
        "authority": "System Admin",
        "description": "Super User"
      },
      "active": true
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

This endpoint retrieves all tenants.

### HTTP Request

`GET https://api.gomorpheus.com/api/accounts`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Filter by matching name or description
name |  | Filter by name
lastUpdated |  | Date filter, restricts query to only load tenants updated more recently than the date specified


## Get a Specific Tenant

```shell
curl "$MORPHEUS_API_URL/api/accounts/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "account": {
    "id": 1,
    "name": "Master",
    "description": "The master tenant",
    "subdomain": null,
    "currency": "USD",
    "confs": {
      "isMasterAccount": "true"
    },
    "instanceLimits": null,
    "externalId": null,
    "lastUpdated": "2015-11-10T18:58:55+0000",
    "dateCreated": "2015-11-10T18:58:55+0000",
    "role": {
      "id": 1,
      "authority": "System Admin",
      "description": "Super User"
    },
    "active": true
  }
}
```

This endpoint will retrieve a specific account by ID.

### HTTP Request

`GET https://api.gomorpheus.com/api/accounts/:id`

## Create a Tenant

```shell
curl -XPOST "$MORPHEUS_API_URL/api/accounts" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"account":{
    "name": "My New Tenant",
    "description": "My description",
    role: {
      id: 2
    }
  }}'
```

> The above command returns JSON structured like getting a single account:

### HTTP Request

`POST https://api.gomorpheus.com/api/accounts`

### JSON Account Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | A unique name for the account
description |  | Optional description field if you want to put more info there
role      | Account Admin | A nested id of the default role for the account
instanceLimits |  | Optional JSON Map of maxCpu, maxMemory (bytes) and maxStorage (bytes) restrictions (0 means unlimited). The parameters maxMemoryMiB, maxMemoryGiB, maxStorageMiB and maxStorageGiB can be used to pass values in larger units.


## Updating a Tenant

```shell
curl -XPUT "$MORPHEUS_API_URL/api/accounts/2" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"account":{
    "name": "My New Account",
    "description": "My new description",
    "instanceLimits": {
      "maxCpu": 0,
      "maxMemory": 0,
      "maxStorage": 0
    },
    "role": {
      id: 3
    }
  }}'
```

> The above command returns JSON structured like getting a single account:

### HTTP Request

`PUT https://api.gomorpheus.com/api/accounts/:id`

### JSON Account Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | A unique name for the account
description |  | Optional description field if you want to put more info there
role      |  | A nested id of the default role for the account
active |  | Set to false to deactvate the account

## Delete a Tenant

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/accounts/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

If a tenant still has users or instances tied to it, The delete will fail.

<aside class="info">This restriction should be lifted in a forthcoming API release</aside>

### HTTP Request

`DELETE https://api.gomorpheus.com/api/accounts/:id`
