# Ping

```shell
curl "$MORPHEUS_API_URL/api/ping"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "buildVersion": "4.2.1",
  "applianceUrl": "https://api.morpheusdata.com/",
  "setupNeeded": false,
  "hub": {
    "enabled": true,
    "url": "https://morpheushub.com"
  }
}
```

### HTTP Request

`GET https://api.gomorpheus.com/api/ping`


This endpoint can be used to check the remote appliance build version and some other basic information.

<aside class="info">
This endpoint is public and does not require authorization.
</aside>

<aside class="info">
<b>Deprecation notice.</b> API versions before 4.2.1 support this endpoint at <code>/api/setup/check</code>. This old path still works but may be deprecated in the future.
</aside>