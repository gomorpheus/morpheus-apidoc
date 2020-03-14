# Provisioning Licenses

Provides API interfaces for managing provisioning licenses within Morpheus.  This allows configuration of which Windows license keys should be installed when provisioning your virtual images.

## Get All Licenses

```shell
curl "$MORPHEUS_API_URL/api/provisioning-licenses" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "licenses": [
    {
      "id": 1,
      "name": "2012 R2 Standard",
      "description": "2012 R2 Standard",
      "licenseType": {
        "id": 1,
        "code": "win",
        "name": "Windows"
      },
      "licenseKey": "*************************AB3E",
      "orgName": "Acme Motors",
      "fullName": "Bugs Bunny",
      "licenseVersion": "2012 R2 Standard",
      "copies": 1,
      "reservationCount": 0,
      "tenants": [

      ],
      "virtualImages": [
        {
          "id": 2021,
          "name": "Windows-Server-R2-AL"
        }
      ],
      "account": {
        "id": 1,
        "name": "Acme"
      }
    },
    {
      "id": 2,
      "name": "Microsoft Windows Server 2012 R2 Standard Evaluation",
      "description": "Microsoft Windows Server 2012 R2 Standard Evaluation",
      "licenseType": {
        "id": 1,
        "code": "win",
        "name": "Windows"
      },
      "licenseKey": "*************************A41H",
      "orgName": "Acme Motors",
      "fullName": "Yosemite Sam",
      "licenseVersion": "2012 R2 SE",
      "copies": 105,
      "reservationCount": 0,
      "tenants": [

      ],
      "virtualImages": [
        {
          "id": 2022,
          "name": "Windows-Server-R2-SE"
        }
      ],
      "account": {
        "id": 1,
        "name": "Acme"
      }
    }
  ],
  "meta": {
    "size": 2,
    "total": 2,
    "offset": 0,
    "max": 25
  }
}
```

This endpoint retrieves all licenses.

### HTTP Request

`GET https://api.gomorpheus.com/api/provisioning-licenses`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Name, description and provision type name, restricts query to only load licenses which contain the phrase specified
name |  | Name filter, restricts query to only load license matching name specified


## Get a Specific License

```shell
curl "$MORPHEUS_API_URL/api/provisioning-licenses/2" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "license": {
    "id": 2,
    "name": "2012 R2 Standard",
    "description": "2012 R2 Standard",
    "licenseType": {
      "id": 1,
      "code": "win",
      "name": "Windows"
    },
    "licenseKey": "*************************AB3E",
    "orgName": "Acme Motors",
    "fullName": "Bugs Bunny",
    "licenseVersion": "2012 R2 Standard",
    "copies": 1,
    "reservationCount": 0,
    "tenants": [

    ],
    "virtualImages": [
      {
        "id": 2021,
        "name": "Windows-Server-R2-AL"
      }
    ],
    "account": {
      "id": 1,
      "name": "Acme"
    }
  }
}
```

This endpoint retrieves a specific license.

### HTTP Request

`GET https://api.gomorpheus.com/api/provisioning-licenses/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the license


## Get Reservations for Specific License

```shell
curl "$MORPHEUS_API_URL/api/provisioning-licenses/2/reservations" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "licenses": [
    {
      "resourceId": 55,
      "resourceType": "ComputeServer",
    },
    {
      "resourceId": 56,
      "resourceType": "ComputeServer",
    }
  ]
}
```

This endpoint retrieves all reserverations for a specific license. Each time a license is applied to a new server, a reservation is created, reducing the available copies for the license.

### HTTP Request

`GET https://api.gomorpheus.com/api/provisioning-licenses/:id/reservations`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the license

## Create a License

Use this command to create a new license.

```shell
curl -XPOST "$MORPHEUS_API_URL/api/provisioning-licenses" \
  -H "Authorization: Bearer $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
  "license": {
    "name": "Test Windows",
    "licenseType": "win",
    "licenseKey": "12345-678-ABCDEFG-HIJKL",
    "orgName": "Acme Motors",
    "fullName": "Bugs Bunny",
    "licenseVersion": "2012 R2 Standard",
    "copies": 5,
    "description": "A windows key for testing",
    "virtualImages": [
      1,2,3
    ]
  }
}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
  "license": {
    "id":3
  }
}
```

### HTTP Request

`POST https://api.gomorpheus.com/api/provisioning-licenses`

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Name
licenseType | Y | License Type - The license type code. e.g. `win`
licenseKey | Y | License Key - The license key, to be kept a secret.
orgName | N | Org Name - The Organization Name (if applicable) related to the license key
fullName | N | Full Name - The Full Name (if applicable) related to the license key
licenseVersion | N | License Version
copies | N | Copies - The number of times the key can be used. Default is `1`.
description | N | Description
virtualImages | N | Virtual Images - Array of Virtual Image IDs to associate with license.
tenants | N | Tenants - Array of tenants that are allowed to use the key.

## Update a License

```shell
curl -XPUT "$MORPHEUS_API_URL/api/provisioning-licenses/:id" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
  -H "Content-Type: application/json" \
  -d '{
    "license": {
      "name": "QA Windows Key",
      "copies": 5
    }
}'
```

> The above command returns JSON structured like this:

```json
{
  "success": true
  "license": {
    "id":3
  }
}
```

Use this command to update an existing license.

### HTTP Request

`PUT https://api.gomorpheus.com/api/provisioning-licenses/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the license

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Name
licenseVersion | N | License Version
copies | N | Copies - The number of times the key can be used. Default is `1`.
description | N | Description
virtualImages | N | Virtual Images - Array of Virtual Image IDs to associate with license.
tenants | N | Tenants - Array of tenants that are allowed to use the key.

## Delete a License

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/provisioning-licenses/:id" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a license.

### HTTP Request

`DELETE https://api.gomorpheus.com/api/provisioning-licenses/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the license
