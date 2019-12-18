## Errors

```shell
curl "$MORPHEUS_API_URL/api/foobar" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```


> The above command returns HTTP 404 and JSON structured like this:

```json
{
  "success": false,
  "msg": "Unable to find api endpoint GET /api/foobar"
}
```

When the Morpheus API encounters an error it returns an HTTP status like **400** instead of **200 OK**.  The response body contains JSON.

### Error Codes

The Morpheus API uses the following error codes:

Error Code | Description
---------- | -------
400 | Bad Request -- Your request failed. Check your request parameters and try again.
401 | Unauthorized -- Your API key is invalid. Check your Authorization header.
403 | Forbidden -- Your API key does not have the required role or permissions.
404 | Not Found -- The specified resource could not be found.
405 | Method Not Allowed -- You tried to access a resource with an invalid method.
406 | Not Acceptable -- You requested a format that isn't json.
410 | Gone -- The entity requested has been removed from our servers.
418 | I'm a teapot.
429 | Too Many Requests -- You're asking too much of the server. Slow down!
500 | Internal Server Error -- We had a problem with our server. Try again later.
503 | Service Unavailable -- We're temporarially offline for maintanance. Please try again later.

### Troubleshooting

The HTTP response body contains JSON with informationa bout the error that has occured.

#### 400 Error

This error is returned if the request could not be completed as requested. This usually means a required parameter is missing or invalid. This type of response usually includes a `msg` describing the error and an `errors` object to indicate which parameters were invalid.

```json
{
  "success": false,
  "msg": "Unable to save contact",
  "errors": {
    "email": "Please enter a valid email address"
  }
}
```

#### 401 Error

This error is returned if your access token is invalid or expired.

```json
{
  "error": "invalid_token",
  "error_description": "Invalid access token: bad-token"
}
```

#### 403 Error

This error is seen if you try to access an endpoint without the required permissions.

```json
{
  "success": false,
  "msg": "You do not have permissions to access this api endpoint"
}
```

#### 404 Error

This error is returned when the API path is unknown.  It can also be seen if a resource is not found by the specified ID.

```json
{
  "success": false,
  "msg": "Unable to find api endpoint GET /api/foobar"
}
```

It can also be seen if a resource could be not be found by the specified ID.

```json
{
  "success": false,
  "msg": "App not found"
}
```


#### 500 Error

This error indicates something went wrong with the request and an unexpected error has occured.

```json
{
  "success": false,
  "msg": "Looks like the server threw a gasket"
}
```

