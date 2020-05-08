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
      "id": 11868,
      "account": {
        "id": 1,
        "name": "root"
      },
      "group": {
        "id": 1,
        "name": "lonestar"
      },
      "cloud": {
        "id": 39,
        "name": "qa-amazon"
      },
      "instance": {
        "id": 331,
        "name": "nginx21"
      },
      "server": null,
      "cluster": null,
      "user": {
        "id": 1,
        "name": "admin"
      },
      "plan": {
        "id": 1,
        "name": "Amazon T2 Nano - 1 Core, 0.5GB Memory"
      },
      "project": {
        "id": 2,
        "name": "test",
        "tags": {
          "agency": "Lonestar"
        }
      },
      "refType": "Instance",
      "refId": 331,
      "refName": "nginx21",
      "refCategory": "vm",
      "resourceId": null,
      "resourceUuid": null,
      "resourceType": null,
      "resourceName": null,
      "resourceExternalId": null,
      "resourceInternalId": null,
      "interval": "month",
      "period": "202005",
      "estimate": false,
      "active": true,
      "startDate": "2020-05-01T04:00:00+0000",
      "endDate": "2020-06-01T03:59:59+0000",
      "refStart": "2020-05-01T04:00:00+0000",
      "refEnd": "2020-06-01T03:59:59+0000",
      "estimatedComputePrice": 0.0,
      "estimatedComputeCost": 0.0,
      "estimatedMemoryPrice": 0.0,
      "estimatedMemoryCost": 0.0,
      "estimatedStoragePrice": 0.0,
      "estimatedStorageCost": 0.0,
      "estimatedNetworkPrice": 0.0,
      "estimatedNetworkCost": 0.0,
      "estimatedLicensePrice": 0.0,
      "estimatedLicenseCost": 0.0,
      "estimatedExtraPrice": 0.0,
      "estimatedExtraCost": 0.0,
      "estimatedTotalPrice": 6.250800024,
      "estimatedTotalCost": 6.250800024,
      "estimatedRunningPrice": 1.5038869430406268,
      "estimatedRunningCost": 1.5038869430406268,
      "invoiceComputePrice": 0.0,
      "invoiceComputeCost": 0.0,
      "invoiceMemoryPrice": 0.0,
      "invoiceMemoryCost": 0.0,
      "invoiceStoragePrice": 0.0,
      "invoiceStorageCost": 0.0,
      "invoiceNetworkPrice": 0.0,
      "invoiceNetworkCost": 0.0,
      "invoiceLicensePrice": 0.0,
      "invoiceLicenseCost": 0.0,
      "invoiceExtraPrice": 0.0,
      "invoiceExtraCost": 0.0,
      "invoiceTotalPrice": 0.0,
      "invoiceTotalCost": 0.0,
      "invoiceRunningPrice": 0.0,
      "invoiceRunningCost": 0.0,
      "actualComputePrice": 0.1709403426,
      "actualComputeCost": 0.1709403426,
      "actualMemoryPrice": 0.0,
      "actualMemoryCost": 0.0,
      "actualStoragePrice": 0.0,
      "actualStorageCost": 0.0,
      "actualNetworkPrice": 0.0,
      "actualNetworkCost": 0.0,
      "actualLicensePrice": 0.0,
      "actualLicenseCost": 0.0,
      "actualExtraPrice": 0.0,
      "actualExtraCost": 0.0,
      "actualTotalPrice": 0.7105014791842815,
      "actualTotalCost": 0.7105014791842815,
      "actualRunningPrice": 0.1709403426,
      "actualRunningCost": 0.1709403426,
      "computePrice": 0.1709403426,
      "computeCost": 0.1709403426,
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
      "totalPrice": 0.7105014791842815,
      "totalCost": 0.7105014791842815,
      "runningPrice": 0.1709403426,
      "runningCost": 0.1709403426,
      "costType": "actual",
      "offTime": 0,
      "powerState": "on",
      "powerDate": "2020-05-01T04:00:00+0000",
      "runningMultiplier": 0.2405911143,
      "lastCostDate": "2020-05-08T14:59:59+0000",
      "lastActualDate": "2020-05-08T14:59:59+0000",
      "dateCreated": "2020-05-01T15:59:49+0000",
      "lastUpdated": "2020-05-08T15:00:08+0000",
      "lineItems": [

      ]
    }
  ],
  "meta": {
    "size": 1,
    "total": 35021,
    "offset": 0,
    "max": 1
  }
}
```

This endpoint retrieves all invoices for the specified parameters.

### HTTP Request

`GET https://api.gomorpheus.com/api/invoices`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
rawData | false | Pass true to include the cost data from the cloud provider's API in a property called `rawData`.
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | If specified will return a partial match on refName
name |  | If specified will return an exact match on refName
startDate |  | Only return records with a startDate greater than or equal to the specified date. Format is YYYY-MM-DD.
endDate |  | Only return records with a startDate less than or equal to the specified date. Format is YYYY-MM-DD.
period |  | Only return records for period that matches with the specified value. This is an alternative to using startDate/endDate. Format is YYYY or YYYYMM.
refType |  | If specified will return an exact match on refType. eg. ComputeSite (Group), ComputeZone (Cloud), ComputeServer (Host), Instance, Container, User.
refId |  | If specified will return an exact match on refId
zoneId |  | If specified will return an exact match on zone (cloud) ID
siteId |  | If specified will return an exact match on site (group) ID
instanceId |  | If specified will return an exact match on instance ID
containerId |  | If specified will return an exact match on container ID
serverId |  | If specified will return an exact match on server (host) ID
userId |  | If specified will return an exact match on user ID
projectId |  | If specified will return an exact match on project ID
active |  | If specified will return an exact match on active flag.
accountId | (own account) | Allows master tenant users to view invoices for another tenant.

## Get a Specific Invoice

```shell
curl "$MORPHEUS_API_URL/api/invoices/11868" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "invoice": {
    "id": 11868,
    "account": {
      "id": 1,
      "name": "root"
    },
    "group": {
      "id": 1,
      "name": "lonestar"
    },
    "cloud": {
      "id": 39,
      "name": "qa-amazon"
    },
    "instance": {
      "id": 331,
      "name": "nginx21"
    },
    "server": null,
    "cluster": null,
    "user": {
      "id": 1,
      "name": "admin"
    },
    "plan": {
      "id": 1,
      "name": "Amazon T2 Nano - 1 Core, 0.5GB Memory"
    },
    "project": {
      "id": 2,
      "name": "test",
      "tags": {
        "agency": "Lonestar"
      }
    },
    "refType": "Instance",
    "refId": 331,
    "refName": "nginx21",
    "refCategory": "vm",
    "resourceId": null,
    "resourceUuid": null,
    "resourceType": null,
    "resourceName": null,
    "resourceExternalId": null,
    "resourceInternalId": null,
    "interval": "month",
    "period": "202005",
    "estimate": false,
    "active": true,
    "startDate": "2020-05-01T04:00:00+0000",
    "endDate": "2020-06-01T03:59:59+0000",
    "refStart": "2020-05-01T04:00:00+0000",
    "refEnd": "2020-06-01T03:59:59+0000",
    "estimatedComputePrice": 0.0,
    "estimatedComputeCost": 0.0,
    "estimatedMemoryPrice": 0.0,
    "estimatedMemoryCost": 0.0,
    "estimatedStoragePrice": 0.0,
    "estimatedStorageCost": 0.0,
    "estimatedNetworkPrice": 0.0,
    "estimatedNetworkCost": 0.0,
    "estimatedLicensePrice": 0.0,
    "estimatedLicenseCost": 0.0,
    "estimatedExtraPrice": 0.0,
    "estimatedExtraCost": 0.0,
    "estimatedTotalPrice": 6.250800024,
    "estimatedTotalCost": 6.250800024,
    "estimatedRunningPrice": 1.5038869430406268,
    "estimatedRunningCost": 1.5038869430406268,
    "invoiceComputePrice": 0.0,
    "invoiceComputeCost": 0.0,
    "invoiceMemoryPrice": 0.0,
    "invoiceMemoryCost": 0.0,
    "invoiceStoragePrice": 0.0,
    "invoiceStorageCost": 0.0,
    "invoiceNetworkPrice": 0.0,
    "invoiceNetworkCost": 0.0,
    "invoiceLicensePrice": 0.0,
    "invoiceLicenseCost": 0.0,
    "invoiceExtraPrice": 0.0,
    "invoiceExtraCost": 0.0,
    "invoiceTotalPrice": 0.0,
    "invoiceTotalCost": 0.0,
    "invoiceRunningPrice": 0.0,
    "invoiceRunningCost": 0.0,
    "actualComputePrice": 0.1709403426,
    "actualComputeCost": 0.1709403426,
    "actualMemoryPrice": 0.0,
    "actualMemoryCost": 0.0,
    "actualStoragePrice": 0.0,
    "actualStorageCost": 0.0,
    "actualNetworkPrice": 0.0,
    "actualNetworkCost": 0.0,
    "actualLicensePrice": 0.0,
    "actualLicenseCost": 0.0,
    "actualExtraPrice": 0.0,
    "actualExtraCost": 0.0,
    "actualTotalPrice": 0.7105014791842815,
    "actualTotalCost": 0.7105014791842815,
    "actualRunningPrice": 0.1709403426,
    "actualRunningCost": 0.1709403426,
    "computePrice": 0.1709403426,
    "computeCost": 0.1709403426,
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
    "totalPrice": 0.7105014791842815,
    "totalCost": 0.7105014791842815,
    "runningPrice": 0.1709403426,
    "runningCost": 0.1709403426,
    "costType": "actual",
    "offTime": 0,
    "powerState": "on",
    "powerDate": "2020-05-01T04:00:00+0000",
    "runningMultiplier": 0.2405911143,
    "lastCostDate": "2020-05-08T14:59:59+0000",
    "lastActualDate": "2020-05-08T14:59:59+0000",
    "dateCreated": "2020-05-01T15:59:49+0000",
    "lastUpdated": "2020-05-08T15:00:08+0000",
    "lineItems": [

    ]
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

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
rawData | false | Pass true to include the cost data from the cloud provider's API in a property called `rawData`.
