## Network Domains

Provides API for managing Network Domains.

## Get All Network Domains

```shell
curl "$MORPHEUS_API_URL/api/networks/domains"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "networkDomains": [
    {
      "id": 1
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

This endpoint retrieves all Network Domains associated with the account.

### HTTP Request

`GET https://api.gomorpheus.com/api/networks/domains`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
name |  | If specified will return an exact match on name
phrase |  | If specified will return a partial match on name

## Get a Specific Network Domain


```shell
curl "$MORPHEUS_API_URL/api/networks/domains/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "networkDomain": {

  }
}
```

This endpoint retrieves a specific Network Domain.


### HTTP Request

`GET https://api.gomorpheus.com/api/networks/domains/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Network Domain to retrieve


## Create a Network Domain

```shell
curl -XPOST "$MORPHEUS_API_URL/api/networks/domains" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
  "networkDomain": {
    
  }
}'
```

> The above command returns JSON structured like getting a single Network Domain: 

### HTTP Request

`POST https://api.gomorpheus.com/api/networks/domains`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Name
description      |  | Description

## Update a Network Domain

```shell
curl -XPUT "$MORPHEUS_API_URL/api/networks/domains/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
  "networkDomain": {

  }
}'
```

> The above command returns JSON structured like getting a single Network Domain: 

### HTTP Request

`PUT https://api.gomorpheus.com/api/networks/domains/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Network Domain

### JSON Parameters

Same as [Create](#create-a-network).

## Delete a Network Domain

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/networks/domains/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

Will delete a Network Domain from the system and make it no longer usable.

### HTTP Request

`DELETE https://api.gomorpheus.com/api/networks/domains/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Network Domain

