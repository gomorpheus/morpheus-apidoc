# Zone Types

Provides a means to find out which zone types are available for zone provisioning and in the  future what config properties are required.
.
## Get All Zone Types

```shell
curl "https://api.gomorpheus.com/api/zone-types"
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structured like this

```json
{
  "zoneTypes": [
    {
      "id": 3,
      "name": "Amazon",
      "code": "amazon",
      "description": "amazon zone"
    },
    {
      "id": 2,
      "name": "Openstack",
      "code": "openstack",
      "description": "openstac zone"
    },
    {
      "id": 1,
      "name": "Standard",
      "code": "standard",
      "description": "Standard zone - manually managed servers or virtual machines"
    }
  ]
}
```

### HTTP Request

`GET https://api.gomorpheus.com/api/zone-types`

## Get Specific Zone Type

```shell
curl "https://api.gomorpheus.com/api/zone-types/1"
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structured like this

```json
{
  "success": true,
  "zoneType": {
    "id": 1,
    "name": "Standard",
    "code": "standard",
    "description": "Standard zone - manually managed servers or virtual machines"
  }
}
```
### HTTP Request

`GET https://api.gomorpheus.com/api/zone-types/:id`

