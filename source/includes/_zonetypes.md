## Cloud Types

<!--
## Get All Cloud Types
-->

Fetch a paginated list of available cloud types. This returns the configuration options for each type.

```shell
curl "$MORPHEUS_API_URL/api/zone-types"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this

```json
{
  "zoneTypes": [
    {
      "id": 3,
      "name": "Amazon",
      "code": "amazon",
      "description": "amazon zone",
      "serverTypes": [],
      "optionTypes": []
    },
    {
      "id": 2,
      "name": "Openstack",
      "code": "openstack",
      "description": "openstac zone",
      "serverTypes": [],
      "optionTypes": []
    },
    {
      "id": 1,
      "name": "Standard",
      "code": "standard",
      "description": "Standard zone - manually managed servers or virtual machines"
      "serverTypes": [],
      "optionTypes": []
    }
  ]
}
```

### HTTP Request

`GET https://api.gomorpheus.com/api/zone-types`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max |  | Max number of results to return. Default is all (no limit).
offset | 0 | Offset of records you want to load
sort | displayOrder | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
name |  | Filter by name or code
code |  | Filter by code
phrase |  | Filter by wildcard search of name, code and description
provisionType |  | Filter by [Provision Type](#provision-types) code

## Get Specific Cloud Type

```shell
curl "$MORPHEUS_API_URL/api/zone-types/1"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
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
    serverTypes: [],
    optionTypes: []
  }
}
```
### HTTP Request

`GET https://api.gomorpheus.com/api/zone-types/:id`

