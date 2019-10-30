## Network Groups

Provides API for managing Network Groups.

<!--## Get All Network Groups-->

```shell
curl "$MORPHEUS_API_URL/api/networks/groups"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "networkGroups": [
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

This endpoint retrieves all Network Groups associated with the account.

### HTTP Request

`GET https://api.gomorpheus.com/api/networks/groups`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
name |  | If specified will return an exact match on name
phrase |  | If specified will return a partial match on name

## Get a Specific Network Group


```shell
curl "$MORPHEUS_API_URL/api/networks/groups/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "networkGroup": {

  }
}
```

This endpoint retrieves a specific Network Group.


### HTTP Request

`GET https://api.gomorpheus.com/api/networks/groups/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Network Group to retrieve


## Create a Network Group

```shell
curl -XPOST "$MORPHEUS_API_URL/api/networks/groups" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
  "networkGroup": {
    
  }
}'
```

> The above command returns JSON structured like getting a single Network Group: 

### HTTP Request

`POST https://api.gomorpheus.com/api/networks/groups`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Name
description      |  | Description

## Update a Network Group

```shell
curl -XPUT "$MORPHEUS_API_URL/api/networks/groups/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
  "networkGroup": {

  }
}'
```

> The above command returns JSON structured like getting a single Network Group: 

### HTTP Request

`PUT https://api.gomorpheus.com/api/networks/groups/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Network Group

### JSON Parameters

Same as [Create](#create-a-network-group).

## Delete a Network Group

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/networks/groups/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

Will delete a Network Group from the system and make it no longer usable.

### HTTP Request

`DELETE https://api.gomorpheus.com/api/networks/groups/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Network Group

