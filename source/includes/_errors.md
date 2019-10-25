## Errors

As with any API, errors can occur and when they do the Morpheus API returns an HTTP Error code.

### HTTP Error Codes

The Morpheus API uses the following error codes:

Error Code | Meaning
---------- | -------
400 | Bad Request -- Your request failed. It may just require you to pass more information.
401 | Unauthorized -- Your API key is invalid. Check your Authorization header.
403 | Forbidden -- Your API key does not have the required role or permissions.
404 | Not Found -- The specified resource could not be found.
405 | Method Not Allowed -- You tried to access a resource with an invalid method
406 | Not Acceptable -- You requested a format that isn't json
410 | Gone -- The entity requested has been removed from our servers
418 | I'm a teapot
429 | Too Many Requests -- You're asking too much of the server. Slow down!
500 | Internal Server Error -- We had a problem with our server. Try again later.
503 | Service Unavailable -- We're temporarially offline for maintanance. Please try again later.

### Error Response

The HTTP response usually contains a body with valid JSON about the error and what caused it.

#### 400 Error Response

```json
{
  "success": false,
  "errors": {
    "emailAddress": "Please enter a valid email address"
  }
}
```

#### 404 Error Response

```json
{
  "success": false,
  "msg": "Unable to find api endpoint GET /api/woot"
}
```
