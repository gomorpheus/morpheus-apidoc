## API Format

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

### Request Format

API requests typically have the morpheus appliance url followed by a path like `/api/resource/:id`.

Example:

`GET https://api.gomorpheus.com/api/instances/:id`

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the Instance

This is the format for documenting URL parameters, that are included in the url path of the request.

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
phrase |  | If specified will return a partial match on name

This is the format for documenting query string paramters, which are included in the URL query string of the request.

### JSON Parameters

Parameter | Description
--------- | -----------
field | A description of the field, what type it is, etc.

This is the format for documenting JSON parameters, that are included in the body of the request.

### HTTP Headers

Header |  Description
---------  | -----------
Authorization      | Use the format `bearer access_token`. Example: `Authorization: bearer e1d62c34-f7f5-4713-a874-31491e7707de`
Content-Type      | Use `application/json` for `POST` and `PUT` requests.

These are the only two headers that the API expects regularly.

The `Authorization` header must be included in all requests that require authentication.  All endpoints requires this, except for [Authentication](#authentication) and [Setup](#setup).

The `Content-Type` header should always be `application/json` for `POST` and `PUT` requests. This is true for all endpoints, except [Authentication](authentication)#authentication) and a file upload methods that expect `application/x-www-form-urlencoded` and `application/octet-stream` instead.


### Response Format

The API almost always responds with `Content-Type: application/json`.

This is an example of an API response.  JSON is always returned, even for [Errors](#errors) when something other than HTTP 200 OK was returned.

```shell
curl "$MORPHEUS_API_URL/api/contacts/1" \
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
