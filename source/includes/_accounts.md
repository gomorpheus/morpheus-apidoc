# Accounts

Provides API interfaces for managing the creation and modification of accounts within Morpheus (Typically only accessible by the Master Account)

## Get All Accounts

```shell
curl "https://api.gomorpheus.com/api/accounts"
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structured like this:

```json
{
  "accountCount": 1,
  "accounts": [
    {
      "active": true,
      "confs": {
        "isMasterAccount": "true"
      },
      "dateCreated": "2015-11-10T18:58:55Z",
      "description": null,
      "externalId": null,
      "id": 1,
      "instanceLimits": null,
      "lastUpdated": "2015-11-10T18:58:55Z",
      "name": "Test Account"
    }
  ]
}
```

This endpoint retrieves all accounts.

### HTTP Request

`GET https://api.gomorpheus.com/api/accounts`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
name | null | Filter by name
lastUpdated | null | Date filter, restricts query to only load accounts updated  timestamp is more recent or equal to the date specified

<aside class="success">
Remember — a happy kitten is an authenticated kitten!
</aside>

## Get a Specific Account

```shell
curl "https://api.gomorpheus.com/api/accounts/1" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structured like this:

```json
{
  "account": {
    "active": true,
    "confs": {
      "isMasterAccount": "true"
    },
    "dateCreated": "2015-11-10T18:58:55Z",
    "description": null,
    "externalId": null,
    "id": 1,
    "instanceLimits": null,
    "lastUpdated": "2015-11-10T18:58:55Z",
    "name": "Test Account"
  }
}
```

This endpoint will retrieve a specific account by id if the user has permission to access it.

### HTTP Request

`GET https://api.gomorpheus.com/api/accounts/:id`

## Create an Account

```shell
curl -XPOST "https://api.gomorpheus.com/api/accounts" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '{"account":{
    "name": "My New Account",
    "description": "My description",
    "instanceLimits": {
      "maxMemory": 0,
      "maxStorage": 0
    }
  }}'
```

> The above command returns JSON structured like getting a single account: 

### HTTP Request

`POST https://api.gomorpheus.com/api/accounts`

### JSON Check Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      | null | A unique name for the account
description | null | Optional description field if you want to put more info there
instanceLimits | null | Optional JSON Map of maxMemory and maxStorage restrictions (0 means unlimited)


## Updating an Account

```shell
curl -XPUT "https://api.gomorpheus.com/api/accounts/2" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '{"account":{
    "name": "My New Account",
    "description": "My description",
    "instanceLimits": {
      "maxMemory": 0,
      "maxStorage": 0
    }
  }}'
```

> The above command returns JSON structured like getting a single account: 

### HTTP Request

`PUT https://api.gomorpheus.com/api/accounts/:id`

### JSON Check Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      | null | A unique name for the account
description | null | Optional description field if you want to put more info there
instanceLimits | null | Optional JSON Map of maxMemory and maxStorage restrictions (0 means unlimited)

## Delete an Account

```shell
curl -XDELETE "https://api.gomorpheus.com/api/accounts/1" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

If an account still has users or instances tied to it, The delete will fail.

<aside class="info">This restriction should be lifted in a forthcoming API release</aside>

