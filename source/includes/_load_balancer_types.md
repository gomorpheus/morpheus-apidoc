## Load Balancer Types

Provides API for viewing Load Balancer Types and their configuration options.

## Get All Load Balancer Types

```shell
curl "<%= curl_url %>/api/load-balancer-types"
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "loadBalancerTypes": [
    {
      "id": 7,
      "name": "A10 (aXAPI v3)",
      "code": "a10AXvThunder",
      "enabled": true,
      "internal": false,
      "creatable": true,
      "createType": "multi",
      "optionTypes": [

      ],
      "vipOptionTypes": [

      ]
    },
    {
      "id": 10,
      "name": "Amazon ALB",
      "code": "amazon-alb",
      "enabled": true,
      "internal": false,
      "creatable": true,
      "createType": "multi",
      "optionTypes": [

      ],
      "vipOptionTypes": [

      ]
    },
    {
      "id": 8,
      "name": "AVI",
      "code": "avi",
      "enabled": true,
      "internal": false,
      "creatable": true,
      "createType": "multi",
      "optionTypes": [

      ],
      "vipOptionTypes": [

      ]
    },
    {
      "id": 9,
      "name": "Azure Load Balancer",
      "code": "azure",
      "enabled": true,
      "internal": false,
      "creatable": true,
      "createType": "multi",
      "optionTypes": [

      ],
      "vipOptionTypes": [

      ]
    },
    {
      "id": 13,
      "name": "Citrix NetScaler",
      "code": "netScaler",
      "enabled": true,
      "internal": false,
      "creatable": true,
      "createType": "multi",
      "optionTypes": [

      ],
      "vipOptionTypes": [

      ]
    },
    {
      "id": 5,
      "name": "F5 BigIP (v11.4+)",
      "code": "bigip",
      "enabled": true,
      "internal": false,
      "creatable": true,
      "createType": "multi",
      "optionTypes": [

      ],
      "vipOptionTypes": [

      ]
    },
    {
      "id": 14,
      "name": "FortiADC",
      "code": "fortiadc",
      "enabled": true,
      "internal": false,
      "creatable": true,
      "createType": "multi",
      "optionTypes": [

      ],
      "vipOptionTypes": [

      ]
    },
    {
      "id": 11,
      "name": "HAProxy Container",
      "code": "haproxyContainer",
      "enabled": true,
      "internal": true,
      "creatable": true,
      "createType": "multi",
      "optionTypes": [

      ],
      "vipOptionTypes": [

      ]
    },
    {
      "id": 19,
      "name": "NSX-T",
      "code": "nsx-t",
      "enabled": true,
      "internal": false,
      "creatable": true,
      "createType": "multi",
      "optionTypes": [

      ],
      "vipOptionTypes": [

      ]
    }
  ],
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 9,
    "total": 9
  }
}

```

This endpoint retrieves all Load Balancer Types.

### HTTP Request

`GET <%= api_url %>/api/load-balancer-types`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
optionTypes | false | Pass `true` to include optionTypes in the response for each load balancer type.
phrase |  | Filter by wildcard search of name and code
name |  | Filter by name
code |  | Filter by code

## Get a Specific Load Balancer Type

```shell
curl "<%= curl_url %>/api/load-balancer-types/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "loadBalancerType": {
    "id": 19,
    "name": "NSX-T",
    "code": "nsx-t",
    "enabled": true,
    "internal": false,
    "creatable": true,
    "createType": "multi",
    "optionTypes": [],
    "vipOptionTypes": []
  }
}
```
This endpoint will retrieve a specific load balancer type by id.

### HTTP Request

`GET <%= api_url %>/api/load-balancer-types/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the load balancer type
