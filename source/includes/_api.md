## API

The Morpheus API is the HTTP interface for the [Morpheus](https://www.morpheusdata.com/) appliance. It is a RESTful API where (typically) `GET` reads, `POST` creates, `PUT` updates and `DELETE` destroys resources.

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

This is the format for documenting request paths. Most endpoints have a path like */api/resources/:id*.

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the Instance.

This is the format for documenting URL parameters. These are parameters that are included in the path of the request.

### HTTP Headers

Header |  Description
---------  | -----------
Authorization      | Use the format `bearer access_token`. Example: `Authorization: bearer e1d62c34-f7f5-4713-a874-31491e7707de`. Most endpoints require this header. Some exceptions include [Authentication](#authentication) and [Setup](#setup).
Content-Type      | Use `application/json` for `POST` and `PUT` requests. This is needed to ensure your JSON payload is parsed.  Exceptions to this rule include file uploads where `application/x-www-form-urlencoded` and `application/octet-stream` may be needed instead.

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
phrase |  | If specified will return a partial match on name.

This is the format for documenting query string parameters. These are parameters which are included in the query string of the request.

### JSON Parameters

Parameter | Description
--------- | -----------
name | A unique string.

This is the format for documenting JSON parameters. These are parameters which are included in the body of the request, with *Content-Type application/json*.


### HTTP Response

The Morpheus API returns **200 OK** for successful requests. 
If a request fails, an HTTP [Error Code](#error-codes) will be returned. JSON is always returned, even when an error occurs.

The API (almost) always responds with *Content-Type: application/json* and a response body that is valid JSON.

This is an example of an API response that retrieves a [Contact](#contacts) record by ID.

#### Success Example
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

#### Error Example

Here is an example a a 400 error
```shell
curl "$MORPHEUS_API_URL/api/monitoring/contacts/999" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```


> The above command returns JSON structured like this:

```json
{
  "success": false,
  "msg": "Contact not found for this account"
}
```

## Environment Variables

```bash
export MORPHEUS_API_URL="https://api.gomorpheus.com"
export MORPHEUS_API_TOKEN="e1d62c34-f7f5-4713-a874-31491e7707de"
```

The following environment variables are used throughout the examples in this document.

Environment Variable | Description
--------- | ------- | -----------
MORPHEUS_API_URL | The URL of your morpheus data appliance. Example: <code>https://api.gomorpheus.com</code>
MORPHEUS_API_TOKEN | Your access token. Example: <code>e1d62c34-f7f5-4713-a874-31491e7707de</code>. See [Get Access Token](#get-access-token).

<aside class="info">
As always, be careful not to copy and execute request examples in sensitive environments, such as production.
</aside>
