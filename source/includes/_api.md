## API

The <%= application_name %> API is an HTTP interface for interacting with the [<%= application_name %>](<%= company_website %>) appliance. It provides a RESTful interface where `GET` reads, `POST` creates, `PUT` updates and `DELETE` destroys resources.

```shell
curl "<%= curl_url %>/api/users/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "user": {
    "id": 1,
    "accountId": 1,
    "username": "admin",
    "displayName": "<%= application_name %> Admin",
    "email": "admin@<%= company_domain %>",
    "firstName": "<%= application_name %>",
    "lastName": "Admin",
    "enabled": true,
    "receiveNotifications": true,
    "isUsing2FA": true,
    "accountExpired": false,
    "accountLocked": false,
    "passwordExpired": false,
    "loginCount": 42,
    "loginAttempts": 0,
    "lastLoginDate": "2021-04-17T00:12:01Z",
    "roles": [
      {
        "id": 1,
        "authority": "System Admin",
        "description": "Super User"
      }
    ],
    "account": {
      "id": 1,
      "name": "<%= company_domain %>"
    },
    "linuxUsername": "morphadmin",
    "linuxPassword": null,
    "linuxKeyPairId": 5,
    "windowsUsername": "morphadmin",
    "windowsPassword": "************",
    "defaultPersona": {
      "id": 1,
      "code": "standard",
      "name": "Standard"
    },
    "dateCreated": "2016-08-27T19:28:09Z",
    "lastUpdated": "2021-04-17T00:12:01Z"
  }
}
```

This is an example of a <%= application_name %> API request that retrieves details about a [User](#users).

### HTTP Request

`GET <%= api_url %>/api/users/:id`

HTTP Request describes the method and path of the endpoint. Most endpoints have a path formatted as */api/:resources/:id*.

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the User.

URL Parameters are variables which are included inside the path of the request.

### HTTP Headers

Header |  Description
---------  | -----------
Authorization      | Use the format `BEARER ${access_token}`. Example: `Authorization: BEARER e1d62c34-f7f5-4713-a874-31491e7707de`. Most endpoints require this header. Some exceptions include [Authentication](#authentication) and [Setup](#setup).
Content-Type      | Use `application/json` for `POST` and `PUT` requests. This is needed to ensure your JSON payload is parsed.  Exceptions to this rule include file uploads where `application/x-www-form-urlencoded` and `application/octet-stream` should be used instead.

HTTP Headers are used to authorize the acting user via a valid [access token](#get-access-token), and to describe the type of content being sent, which is typically JSON.

### Query Parameters

Parameter | Description
--------- | -------
phrase | If specified will return a partial match on name.

Query Parameters are variables included in the query string portion of the request url, after the `?` and they are delimited by `&`. Be sure to html encode your parameters and values!

### JSON Parameters

Parameter | Description
--------- | -----------
name | A unique string.

JSON Parameters define the variables to be included in the body of the request. These are typically under the the context of an object, such as `"contact"`.

### HTTP Response

The HTTP status **200 OK** will be returned when a request is successful and an HTTP [Error](#errors) status will be returned when a request fails.

Most endpoints respond with *Content-Type: application/json* and a body that contains JSON data.

This is an example of an API response that retrieves a [Contact](#contacts) record by ID.

#### Example

```shell
curl "<%= curl_url %>/api/monitoring/contacts/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns HTTP 200 and JSON structured like this:

```json
{
  "contact": {
    "id": 1,
    "name": "<%= application_name %> Admin",
    "emailAddress": "admin@<%= company_domain %>",
    "smsAddresss": null
  }
}
```

This is an example of a successful response that contains the specified record.

#### Error Example

```shell
curl "<%= curl_url %>/api/monitoring/contacts/999999" \
  -H "Authorization: BEARER <%= curl_token %>"
```


> The above command returns HTTP 404 and JSON structured like this:

```json
{
  "success": false,
  "msg": "Contact not found for this account"
}
```

This is an example of a 404 error response returned when the specified record was not found.
