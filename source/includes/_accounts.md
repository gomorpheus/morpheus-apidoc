# Tenants

Provides API interfaces for managing the creation and modification of tenants within <%= application_name %>. Typically this is only accessible by users of the Master Tenant.

<!--
  JD: uhh this "(Typically only accessible by the Master Account)." needs to be investigated. non master account users should not be able to edit other tenant accounts, only their own...
-->

A Tenant may also be referred to as an *Account* or *account*.

## Get All Tenants

```shell
curl "<%= curl_url %>/api/accounts" \
  -H "Authorization: BEARER <%= curl_token %>"
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
      "externalId": null,
      "customerNumber": null,
      "accountNumber": null,
      "accountName": null,
      "active": true,
      "master": true,
      "role": {
        "id": 1,
        "authority": "System Admin",
        "description": "Super User"
      },
      "stats": {
        "instanceCount": 42,
        "userCount": 13
      },
      "lastUpdated": "2015-11-10T18:58:55Z",
      "dateCreated": "2015-11-10T18:58:55Z",
    },
    {
      "id": 2,
      "name": "Acme",
      "description": "The Acme corporation, a global manufacturer of outlandish products",
      "subdomain": "acme",
      "currency": "USD",
      "externalId": null,
      "customerNumber": "1920",
      "accountNumber": "AC1920",
      "accountName": "Acme Corporation",
      "active": true,
      "master": false,
      "role": {
        "id": 2,
        "authority": "Tenant Admin",
        "description": "Tenant Role Template"
      },
      "stats": {
        "instanceCount": 2,
        "userCount": 1
      },
      "dateCreated": "2020-11-18T17:40:40Z",
      "lastUpdated": "2020-11-18T17:40:40Z"
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

This endpoint retrieves all tenants.

### HTTP Request

`GET <%= api_url %>/api/accounts`

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
curl "<%= curl_url %>/api/accounts/2" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "account": {
    "id": 2,
    "name": "Acme",
    "description": "The Acme corporation, global manufacturer of outlandish products",
    "subdomain": "acme",
    "currency": "USD",
    "externalId": null,
    "customerNumber": "1920",
    "accountNumber": "AC1920",
    "accountName": "Acme Corporation",
    "active": true,
    "master": false,
    "role": {
      "id": 2,
      "authority": "Tenant Admin",
      "description": "Tenant Role Template"
    },
    "stats": {
      "instanceCount": 2,
      "userCount": 1
    },
    "dateCreated": "2020-11-18T17:40:40Z",
    "lastUpdated": "2020-11-18T17:40:40Z"
  }
}
```

This endpoint will retrieve a specific account by ID.

### HTTP Request

`GET <%= api_url %>/api/accounts/:id`

## Create a Tenant

```shell
curl -XPOST "<%= curl_url %>/api/accounts" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"account":{
    "name": "Acme",
    "description": "The Acme corporation, global manufacturer of outlandish products",
    "subdomain": "acme",
    "role": {
      "id": 2
    },
    "active": true,
    "currency": "USD",
    "customerNumber": "1920",
    "accountNumber": "AC1920",
    "accountName": "Acme Corporation"
  }}'
```

> The above command returns JSON structured like getting a single account:

### HTTP Request

`POST <%= api_url %>/api/accounts`

### JSON Account Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | A unique name for the account
description |  | Optional description field if you want to put more info there
subdomain |  | Sets the custom login url or login prefix for logging into a sub-tenant user.
role      | Tenant Admin | A nested id of the default base role for the account. See [Get Available Roles for a Tenant](#get-available-roles-for-a-tenant).
active | true | Set to false to deactvate the account
currency | USD | Currency ISO Code to be used for the account
customerNumber |  | Customer Number, an optional field that can be used for billing and accounting.
accountNumber |  | Account Number, an optional field that can be used for billing and accounting.
accountName |  | Account Name, an optional field that can be used for billing and accounting.

## Updating a Tenant

```shell
curl -XPUT "<%= curl_url %>/api/accounts/3" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"account":{
    "name": "Batman",
    "description": "Crime fighter",
    "subdomain": "batman",
    "role": {
      "id": 2
    },
    "active": true,
    "currency": "USD",
    "customerNumber": "1020",
    "accountNumber": "A1020-GPD",
    "accountName": "Gotham Police Department"
  }}'
```

> The above command returns JSON structured like getting a single account:

### HTTP Request

`PUT <%= api_url %>/api/accounts/:id`

### JSON Account Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | A unique name for the account
description |  | Optional description field if you want to put more info there
subdomain |  | Sets the custom login url or login prefix for logging into a sub-tenant user.
role      |  | A nested id of the default base role for the account
active |  | Set to false to deactvate the account
currency |  | Currency ISO Code to be used for the account
customerNumber |  | Customer Number, an optional field that can be used for billing and accounting.
accountNumber |  | Account Number, an optional field that can be used for billing and accounting.
accountName |  | Account Name, an optional field that can be used for billing and accounting.

## Delete a Tenant

```shell
curl -XDELETE "<%= curl_url %>/api/accounts/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

If a tenant still has instances tied to it, the delete will fail unless `removeResources=on` is passed.

### HTTP Request

`DELETE <%= api_url %>/api/accounts/:id`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
removeResources | on | Remove Infrastructure.

## Get Available Roles for a Tenant

```shell
curl "<%= curl_url %>/api/accounts/available-roles" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "roles": [
     {
      "id": 1,
      "authority": "System Admin",
      "name": "System Admin",
      "description": "Super User",
      "roleType": null,
      "owner": null
    },
    {
      "id": 2,
      "authority": "Tenant Admin",
      "name": "Tenant Admin",
      "description": "Tenant Role Template",
      "roleType": "account",
      "owner": null
    }
  ]
}
```

This endpoint will retrieve a list of roles that can be assigned as the base role for a tenant account.  These are roles that have `roleType` set to `account` or `null`.

### HTTP Request

`GET <%= api_url %>/api/accounts/available-roles`
