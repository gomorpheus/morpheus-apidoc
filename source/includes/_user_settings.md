## User Settings

Provides API for managing your own user settings and api access tokens.

<!--## Get User Settings-->

```shell
curl "<%= curl_url %>/api/user-settings" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "user": {
    "id": 1,
    "username": "admin",
    "firstName": "Admin",
    "lastName": "",
    "email": "admin@<%= company_domain %>",
    "linuxUsername": "morphadmin",
    "linuxPassword": "************",
    "linuxKeyPairId": null,
    "windowsUsername": "morphadmin",
    "windowsPassword": "************",
    "avatar": "<%= api_url %>/storage/uploads/uploads/User/1/avatar/admin_original.png",
    "desktopBackground": "<%= api_url %>/storage/uploads/uploads/User/1/desktopBackground/vaperwave_wallpaper_original.jpg",
    "receiveNotifications": true,
    "defaultGroup": {
      "id": 1,
      "name": "Dev Group"
    },
    "defaultCloud": {
      "id": 1,
      "name": "Dev Cloud"
    },
    "defaultPersona": {
      "id": 1,
      "code": "standard",
      "name": "Standard"
    },
    "isUsing2FA": true,
    "tenant": {
      "id": 1,
      "name": "root"
    }
  },
  "accessTokens": [
    {
      "clientId": "morph-api",
      "username": "admin",
      "expiration": "2022-03-18T14:52:02Z",
      "tokenType": "bearer",
      "maskedAccessToken": "3ae256c-********",
      "maskedRefreshToken": "465f403-********"
    },
    {
      "clientId": "morph-cli",
      "username": "admin",
      "expiration": "2022-04-01T02:29:52Z",
      "tokenType": "bearer",
      "maskedAccessToken": "10fd4a4-********",
      "maskedRefreshToken": "2341f4b-********"
    }
  ]
}
```

This endpoint retrieves your user settings and API access token information.

### HTTP Request

`GET <%= api_url %>/api/user-settings`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
userId      | (current user) | ID of User *Only available to the master tenant.*

## Update User Settings

```shell
curl -XPUT "<%= curl_url %>/api/user-settings" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "user": {
    "receiveNoticiations": true,
    "defaultGroup": {
      "id": 1
    },
    "defaultCloud": {
      "id": 1
    },
    "defaultPersona": {
      "code": "standard"
    }
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

`PUT <%= api_url %>/api/user-settings`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
userId      | (current user) | ID of User *Only available to the master tenant.*

### JSON Parameters

These parameters should be passed under an object called `user`.

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
defaultGroup.id      |  | Default Group ID
defaultCloud.id      |  | Default Cloud ID
defaultPersona.code      |  | Default Persona code, eg. standard, serviceCatalog or vdi
avatar      |  | Avatar Image File png,jpg,svg (requires `Content-Type: multipart/form-data`)
desktopBackground      |  | Desktop Background for VDI Persona. Image File png,jpg,svg (requires `Content-Type: multipart/form-data`)

## Update Avatar

```shell
curl -XPOST "<%= curl_url %>/api/user-settings/avatar" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -F 'user.avatar=@filename'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

This endpoint updates your avatar image.  Expects multipart form data as the request format, not JSON.

### HTTP Request

`POST <%= api_url %>/api/user-settings/avatar`

### HTTP Headers

Header | Description
--------- | -----------
Content-Type     | `multipart/form-data` is expected.

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
userId      | (current user) | ID of User *Only available to the master tenant.*

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
user.avatar      |  | Image File png,jpg,svg

## Delete Avatar

```shell
curl -XDELETE "<%= curl_url %>/api/user-settings/avatar" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`DELETE <%= api_url %>/api/user-settings/avatar`

Delete your avatar image.

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
userId      | (current user) | ID of User *Only available to the master tenant.*

## Update Desktop Background

```shell
curl -XPOST "<%= curl_url %>/api/user-settings/desktop-background" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -F 'user.desktopBackground=@filename'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

This endpoint updates your desktop background image that is used in the Virtual Desktop persona. *Expects multipart form data as the request format, not JSON*.

### HTTP Request

`POST <%= api_url %>/api/user-settings/desktop-background`

### HTTP Headers

Header | Description
--------- | -----------
Content-Type     | `multipart/form-data` is expected.

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
userId      | (current user) | ID of User *Only available to the master tenant.*

### Parameters

Parameter | Default | Description
--------- | ------- | -----------
user.desktopBackground      |  | Image File png,jpg,svg


## Delete Desktop Background

```shell
curl -XDELETE "<%= curl_url %>/api/user-settings/desktop-background" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

Delete your desktop background image.

### HTTP Request

`DELETE <%= api_url %>/api/user-settings/desktop-background`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
userId      | (current user) | ID of User *Only available to the master tenant.*

## Regenerate API Access Token

```shell
curl -XPUT "<%= curl_url %>/api/user-settings/regenerate-access-token?clientId=morph-api" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`PUT <%= api_url %>/api/user-settings/regenerate-access-token?clientId=:clientId`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
clientId      |  | Client ID
userId      | (current user) | ID of User *Only available to the master tenant.*


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
curl -XPUT "<%= curl_url %>/api/user-settings/clear-access-token?clientId=morph-api" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

This endpoint revokes your API access token for the specified client.

### HTTP Request

`PUT <%= api_url %>/api/user-settings/clear-access-token?clientId=:clientId`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
clientId      |  | Client ID
userId      | (current user) | ID of User *Only available to the master tenant.*

## Get Available API Clients

```shell
curl "<%= curl_url %>/api/user-settings/api-clients" \
  -H "Authorization: BEARER <%= curl_token %>"
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

This endpoint retrieves a list of available API clients.

### HTTP Request

`GET <%= api_url %>/api/user-settings/api-clients`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
userId      | (current user) | ID of User *Only available to the master tenant.*
