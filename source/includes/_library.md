# Library

The Library API endpoints provide the management of Instance Types, Layouts, Container Types, and more.

# Instance Types

Provides API interfaces for managing Instance Types.

## Get All Instance Types

```shell
curl "$MORPHEUS_API_URL/api/library"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{

}
```

This endpoint retrieves all instance types available to the account.

### HTTP Request

`GET https://api.gomorpheus.com/api/library`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
name |  | If specified will return an exact match on name
phrase |  | If specified will return a partial match on name


## Get a Specific Instance Type


```shell
curl "$MORPHEUS_API_URL/api/library/4" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "instanceType": {
    "id": 4,
    "name": "hulk max storage",
    "description": "Limit the hulkster",
    "instanceType": {
      "id": 2,
      "code": "maxStorage",
      "name": "Max Storage"
    },
    "zone": null,
    "site": null,
    "user": {
      "id": 26,
      "username": "hulk"
    },
    "refType": "User",
    "refId": 26,
    "config": {
      "maxStorage": "10000"
    },
    "enabled": true,
    "owner": {
      "id": 1,
      "name": "root"
    },
    "accounts": [
    ]
  }
}
```

This endpoint retrieves a specific instance type.

### HTTP Request

`GET https://api.gomorpheus.com/api/library/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of instance type to retrieve

## Create an Instance Type

```shell
curl -XPOST "$MORPHEUS_API_URL/api/library" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
  "instanceType": {
    "name": "mytype",
    "code": "mytype"
    "description": "An example instance type",
    "provisionType": {
      "code": "vmware"
    },

    "config": {
      "maxHosts": 99
    },
    "enabled": true,
    "accounts": []
  }
}'
```

> The above command returns JSON structured like getting a single instanceType: 

### HTTP Request

`POST https://api.gomorpheus.com/api/library`


### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | A name for instance type
description      |  | A description for instance type
code      |  | A unique code for instance type.  [activemq, apache, etc.]
config      |  | A map of config values. The expected values vary by type.
enabled      | true | Enabled. Set to false to disable.

## Update an Instance Type

```shell
curl -XPUT "$MORPHEUS_API_URL/api/library/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
  "instanceType": {
    "name": "mytype",
    "code": "mytype"
  }
}'
```

> The above command returns JSON structured like getting a single instanceType: 

### HTTP Request

`PUT https://api.gomorpheus.com/api/library/1`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the instance type

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | A name for instance type
description      |  | A description for instance type
config      |  | A map of config values. The expected values vary by instanceType.
enabled      | true | Enabled. Set to false to disable.
accounts      |  | Array of tenants to scope instance type to.

## Delete Instance Type

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/library/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

Will delete an instance type from the system and make it no longer usable.

### HTTP Request

`DELETE https://api.gomorpheus.com/api/library/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of instance type

<!-- ## Upgrades -->

## Layouts

## Node Types

## Option Types

## Option Lists

## Scripts

## File Templates

## Cluster Layouts

## Spec Templates
