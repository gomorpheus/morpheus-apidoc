# Ping

```shell
curl "<%= curl_url %>/api/ping" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "buildVersion": "4.2.2"
}
```

### HTTP Request

`GET <%= api_url %>/api/ping`


This endpoint can be used to check the remote appliance build version and some other basic information.

This is an unsecured endpoint and does not require authorization. However, `buildVersion` will not be returned unless you are authenticated with a valid access token.
