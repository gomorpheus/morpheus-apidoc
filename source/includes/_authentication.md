# Authentication

The Morpheus API uses an OAUTH 2.0 based authentication model. 

Authentication is done by passing an access token in the [Authorization](#authorization-header) http header.

Use [Get Access Token](#get-access-token) to acquire a valid access token.

Most of the `/api` Morpheus API endpoints require authentication.  Some endpoints do not require authentication, and can be be accessed anonymously. This includes [Get Access Token](#get-access-token) and [Check Appliance](#check-appliance).


## Authorization Header

This header must be included in all requests that require authentication.

Header |  Description
---------  | -----------
Authorization      | Use the format `bearer access_token`. Example: `Authorization: bearer e1d62c34-f7f5-4713-a874-31491e7707de`


## Get Access Token

This endpoint provides authentication via the username and password of a morpheus [User](#users). The response includes a valid access token.  If your current token is expired, a new one will be created and returned.  By default, access tokens are valid for 1 year from the date they were created, or until it is refreshed.


```shell
curl -XPOST "$MORPHEUS_API_URL/oauth/token?grant_type=password&scope=write&client_id=morph-api" \
  -d 'username=admin' -d 'password=foobar'
```

> The above command returns JSON structured like this:

```json
{
  "access_token": "e1d62c34-f7f5-4713-a874-31491e7707de",
  "refresh_token": "718cc628-b89f-43f5-bef7-f39887b47e68",
  "token_type": "bearer",
  "expires_in": 30463819,
  "scope": "write"
}
```

### HTTP Request

`POST https://api.gomorpheus.com/oauth/token`

### HTTP Headers

Header | Description
--------- | -----------
Content-Type     | `application/x-www-form-urlencoded`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
client_id      |  | Client ID, use `morph-api`. Users may only have one access token per Client ID. The CLI uses `morph-cli`.
grant_type      | | OAuth Grant Type, use `password`.
scope      | | OAuth token scope, use `write`.

### Request Parameters

Parameter | Default | Description
--------- | ------- | -----------
username      |  | [User](#users) username. Subtenant users will need to pass their subdomain prefix like <code>domain\username</code>. The default tenant subdomain is the tenant account ID. Example: <code>2\neo</code>
password      |  | [User](#users) password


### Response

Name | Description
--------- | -----------
access_token | The access token for this user (scoped to client_id).
refresh_token | The refresh token for this user (scoped to client_id).
expires_in | The remaining seconds before the token expires. By default, access tokens are valid for 1 year or until it is refreshed.
token_type | The token type, this will be `bearer`.
scope | The scope, this will be `write`.


## Refresh Access Token

This endpoint allows refreshing your current access token to get a new token.  This is done by passing your current `refresh_token`. 
This provides a way to renew your client's session with the API, and extend the expiration date.

Your `refresh_token` is returned by [Get Access Token](#get-access-token).

<aside class="info">
This will render your current access token invalid, so you will need to update any scripts relying on it.
</aside>

```shell
curl -XPOST "$MORPHEUS_API_URL/oauth/token?grant_type=password&scope=write&client_id=morph-api" \
  -d 'username=admin' -d 'password=foobar'
```

> The above command returns JSON structured like this:

```json
{
  "access_token": "e1d62c34-f7f5-4713-a874-31491e7707de",
  "refresh_token": "718cc628-b89f-43f5-bef7-f39887b47e68",
  "token_type": "bearer",
  "expires_in": 30463819,
  "scope": "write"
}
```

### HTTP Request

`POST https://api.gomorpheus.com/oauth/token`

### HTTP Headers

Header | Default | Description
--------- | ------- | -----------
Content-Type      |  | Use `application/x-www-form-urlencoded`.

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
client_id      |  | Client ID, use `morph-api`. Users only have one access token per Client ID.
grant_type      | | OAuth Grant Type, use `refresh_token`.
scope      | | OAuth token scope, use `write`.

### Request Body

Parameter | Default | Description
--------- | ------- | -----------
refresh_token      |  | Refresh Token, the current refresh token, scoped to Client ID.

### Response

Name | Description
--------- | -----------
access_token | The access token for this user, scoped to Client ID.
refresh_token | The refresh token for this user, scoped to Client ID.
expires_in | The remaining seconds before the token expires. By default, access tokens are valid for 1 year or until it is refreshed.
token_type | The token type, this will be `bearer`.
scope | The scope, this will be `write`.

