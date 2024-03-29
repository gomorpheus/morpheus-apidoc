# Billing

Provides API interfaces for viewing billing usage information by tenant, zone, instance or server.  By default, usage is returned is from the beginning of the current month until now.  The date range is parameterized but the end date cannot exceed the current date.

## Billing By Tenant

```shell
curl "<%= curl_url %>/api/billing/account" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "billingInfo": {
    "accountId": 1,
    "accountUUID": "775333da-8487-11ec-a8a3-0242ac120002",
    "name": "<%= company_name %>",
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

`GET <%= api_url %>/api/billing/account`

### Query Parameters

Parameter | Default                        | Description
--------- | ------------------------------ | -----------
startDate | Beginning of the current month |
endDate   | Now                            |
includeUsages | true                       | Optional ability to suppress the usage records
maxUsages | null                       | Optional ability to limit the usages returned
offsetUsages | null                       | Optional ability to offset the usages returned, for use with maxUsages to paginate
includeComputeServers | true                       | Optional ability to exclude compute servers
includeInstances | true                       | Optional ability to exclude instances
includeDiscoveredServers | true                       | Optional ability to exclude discovered servers
includeLoadBalancers | true                       | Optional ability to exclude load balancers
includeVirtualImages | true                       | Optional ability to exclude virtual images
includeSnapshots | true                       | Optional ability to exclude snapshots

## Billing For a Specific Tenant

Will retrieve billing information for a specific tenant, if it is the current account or a sub account of the requesting
user's account.

```shell
curl "<%= curl_url %>/api/billing/account/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "billingInfo": {
    "accountId": 1,
    "accountUUID": "775333da-8487-11ec-a8a3-0242ac120002",
    "name": "<%= company_name %>",
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

`GET <%= api_url %>/api/billing/account/:id`

### Query Parameters

Parameter | Default                        | Description
--------- | ------------------------------ | -----------
startDate | Beginning of the current month |
endDate   | Now                            |
includeUsages | true                       | Optional ability to suppress the usage records
maxUsages | null                       | Optional ability to limit the usages returned
offsetUsages | null                       | Optional ability to offset the usages returned, for use with maxUsages to paginate
includeComputeServers | true                       | Optional ability to exclude compute servers
includeInstances | true                       | Optional ability to exclude instances
includeDiscoveredServers | true                       | Optional ability to exclude discovered servers
includeLoadBalancers | true                       | Optional ability to exclude load balancers
includeVirtualImages | true                       | Optional ability to exclude virtual images
includeSnapshots | true                       | Optional ability to exclude snapshots

## Billing For All Zones

```shell
curl "<%= curl_url %>/api/billing/zones" \
  -H "Authorization: BEARER <%= curl_token %>"
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

`GET <%= api_url %>/api/billing/zones`

### Query Parameters

Parameter | Default                        | Description
--------- | ------------------------------ | -----------
startDate | Beginning of the current month |
endDate   | Now                            |
includeUsages | true                       | Optional ability to suppress the usage records
maxUsages | null                       | Optional ability to limit the usages returned
offsetUsages | null                       | Optional ability to offset the usages returned, for use with maxUsages to paginate
includeTenants | false                     | Optional ability to include all subtenant billing information when calling from a master tenant user
accountId |                                | Optional ability to scope billing information to a subtenant when calling from a master tenant user. When specified with "includeTenants=true" accountId is ignored
includeComputeServers | true                       | Optional ability to exclude compute servers
includeInstances | true                       | Optional ability to exclude instances
includeDiscoveredServers | true                       | Optional ability to exclude discovered servers
includeLoadBalancers | true                       | Optional ability to exclude load balancers
includeVirtualImages | true                       | Optional ability to exclude virtual images
includeSnapshots | true                       | Optional ability to exclude snapshots

## Billing For a Specific Zone

```shell
curl "<%= curl_url %>/api/billing/zones/0801f6cd-4423-489f-859f-ee6ce24fd2ef" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "billingInfo": {
    "zoneName": "",
    "zoneId": 1,
    "zoneUUID": "0801f6cd-4423-489f-859f-ee6ce24fd2ef",
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

Retrieves billing information for a specific zone in the requestor's account. Use zoneUUID whenever possible.

### HTTP Request

`GET <%= api_url %>/api/billing/zones/:zoneUUID|:id`

### Query Parameters

Parameter | Default                        | Description
--------- | ------------------------------ | -----------
startDate | Beginning of the current month |
endDate   | Now                            |
includeUsages | true                       | Optional ability to suppress the usage records
maxUsages | null                       | Optional ability to limit the usages returned
offsetUsages | null                       | Optional ability to offset the usages returned, for use with maxUsages to paginate
includeTenants | false                     | Optional ability to include all subtenant billing information when calling from a master tenant user
accountId |                                | Optional ability to scope billing information to a subtenant when calling from a master tenant user. When specified with "includeTenants=true" accountId is ignored
includeComputeServers | true                       | Optional ability to exclude compute servers
includeInstances | true                       | Optional ability to exclude instances
includeDiscoveredServers | true                       | Optional ability to exclude discovered servers
includeLoadBalancers | true                       | Optional ability to exclude load balancers
includeVirtualImages | true                       | Optional ability to exclude virtual images
includeSnapshots | true                       | Optional ability to exclude snapshots

## Billing For All Servers

```shell
curl "<%= curl_url %>/api/billing/servers" \
  -H "Authorization: BEARER <%= curl_token %>"
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
        "refUUID": "dca94ff0-2d5d-4e1e-985c-253e498140bf",
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

`GET <%= api_url %>/api/billing/servers`

### Query Parameters

Parameter | Default                        | Description
--------- | ------------------------------ | -----------
startDate | Beginning of the current month |
endDate   | Now                            |
includeUsages | true                       | Optional ability to suppress the usage records
maxUsages | null                       | Optional ability to limit the usages returned
offsetUsages | null                       | Optional ability to offset the usages returned, for use with maxUsages to paginate
includeTenants | false                     | Optional ability to include all subtenant billing information when calling from a master tenant user
accountId |                                | Optional ability to scope billing information to a subtenant when calling from a master tenant user. When specified with "includeTenants=true" accountId is ignored

## Billing For a Specific Server

```shell
curl "<%= curl_url %>/api/billing/servers/dca94ff0-2d5d-4e1e-985c-253e498140bf" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "billingInfo": {
    "refType": "computeServer",
    "refUUID": "dca94ff0-2d5d-4e1e-985c-253e498140bf",
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

Retrieves billing information for a specific server (container host) in the requestor's account. Use refUUID whenever possible.

### HTTP Request

`GET <%= api_url %>/api/billing/servers/:refUUID|:id`

### Query Parameters

Parameter | Default                        | Description
--------- | ------------------------------ | -----------
startDate | Beginning of the current month |
endDate   | Now                            |
includeUsages | true                       | Optional ability to suppress the usage records
maxUsages | null                       | Optional ability to limit the usages returned
offsetUsages | null                       | Optional ability to offset the usages returned, for use with maxUsages to paginate
includeTenants | false                     | Optional ability to include all subtenant billing information when calling from a master tenant user
accountId |                                | Optional ability to scope billing information to a subtenant when calling from a master tenant user. When specified with "includeTenants=true" accountId is ignored

## Billing For All Instances

```shell
curl "<%= curl_url %>/api/billing/instances" \
  -H "Authorization: BEARER <%= curl_token %>"
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

`GET <%= api_url %>/api/billing/instances`

### Query Parameters

Parameter | Default                        | Description
--------- | ------------------------------ | -----------
startDate | Beginning of the current month |
endDate   | Now                            |
includeUsages | true                       | Optional ability to suppress the usage records
maxUsages | null                       | Optional ability to limit the usages returned
offsetUsages | null                       | Optional ability to offset the usages returned, for use with maxUsages to paginate
includeTenants | false                     | Optional ability to include all subtenant billing information when calling from a master tenant user
accountId |                                | Optional ability to scope billing information to a subtenant when calling from a master tenant user. When specified with "includeTenants=true" accountId is ignored

## Billing For a Specific Instance

```shell
curl "<%= curl_url %>/api/billing/instances/cf31b12d-9aa9-4394-8fad-12a0fbc2515e" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "billingInfo": {
    "instanceId": 11,
    "instanceUUID": "cf31b12d-9aa9-4394-8fad-12a0fbc2515e",
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

Retrieves billing information for a instance in the requestor's account. Use instanceUUID whenever possible.

### HTTP Request

`GET <%= api_url %>/api/billing/instances/:instanceUUID|:id`

### Query Parameters

Parameter | Default                        | Description
--------- | ------------------------------ | -----------
startDate | Beginning of the current month |
endDate   | Now                            |
includeUsages | true                       | Optional ability to suppress the usage records
maxUsages | null                       | Optional ability to limit the usages returned
offsetUsages | null                       | Optional ability to offset the usages returned, for use with maxUsages to paginate
includeTenants | false                     | Optional ability to include all subtenant billing information when calling from a master tenant user
accountId |                                | Optional ability to scope billing information to a subtenant when calling from a master tenant user. When specified with "includeTenants=true" accountId is ignored