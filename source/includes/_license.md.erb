# License

The License API can be used to view information about your currently installed license key, and install new licenses.

## Get Current License


```shell
curl "<%= curl_url %>/api/license" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "license": {
    "productTier": "enterprise",
    "startDate": "2018-03-08T00:00:00Z",
    "endDate": "2020-04-07T00:00:00Z",
    "maxInstances": 0,
    "maxMemory": 0,
    "maxStorage": 0,
    "hardLimit": false,
    "freeTrial": false,
    "multiTenant": true,
    "whitelabel": true,
    "reportStatus": true,
    "supportLevel": "standard",
    "accountName": "Master",
    "config": {
    },
    "features": {
      "dashboard": true,
      "guidance": true,
      "discovery": true,
      "analytics": true,
      "scheduling": true,
      "approvals": true,
      "usage": true,
      "activity": true,
      "instances": true,
      "apps": true,
      "templates": true,
      "automation": true,
      "virtualImages": true,
      "library": true,
      "migrations": true,
      "deployments": true,
      "groups": true,
      "clouds": true,
      "hosts": true,
      "network": true,
      "loadBalancers": true,
      "storage": true,
      "keyPairs": true,
      "sslCertificates": true,
      "boot": true,
      "backups": true,
      "cypher": true,
      "archives": true,
      "imageBuilder": true,
      "tenants": true,
      "plans": true,
      "pricing": true,
      "users": true,
      "userGroups": true,
      "monitoring": true,
      "logging": true,
      "monitoringServices": true,
      "loggingServices": true,
      "backupServices": true,
      "dnsServices": true,
      "codeService": true,
      "buildServices": true,
      "loadBalancerServices": true,
      "ipamServices": true,
      "approvalServices": true,
      "cmdbServices": true,
      "deploymentServices": true,
      "automationServices": true,
      "serviceDiscoveryServices": true,
      "identityServices": true,
      "trustServices": true
    },
    "zoneTypes": null,
    "lastUpdated": "2019-08-14T13:42:18Z",
    "dateCreated": "2019-08-14T13:42:18Z"
  },
  "currentUsage": {​
    "memory": 12014876160,
    "storage": 177937354752,
    "workloads": 11
  }​
}
```

This endpoint can be used to inspect the currently installed license.

### HTTP Request

`GET <%= api_url %>/api/license`

### HTTP Headers

Header | Description
--------- | -----------
Authorization     | A valid access token

## Install License

```shell
curl -XPOST "<%= curl_url %>/api/license" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "license": "4704270b94ab7713e8eaca4c82917d27b5b2a1cc95a1818d71b4648c3f821a18a20b78ba9623f8609cbc3712b96fb4c68bbef1880c16a5946a198c1ff6943badef07458898df99b83cddca7bc33e883a54b6025fbd5b8e84d83c419d2ca5b7ec847227b2b63d1ccbcf6a91fcc9dc4e9bd26321166bb04e54983fc858c5c2f7c7893741f435f4921ba33a9778ec714a6a95054a074ff6969dda1b4"
}'
```

> The above command returns JSON structured the same as [Get License](#get-current-license)

### HTTP Request

`POST <%= api_url %>/api/license`

### HTTP Headers

Header | Description
--------- | -----------
Authorization     | A valid access token
Content-Type     | `application/json`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
license      |  | License Key, an encrypted string that should be kept secret.

This endpoint installs a new license in the <%= application_name %> appliance.

<aside class="info">
Be careful. This will replace your current license key, which may impact the features available in the <%= application_name %> appliance.  Make sure you have a copy of your current license key in case you want to roll-back by installing the previous key.
</aside>

## Test License

This endpoint can be used to decode a license to see if it is valid and inspect the license settings, such as who it belongs to and the enabled features.  This is only a test, it does not install the key, or make any changes to your appliance.

```shell
curl -XPOST "<%= curl_url %>/api/license/test" \
  -H "Authorization: Bearer <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "license": "4704270b94ab7713e8eaca4c82917d27b5b2a1cc95a1818d71b4648c3f821a18a20b78ba9623f8609cbc3712b96fb4c68bbef1880c16a5946a198c1ff6943badef07458898df99b83cddca7bc33e883a54b6025fbd5b8e84d83c419d2ca5b7ec847227b2b63d1ccbcf6a91fcc9dc4e9bd26321166bb04e54983fc858c5c2f7c7893741f435f4921ba33a9778ec714a6a95054a074ff6969dda1b4"
}'
```

> The above command returns JSON structured the same as [Get License](#get-current-license)

### HTTP Request

`POST <%= api_url %>/api/license/test`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
license      |  | License Key, an encrypted string that should be kept secret.

<aside class="info">
This is a way to inspect a license before you install it.
</aside>

## Uninstall License

This endpoint will remove the currently installed license key.
Be sure to have a copy of your license key saved before you uninstall it.

```shell
curl -XDELETE "<%= curl_url %>/api/license" \
  -H "Authorization: Bearer <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "license": "4704270b94ab7713e8eaca4c82917d27b5b2a1cc95a1818d71b4648c3f821a18a20b78ba9623f8609cbc3712b96fb4c68bbef1880c16a5946a198c1ff6943badef07458898df99b83cddca7bc33e883a54b6025fbd5b8e84d83c419d2ca5b7ec847227b2b63d1ccbcf6a91fcc9dc4e9bd26321166bb04e54983fc858c5c2f7c7893741f435f4921ba33a9778ec714a6a95054a074ff6969dda1b4"
}'
```

> The above command returns JSON Structured like this:


```json
{"success":true}
```

### HTTP Request

`DELETE <%= api_url %>/api/license`

<aside class="danger">
Be aware that the appliance functionality will be restricted without a license key installed.
</aside>
