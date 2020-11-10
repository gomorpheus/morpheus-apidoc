# Usage

Provides endpoints for viewing a list of usage for all your  Containers and [Servers](#servers). Morpheus keeps track of resource usage as the periods of time it was on or off. A new usage record is created every time a resource is started or stopped. Each usage record includes the applied pricing and accumualated charges during the interval. Price is based on the assigned [service plan](#service-plans).

This endpoint outputs usage data in the same format as the [Billing](#billing) api.

## List Usages

```shell
curl "$MORPHEUS_API_URL/api/usage"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "usages": [
    {
      "id": 28791,
      "zoneName": "aws",
      "name": "example",
      "planName": "Amazon T2 Nano - 1 Core, 0.5GB Memory",
      "startDate": "2020-10-26T16:48:54Z",
      "endDate": "2020-10-26T17:00:37Z",
      "status": "running",
      "price": 0.001668677955115256,
      "costDetails": {
        "refType": "container",
        "refUUID": "9287ee06-75c6-4772-840c-fab7b2d668bd",
        "refId": 938,
        "startDate": "2020-10-26T16:48:54Z",
        "endDate": "2020-10-26T17:00:37Z",
        "cost": 0.001668677955115256,
        "price": 0.001668677955115256,
        "numUnits": 0.195410555555,
        "unit": "hour",
        "currency": "USD",
        "usages": [
          {
            "cost": 0.001668677955115256,
            "price": 0.001668677955115256,
            "createdByUser": "Test User",
            "createdByUserId": 127,
            "siteId": 1,
            "siteName": "mygroup",
            "siteUUID": "9a18a409-e3b7-438b-b3d8-e393652f7c60",
            "siteCode": null,
            "currency": "USD",
            "startDate": "2020-10-26T16:48:54Z",
            "endDate": "2020-10-26T17:00:37Z",
            "status": "running",
            "metadata": [],
            "applicablePrices": [
              {
                "startDate": "2020-10-26T16:48:54Z",
                "endDate": "2020-10-26T17:00:37Z",
                "numUnits": 0.195410555555,
                "cost": 0.001668677955115256,
                "price": 0.001668677955115256,
                "currency": "USD",
                "prices": [
                  {
                    "type": "compute",
                    "pricePerUnit": 0.0069,
                    "costPerUnit": 0.0069,
                    "cost": 0.0013483328333295,
                    "price": 0.0013483328333295,
                    "quantity": null
                  },
                  {
                    "type": "storage",
                    "pricePerUnit": 0.000163934424,
                    "costPerUnit": 0.000163934424,
                    "cost": 3.203451686842893e-05,
                    "price": 3.203451686842893e-05,
                    "quantity": 10
                  }
                ]
              }
            ],
            "servicePlanId": 1,
            "servicePlanName": "Amazon T2 Nano - 1 Core, 0.5GB Memory"
          }
        ],
        "numUsages": 1,
        "totalUsages": 1,
        "hasMoreUsages": false,
        "foundPricing": true
      }
    }
  ],
  "meta": {
    "size": 25,
    "total": 28133,
    "offset": 0,
    "max": 25
  }
}
```

This endpoint retrieves a paginated list of usage records. The usages are scoped to only include resources you have access to.

### HTTP Request

`GET https://api.gomorpheus.com/api/usage`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order, default is `startDate desc`
direction | asc | Sort direction: asc or desc
phrase |  | Filter by wildcard search of resource name
type |  | Filter by a specific resource type: container, server, discoveredServer or loadBalancer
startDate |  | Filter by startDate greater than or equal to a specified date
endDate |  | Filter by endDate less than or equal to a specified date

