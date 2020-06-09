# Billing

Provides API interfaces for viewing billing usage information by tenant, zone, instance or server.  By default, usage is returned is from the beginning of the current month until now.  The date range is parameterized but the end date cannot exceed the current date.

## Billing By Tenant

```shell
curl "$MORPHEUS_API_URL/api/billing/account" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "billingInfo": {
    "accountId": 1,
    "name": "morpheus",
    "startDate": "2017-02-01T07:00:00Z",
    "endDate": "2017-02-22T23:03:13Z",
    "priceUnit": "hour",
    "price": 0,
    "cost": 0,
    "zones": [
		  {
				"computeServers": [
					{
						"servers": [
						  {
						    "usages": [
							  ]
							}
						]
					}
				],
				"instances": [
				  {
				    "instances": [
					    {
							  "containers": {
							    "usages": [
								  ]
							  }
						  }
					  ]
					}
				]
			}
		]
  }
}

```

Retrieves billing information for the requesting user's account.

### HTTP Request

`GET https://api.gomorpheus.com/api/billing/account`

### Query Parameters

Parameter | Default                        | Description
--------- | ------------------------------ | -----------
startDate | Beginning of the current month |
endDate   | Now                            |
includeUsages | true                       | Optional ability to suppress the usage records

## Billing For a Specific Tenant

Will retrieve billing information for a specific tenant, if it is the current account or a sub account of the requesting
user's account.

```shell
curl "$MORPHEUS_API_URL/api/billing/account/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "billingInfo": {
    "accountId": 1,
    "name": "morpheus",
    "startDate": "2017-02-01T07:00:00Z",
    "endDate": "2017-02-22T23:03:13Z",
    "priceUnit": "hour",
    "price": 0,
    "cost": 0,
    "zones": [
      {
        "computeServers": [
          {
            "servers": [
              {
                "usages": [
                ]
              }
            ]
          }
        ],
        "instances": [
          {
            "instances": [
              {
                "containers": {
                  "usages": [
								  ]
                }
              }
            ]
          }
        ]
      }
    ]
  }
}
```

This endpoint will retrieve a specific account by id if the user has permission to access it.

### HTTP Request

`GET https://api.gomorpheus.com/api/billing/account/:id`

### Query Parameters

Parameter | Default                        | Description
--------- | ------------------------------ | -----------
startDate | Beginning of the current month |
endDate   | Now                            |
includeUsages | true                       | Optional ability to suppress the usage records


## Billing For All Zones

```shell
curl "$MORPHEUS_API_URL/api/billing/zones" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "billingInfo": {
    "startDate": "2017-02-01T07:00:00Z",
    "endDate": "2017-02-22T23:03:13Z",
    "priceUnit": "hour",
    "price": 0,
    "cost": 0,
    "zones": [
      {
        "computeServers": [
          {
            "servers": [
              {
                "usages": [
                ]
              }
            ]
          }
        ],
        "instances": [
          {
            "instances": [
              {
                "containers": {
                  "usages": [
                  ]
                }
              }
            ]
          }
        ]
      }
    ]
  }
}
```

Retrieves billing information for all zones on the requestor's account.

### HTTP Request

`GET https://api.gomorpheus.com/api/billing/zones`

### Query Parameters

Parameter | Default                        | Description
--------- | ------------------------------ | -----------
startDate | Beginning of the current month |
endDate   | Now                            |
includeUsages | true                       | Optional ability to suppress the usage records
includeTenants | false                     | Optional ability to include all subtenant billing information when calling from a master tenant user
accountId |                                | Optional ability to scope billing information to a subtenant when calling from a master tenant user. When specified with "includeTenants=true" accountId is ignored

## Billing For a Specific Zone

```shell
curl "$MORPHEUS_API_URL/api/billing/zones/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "billingInfo": {
    "zoneName": "",
    "zoneId": 1,
    "startDate": "2017-01-01T00:00:00Z",
    "endDate": "2017-01-31T23:59:59Z",
    "priceUnit": "hour",
    "computeServers": {
      "servers": [
        {
          "usages": [
          ]
        }
      ]
    },
    "instances": {
      "instances": [
        {
          "containers": [
            {
              "usages": [
                {
                  "applicablePrices": [
                  ]
                }
              ]
            }
          ]
        }
      ]
    }
  }
}
```

Retrieves billing information for a specific zone in the requestor's account.

### HTTP Request

`GET https://api.gomorpheus.com/api/billing/zones/:id`

### Query Parameters

Parameter | Default                        | Description
--------- | ------------------------------ | -----------
startDate | Beginning of the current month |
endDate   | Now                            |
includeUsages | true                       | Optional ability to suppress the usage records
includeTenants | false                     | Optional ability to include all subtenant billing information when calling from a master tenant user
accountId |                                | Optional ability to scope billing information to a subtenant when calling from a master tenant user. When specified with "includeTenants=true" accountId is ignored

## Billing For All Servers

```shell
curl "$MORPHEUS_API_URL/api/billing/servers" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "billingInfo": {
    "price": 0,
    "cost": 0,
    "startDate": "2017-03-01T07:00:00Z",
    "endDate": "2017-03-09T22:03:28Z",
    "servers": [
      {
        "refType": "computeServer",
        "refId": 1,
        "startDate": "2017-01-01T00:00:00Z",
        "endDate": "2017-01-31T23:59:59Z",
        "cost": 0,
        "price": 0,
        "usages": [
        ],
        "numUnits": 0,
        "unit": "hour",
        "name": "name"
      }
    ]
  }
}
```

Retrieves billing information for all servers (container hosts) on the requestor's account.

### HTTP Request

`GET https://api.gomorpheus.com/api/billing/servers`

### Query Parameters

Parameter | Default                        | Description
--------- | ------------------------------ | -----------
startDate | Beginning of the current month |
endDate   | Now                            |
includeUsages | true                       | Optional ability to suppress the usage records
includeTenants | false                     | Optional ability to include all subtenant billing information when calling from a master tenant user
accountId |                                | Optional ability to scope billing information to a subtenant when calling from a master tenant user. When specified with "includeTenants=true" accountId is ignored

## Billing For a Specific Server

```shell
curl "$MORPHEUS_API_URL/api/billing/servers/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "billingInfo": {
    "refType": "computeServer",
    "refId": 1,
    "startDate": "2017-01-01T00:00:00Z",
    "endDate": "2017-01-31T23:59:59Z",
    "cost": 0,
    "price": 0,
    "usages": [
    ],
    "numUnits": 0,
    "unit": "hour",
    "name": "name"
  }
}
```

Retrieves billing information for a specific server (container host) in the requestor's account.

### HTTP Request

`GET https://api.gomorpheus.com/api/billing/servers/:id`

### Query Parameters

Parameter | Default                        | Description
--------- | ------------------------------ | -----------
startDate | Beginning of the current month |
endDate   | Now                            |
includeUsages | true                       | Optional ability to suppress the usage records
includeTenants | false                     | Optional ability to include all subtenant billing information when calling from a master tenant user
accountId |                                | Optional ability to scope billing information to a subtenant when calling from a master tenant user. When specified with "includeTenants=true" accountId is ignored

## Billing For All Instances

```shell
curl "$MORPHEUS_API_URL/api/billing/instances" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "billingInfo": {
    "price": 0.0,
    "cost": 0.0,
    "startDate": "2017-01-01T00:00:00Z",
    "endDate": "2017-01-31T23:59:59Z",
    "instances": [
      {
        "containers": [
				  {
            "usages": [
            ],
            "numUnits": 0.0,
            "unit": "hour",
            "name": "name"
          }
        ]
      }
    ]
  }
}
```

Retrieves billing information for all instances on the requestor's account.

### HTTP Request

`GET https://api.gomorpheus.com/api/billing/instances`

### Query Parameters

Parameter | Default                        | Description
--------- | ------------------------------ | -----------
startDate | Beginning of the current month |
endDate   | Now                            |
includeUsages | true                       | Optional ability to suppress the usage records
includeTenants | false                     | Optional ability to include all subtenant billing information when calling from a master tenant user
accountId |                                | Optional ability to scope billing information to a subtenant when calling from a master tenant user. When specified with "includeTenants=true" accountId is ignored

## Billing For a Specific Instance

```shell
curl "$MORPHEUS_API_URL/api/billing/instances/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "billingInfo": {
    "instanceId": 11,
    "startDate": "2017-01-01T00:00:00Z",
    "endDate": "2017-01-31T23:59:59Z",
    "name": "name",
    "price": 0,
    "cost": 0,
    "containers": [
      {
        "usages": [
          {
            "applicablePrices": [
            ]
          }
        ],
        "numUnits": 0.0,
        "unit": "hour",
        "name": "name"
      }
    ]
  }
}
```

Retrieves billing information for a specific server in the requestor's account.

### HTTP Request

`GET https://api.gomorpheus.com/api/billing/instances/:id`

### Query Parameters

Parameter | Default                        | Description
--------- | ------------------------------ | -----------
startDate | Beginning of the current month |
endDate   | Now                            |
includeUsages | true                       | Optional ability to suppress the usage records
includeTenants | false                     | Optional ability to include all subtenant billing information when calling from a master tenant user
accountId |                                | Optional ability to scope billing information to a subtenant when calling from a master tenant user. When specified with "includeTenants=true" accountId is ignored
