## API

The Morpheus API is an HTTP interface for interacting with the [Morpheus](https://www.morpheusdata.com/) appliance. It provides a RESTful interface where `GET` reads, `POST` creates, `PUT` updates and `DELETE` destroys resources.

```shell
curl "$MORPHEUS_API_URL/api/users/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "user": {
    "id": 1,
    "accountId": 1,
    "username": "admin",
    "displayName": "Morpheus Admin",
    "email": "admin@morpheusdata.com",
    "firstName": "Morpheus",
    "lastName": "Admin",
    "dateCreated": "2017-03-16T21:26:39+0000",
    "lastUpdated": "2019-10-30T23:09:01+0000",
    "enabled": true,
    "accountExpired": false,
    "accountLocked": false,
    "passwordExpired": false,
    "loginCount": 86638,
    "loginAttempts": 0,
    "lastLoginDate": "2016-06-30T21:05:15+0000",
    "roles": [
      {
        "id": 1,
        "authority": "System Admin",
        "description": "Super User"
      }
    ],
    "account": {
      "id": 1,
      "name": "root"
    }
  }
}
```

This is an example of a Morpheus API request that retrieves details about a [User](#users).

### HTTP Request

`GET https://api.gomorpheus.com/api/instances/:id`

This is the format for the request method and path of the endpoint. Most paths have a format like **/api/resources/:id**.

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the Instance.

This is the format for URL parameters. These are parameters that are included in the path of the request.

### HTTP Headers

Header |  Description
---------  | -----------
Authorization      | Use the format `bearer access_token`. Example: `Authorization: bearer e1d62c34-f7f5-4713-a874-31491e7707de`. Most endpoints require this header. Some exceptions include [Authentication](#authentication) and [Setup](#setup).
Content-Type      | Use `application/json` for `POST` and `PUT` requests. This is needed to ensure your JSON payload is parsed.  Exceptions to this rule include file uploads where `application/x-www-form-urlencoded` and `application/octet-stream` may be needed instead.

### Query Parameters

Parameter | Description
--------- | -------
phrase | If specified will return a partial match on name.

This is the format for query string parameters. These are parameters which are included in the query string of the request.

### JSON Parameters

Parameter | Description
--------- | -----------
name | A unique string.

This is the format for JSON parameters. These are parameters which are included in the body of the request, with *Content-Type application/json*.


### HTTP Response

The Morpheus API returns **200 OK** for successful requests. 
If a request fails, an HTTP [Error](#errors) will be returned.

Most endpoints respond with *Content-Type: application/json* and body that contains JSON data.

This is an example of an API response that retrieves a [Contact](#contacts) record by ID.

#### Success Example

```shell
curl "$MORPHEUS_API_URL/api/monitoring/contacts/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns HTTP 200 and JSON structured like this:

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

This is an example of a successful response that contains the requested record.

#### Error Example

```shell
curl "$MORPHEUS_API_URL/api/monitoring/contacts/999" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```


> The above command returns HTTP 404 and JSON structured like this:

```json
{
  "success": false,
  "msg": "Contact not found for this account"
}
```

This is an example of a 404 error response caused when the specified record was not found.

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
