## Network Services

Provides API for managing Network Services.

## Get All Network Services

```shell
curl "$MORPHEUS_API_URL/api/networks/services"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "networkServices": [
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

This endpoint retrieves all Network Services associated with the account.

### HTTP Request

`GET https://api.gomorpheus.com/api/networks/services`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
name |  | If specified will return an exact match on name
phrase |  | If specified will return a partial match on name

## Get a Specific Network Service


```shell
curl "$MORPHEUS_API_URL/api/networks/services/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "networkService": {

  }
}
```

This endpoint retrieves a specific Network Service.


### HTTP Request

`GET https://api.gomorpheus.com/api/networks/services/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Network Service to retrieve


## Create a Network Service

```shell
curl -XPOST "$MORPHEUS_API_URL/api/networks/services" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
  "networkService": {
    
  }
}'
```

> The above command returns JSON structured like getting a single Network Service: 

### HTTP Request

`POST https://api.gomorpheus.com/api/networks/services`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Name
description      |  | Description

## Update a Network Service

```shell
curl -XPUT "$MORPHEUS_API_URL/api/networks/services/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
  "networkService": {

  }
}'
```

> The above command returns JSON structured like getting a single Network Service: 

### HTTP Request

`PUT https://api.gomorpheus.com/api/networks/services/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Network Service

### JSON Parameters

Same as [Create](#create-a-network).

## Delete a Network Service

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/networks/services/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

Will delete a Network Service from the system and make it no longer usable.

### HTTP Request

`DELETE https://api.gomorpheus.com/api/networks/services/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Network Service

