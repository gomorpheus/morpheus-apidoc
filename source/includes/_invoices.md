# Invoices

Provides API interfaces for viewing account invoices.

## Get All Invoices

```shell
curl "$MORPHEUS_API_URL/api/invoices" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "invoices": [
    {
      "id": 11337,
      "account": {
        "id": 1,
        "name": "root"
      },
      "group": {
        "id": 1,
        "name": "G1"
      },
      "cloud": {
        "id": 39,
        "name": "test-amazon"
      },
      "instance": {
        "id": 330,
        "name": "test-box"
      },
      "server": {
        "id": 2070,
        "name": "test-box"
      },
      "cluster": null,
      "plan": {
        "id": 1,
        "name": "Amazon T2 Nano - 1 Core, 0.5GB Memory"
      },
      "refType": "Container",
      "refId": 326,
      "refName": "test-box_326",
      "refCategory": "vm",
      "interval": "month",
      "period": "202003",
      "estimate": true,
      "active": true,
      "startDate": "2020-03-01T05:00:00+0000",
      "endDate": "2020-04-01T03:59:59+0000",
      "intervalPrice": 6.250800024,
      "intervalCost": 6.2508,
      "computePrice": 5.0508,
      "computeCost": 5.0508,
      "memoryPrice": 0.0,
      "memoryCost": 0.0,
      "storagePrice": 1.2,
      "storageCost": 1.2,
      "networkPrice": 0.0,
      "networkCost": 0.0,
      "licensePrice": 0.0,
      "licenseCost": 0.0,
      "extraPrice": 0.0,
      "extraCost": 0.0,
      "totalPrice": 5.488956027524173,
      "totalCost": 5.488956006449279,
      "runningPrice": 1.5853593979929612,
      "runningCost": 1.58535939190596,
      "offTime": 0,
      "powerState": "on",
      "powerDate": "2020-03-04T23:33:23+0000",
      "runningMultiplier": 0.2536250387,
      "lastCostDate": "2020-03-12T19:59:59+0000",
      "lastActualDate": null,
      "rawData": {
      },
      "runningCostRatio": 3.4807497380148065,
      "actualRunningCostRatio": null,
      "runningPriceRatio": 3.480749738014807,
      "actualRunningPriceRatio": null,
      "totalCostEstimateRatio": 0.0,
      "totalPriceEstimateRatio": 0.0,
      "dateCreated": "2020-03-04T23:35:07+0000",
      "lastUpdated": "2020-03-12T19:00:01+0000"
    },
    {
      "id": 11338,
      "account": {
        "id": 1,
        "name": "root"
      },
      "group": {
        "id": 1,
        "name": "G1"
      },
      "cloud": null,
      "instance": {
        "id": 330,
        "name": "test-box"
      },
      "server": null,
      "cluster": null,
      "plan": {
        "id": 1,
        "name": "Amazon T2 Nano - 1 Core, 0.5GB Memory"
      },
      "refType": "Instance",
      "refId": 330,
      "refName": "test-box",
      "refCategory": "vm",
      "interval": "month",
      "period": "202003",
      "estimate": true,
      "active": true,
      "startDate": "2020-03-01T05:00:00+0000",
      "endDate": "2020-04-01T03:59:59+0000",
      "intervalPrice": 6.250800024,
      "intervalCost": 6.250800024,
      "computePrice": 0.0,
      "computeCost": 0.0,
      "memoryPrice": 0.0,
      "memoryCost": 0.0,
      "storagePrice": 0.0,
      "storageCost": 0.0,
      "networkPrice": 0.0,
      "networkCost": 0.0,
      "licensePrice": 0.0,
      "licenseCost": 0.0,
      "extraPrice": 0.0,
      "extraCost": 0.0,
      "totalPrice": 5.488956027524173,
      "totalCost": 5.488956027524173,
      "runningPrice": 1.5853593979929612,
      "runningCost": 1.5853593979929612,
      "offTime": 0,
      "powerState": "on",
      "powerDate": "2020-03-04T23:33:23+0000",
      "runningMultiplier": 0.2536250387,
      "lastCostDate": "2020-03-12T19:59:59+0000",
      "lastActualDate": null,
      "rawData": {
      },
      "runningCostRatio": 3.480749738014807,
      "actualRunningCostRatio": null,
      "runningPriceRatio": 3.480749738014807,
      "actualRunningPriceRatio": null,
      "totalCostEstimateRatio": 0.0,
      "totalPriceEstimateRatio": 0.0,
      "dateCreated": "2020-03-04T23:35:07+0000",
      "lastUpdated": "2020-03-12T19:00:01+0000"
    }
  ],
  "meta": {
    "size": 25,
    "total": 346,
    "offset": 0,
    "max": 25
  }
}

```

This endpoint retrieves all invoices for the specified parameters.

### HTTP Request

`GET https://api.gomorpheus.com/api/invoices`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | If specified will return a partial match on refName
name |  | If specified will return an exact match on refName
startDate |  | Only return records with a startDate greater than or equal to the specified date. Format is YYYY-MM-DD.
endDate |  | Only return records with a startDate less than or equal to the specified date. Format is YYYY-MM-DD.
period |  | Only return records with a period that starts with the specified value. This is an alternative to using startDate/endDate. Format is YYYYMM.
refType |  | If specified will return an exact match on refType
refId |  | If specified will return an exact match on refId
zoneId |  | If specified will return an exact match on zone (cloud) ID
instanceId |  | If specified will return an exact match on instance ID
serverId |  | If specified will return an exact match on server (host) ID
active |  | If specified will return an exact match on active flag.
accountId | (own account) | Allows master tenant users to view invoices for another tenant.

## Get a Specific Invoice

```shell
curl "$MORPHEUS_API_URL/api/invoices/11338" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "invoice": {
    "id": 11338,
    "account": {
      "id": 1,
      "name": "root"
    },
    "group": {
      "id": 1,
      "name": "G1"
    },
    "cloud": null,
    "instance": {
      "id": 330,
      "name": "test-box"
    },
    "server": null,
    "cluster": null,
    "plan": {
      "id": 1,
      "name": "Amazon T2 Nano - 1 Core, 0.5GB Memory"
    },
    "refType": "Instance",
    "refId": 330,
    "refName": "test-box",
    "refCategory": "vm",
    "interval": "month",
    "period": "202003",
    "estimate": true,
    "active": true,
    "startDate": "2020-03-01T05:00:00+0000",
    "endDate": "2020-04-01T03:59:59+0000",
    "intervalPrice": 6.250800024,
    "intervalCost": 6.250800024,
    "computePrice": 0.0,
    "computeCost": 0.0,
    "memoryPrice": 0.0,
    "memoryCost": 0.0,
    "storagePrice": 0.0,
    "storageCost": 0.0,
    "networkPrice": 0.0,
    "networkCost": 0.0,
    "licensePrice": 0.0,
    "licenseCost": 0.0,
    "extraPrice": 0.0,
    "extraCost": 0.0,
    "totalPrice": 5.488956027524173,
    "totalCost": 5.488956027524173,
    "runningPrice": 1.5853593979929612,
    "runningCost": 1.5853593979929612,
    "offTime": 0,
    "powerState": "on",
    "powerDate": "2020-03-04T23:33:23+0000",
    "runningMultiplier": 0.2536250387,
    "lastCostDate": "2020-03-12T19:59:59+0000",
    "lastActualDate": null,
    "rawData": {
    },
    "runningCostRatio": 3.480749738014807,
    "actualRunningCostRatio": null,
    "runningPriceRatio": 3.480749738014807,
    "actualRunningPriceRatio": null,
    "totalCostEstimateRatio": 0.0,
    "totalPriceEstimateRatio": 0.0,
    "dateCreated": "2020-03-04T23:35:07+0000",
    "lastUpdated": "2020-03-12T19:00:01+0000"
  }
}

```

This endpoint retrieves a specific invoice.

### HTTP Request

`GET https://api.gomorpheus.com/api/invoices/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the invoice
