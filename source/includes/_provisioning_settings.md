# Provisioning Settings

Provides API interfaces for managing provisioning settings within Morpheus

<aside class="info">
This endpoint is available in Morpheus API version **4.2.x**
</aside>


## Get Provisioning Settings

```shell
curl "$MORPHEUS_API_URL/api/provisioning-settings" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "provisioningSettings": {
    "allowZoneSelection": true,
    "allowServerSelection": true,
    "requireEnvironments": true,
    "showPricing": true,
    "hideDatastoreStats": true,
    "crossTenantNamingPolicies": false,
    "reuseSequence": true,
    "cloudInitUsername": "root",
    "cloudInitPassword": "****",
    "cloudInitKeyPair": {
      "id": 3,
      "name": "stubby.toes"
    },
    "windowsPassword": null,
    "pxeRootPassword": null,
    "defaultTemplateType": {
      "id": 1,
      "name": "morpheus",
      "code": "morpheus"
    },
    "deployStorageProvider": {
      "id": 42,
      "name": "morpheus-deployments"
    }
  }
} 
```

This endpoint retrieves provisioning settings.

### HTTP Request

`GET https://api.gomorpheus.com/api/provisioning-settings`


## Update Provisioning Settings

```shell
curl -XPUT "$MORPHEUS_API_URL/api/provisioning-settings" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
        "provisioningSettings": {
          "allowZoneSelection": true,
          "allowServerSelection": true,
          "requireEnvironments": true,
          "showPricing": true,
          "hideDatastoreStats": true,
          "crossTenantNamingPolicies": true,
          "reuseSequence": true,
          "cloudInitUsername": "stubbytoes",
          "cloudInitPassword": "supersecret",
          "deployStorageProvider": {
            "id": 42
          },
          "defaultTemplateType": {
            "code": "kubernetes"
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

`PUT https://api.gomorpheus.com/api/provisioning-settings`

### JSON Parameters

Parameter | Description
--------- | -----------
allowZoneSelection | Use this to enable / disable allowing cloud selection
allowServerSelection | Use this to enable / disable allowing host selection
requireEnvironments | Use this to enable / disable requiring environment selection
showPricing | Use this to enable / disable showing pricing
hideDatastoreStats | Use this to enable / disable hiding datastore stats
crossTenantNamingPolicies | Use this to enable / disable cross-tenatn naming policies
reuseSequence | Use this to enable / disable reusing naming sequence numbers
cloudInitUsername | Cloud-init username
cloudInitPassword | Cloud-init password
cloudInitKeyPair.id | Cloud-init key pair ID
deployStorageProvider.id | Deployment archive storage provider ID
windowsPassword | Windows administrator password
pxeRootPassword | PXE Boot default root password
defaultTemplateType.code | Default blueprint type code