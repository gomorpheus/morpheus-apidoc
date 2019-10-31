## API

The Morpheus API is an HTTP interface. It provides access to resources and functionality provided by the [Morpheus](https://www.morpheusdata.com/) appliance. It is a RESTful API where (typically) `GET` reads, `POST` creates, `PUT` updates and `DELETE` destroys resources.

```shell
curl "$MORPHEUS_API_URL/api/instances?phrase=test" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "instances": [
    
  ],
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 0,
    "total": 0
  }
}

```

This is an example of Morpheus API request that finds all instances with a similar name.

### HTTP Request

`GET https://api.gomorpheus.com/api/instances/:id`

This is the format for documenting request endpoints. Most endpoints have a path that looks like `/api/resources/:id`.

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the Instance.

This is the format for documenting URL parameters that are included in the path of the request.

### HTTP Headers

Header |  Description
---------  | -----------
Authorization      | Use the format `bearer access_token`. Example: `Authorization: bearer e1d62c34-f7f5-4713-a874-31491e7707de`. Most endpoints require this header. Some exceptions include [Authentication](#authentication) and [Setup](#setup).
Content-Type      | Use `application/json` for `POST` and `PUT` requests. This is needed to ensure your JSON payload is parsed.  Exceptions to this rule include file uploads where `application/x-www-form-urlencoded` and `application/octet-stream` may be needed instead.

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
phrase |  | If specified will return a partial match on name.

This is the format for documenting query string paramters, which are included in the query string of the request.

### JSON Parameters

Parameter | Description
--------- | -----------
name | A unique string.

This is the format for documenting JSON parameters that are included in the body of the request.


### HTTP Response

The Morpheus API returns **200 OK** for successful requests. 
If a request fails, an [Error Code](#error-codes) will be returned instead. JSON is always returned, even when an error occurs.

The API typically responds with `Content-Type: application/json` and a response body that is valid JSON.

This is an example of an API response that retrieves a [Contact](#contacts) record by ID.

```shell
curl "$MORPHEUS_API_URL/api/monitoring/contacts/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```


> The above command returns JSON structured like this:

```json
{
  "success": true,
  "contact": {
    "id": 1,
    "name": "Morpheus Admin",
    "emailAddress": "admin@morpheusdata.com",
    "smsAddresss": null
  }
}
```

> In the event of an error, the response might look like this:

```json
{
  "success": false,
  "msg": "Contact not found for this account"
}
```

