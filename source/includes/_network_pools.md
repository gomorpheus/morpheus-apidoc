## Network Pools

Provides API for managing Network Pools.

## Get All Network Pools

```shell
curl "$MORPHEUS_API_URL/api/networks/pools"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "networkPools": [
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

This endpoint retrieves all Network Pools associated with the account.

### HTTP Request

`GET https://api.gomorpheus.com/api/networks/pools`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
name |  | If specified will return an exact match on name
phrase |  | If specified will return a partial match on name

## Get a Specific Network Pool


```shell
curl "$MORPHEUS_API_URL/api/networks/pools/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "networkPool": {

  }
}
```

This endpoint retrieves a specific Network Pool.


### HTTP Request

`GET https://api.gomorpheus.com/api/networks/pools/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Network Pool to retrieve


## Create a Network Pool

```shell
curl -XPOST "$MORPHEUS_API_URL/api/networks/pools" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
  "networkPool": {
    
  }
}'
```

> The above command returns JSON structured like getting a single Network Pool: 

### HTTP Request

`POST https://api.gomorpheus.com/api/networks/pools`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Name
description      |  | Description

## Update a Network Pool

```shell
curl -XPUT "$MORPHEUS_API_URL/api/networks/pools/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
  "networkPool": {

  }
}'
```

> The above command returns JSON structured like getting a single Network Pool: 

### HTTP Request

`PUT https://api.gomorpheus.com/api/networks/pools/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Network Pool

### JSON Parameters

Same as [Create](#create-a-network).

## Delete a Network Pool

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/networks/pools/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

Will delete a Network Pool from the system and make it no longer usable.

### HTTP Request

`DELETE https://api.gomorpheus.com/api/networks/pools/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Network Pool

