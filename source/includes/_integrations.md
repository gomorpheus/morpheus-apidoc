# Integrations

Provides API interfaces for managing integrations within Morpheus

## Get All Integrations

```shell
curl "$MORPHEUS_API_URL/api/integrations" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "integrations": [
    {
      "id": 3,
      "name": "aws cloud",
      "enabled": true,
      "status": "ok",
      "integrationType": {
        "id": 12,
        "code": "amazonDns",
        "name": "Route 53"
      }
    }
  ]
}    
```

This endpoint retrieves list of integrations.

### HTTP Request

`GET https://api.gomorpheus.com/api/integrations`
