## HTTP Requests

The Morpheus API is an HTTP interface that provides a RESTful interface to the data within the morpheus appliance. It uses `GET` to read, `POST` to create, `PUT` to update and `DELETE` to destroy resources.

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

This is the format for documenting request endpoints.

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the Instance.

This is the format for documenting URL parameters that are included in the path of the request.

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

### HTTP Headers

Header |  Description
---------  | -----------
Authorization      | Use the format `bearer access_token`. Example: `Authorization: bearer e1d62c34-f7f5-4713-a874-31491e7707de`
Content-Type      | Use `application/json` for `POST` and `PUT` requests.

These are the only two headers that the API regularly expects.

Most endpoints require the `Authorization` header. Some exceptions include [Authentication](#authentication) and [Setup](#setup).

When making `POST` and `PUT` requests , be sure to pass the `Content-Type: application/json` header. This is needed to ensure your JSON payload will be parsed. 

Most `POST` and `PUT` endpoints expect the `Content-Type` header to be ` application/json`. Exceptions to this rule include file uploads where `application/x-www-form-urlencoded` and `application/octet-stream` may be needed instead.

### HTTP Response

The [Morpheus API] returns **200 OK** for successful requests. 
If a request fails, an [Error Code](#error-codes) will be returned instead. JSON is always returned, even when errors occur.

The API almost always responds with the header `Content-Type: application/json` and JSON in the body. This is true for all requests except file downloads.

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

