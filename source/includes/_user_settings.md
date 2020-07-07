## User Settings

Provides API for managing your own user settings and api access tokens.

<!--## Get User Settings-->

```shell
curl "$MORPHEUS_API_URL/api/user-settings" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "user": {
    "id": 1,
    "username": "admin",
    "firstName": "Admin",
    "lastName": "",
    "email": "admin@morpheustestdata.com",
    "linuxUsername": "morphadmin",
    "linuxPassword": "************",
    "linuxKeyPairId": null,
    "windowsUsername": null,
    "windowsPassword": null,
    "avatar": null,
    "receiveNotifications": true
  },
  "accessTokens": [
    {
      "clientId": "morph-cli",
      "username": "admin",
      "expiration": "2019-11-20T02:19:18Z",
      "tokenType": "bearer"
    }
  ]
}
```

This endpoint retrieves your user settings and API access token information.

### HTTP Request

`GET https://api.gomorpheus.com/api/user-settings`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
userId      | (current user) | ID of User *Only available to the master account.*

## Update User Settings

```shell
curl -XPUT "$MORPHEUS_API_URL/api/user-settings" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
  "user": {
    "receiveNoticiations": true
  }
}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/user-settings`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
userId      | (current user) | ID of User *Only available to the master account.*

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
username      |  | Username
email      |  | Email
firstName      |  | First Name
lastName      |  | Last Name
password      |  | Change your password
linuxUsername      |  | Linux Username
linuxPassword      |  | Linux Password
linuxKeyPairId      |  | Linux Key Pair ID
windowsUsername      |  | Windows Username
windowsPassword      |  | Windows Password
receiveNotifications      |  | Receive Notifications (true or false)

## Update Avatar Image

```shell
curl -XPOST "$MORPHEUS_API_URL/api/user-settings/avatar" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -F 'user.avatar=@filename'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`POST https://api.gomorpheus.com/api/user-settings/avatar`

### HTTP Headers

Header | Description
--------- | -----------
Content-Type     | `multipart/form-data` is expected.

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
userId      | (current user) | ID of User *Only available to the master account.*

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
user.avatar      |  | Image File png,jpg,svg

Upload a new avatar image.  Expects multipart form data as the request format, not JSON.

## Delete Avatar Image

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/user-settings/avatar" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`DELETE https://api.gomorpheus.com/api/user-settings/avatar`

Delete your avatar image.

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
userId      | (current user) | ID of User *Only available to the master account.*

## Regenerate API Access Token

```shell
curl -XPUT "$MORPHEUS_API_URL/api/user-settings/regenerate-access-token?clientId=morph-api" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/user-settings/regenerate-access-token?clientId=:clientId`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
clientId      |  | Client ID
userId      | (current user) | ID of User *Only available to the master account.*


> The above command returns JSON structured like this:

```json
{
  "success": true,
  "token": "a936c304-374d-42c3-8634-8f825756d240"
}
```

This endpoint regenerates your API access token for the specified client. If a current token exists, it is revoked and a new token is returned.

## Revoke API Access Token

```shell
curl -XPUT "$MORPHEUS_API_URL/api/user-settings/clear-access-token?clientId=morph-api" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/user-settings/clear-access-token?clientId=:clientId`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
clientId      |  | Client ID
userId      | (current user) | ID of User *Only available to the master account.*

This endpoint revokes your API access token for the specified client.

## Get Available API Clients

```shell
curl "$MORPHEUS_API_URL/api/user-settings/api-clients" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
    "clients": [
    {
      "clientId": "morph-api"
    },
    {
      "clientId": "morph-cli"
    }
  ]
}
```

### HTTP Request

`GET https://api.gomorpheus.com/api/user-settings/api-clients`

This endpoint retrieves a list of available API clients.

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
userId      | (current user) | ID of User *Only available to the master account.*
