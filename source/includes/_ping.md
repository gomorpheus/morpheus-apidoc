# Ping

```shell
curl "$MORPHEUS_API_URL/api/ping"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "buildVersion": "4.2.2",
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

This is an unsecured endpoint. It does not require authorization.
