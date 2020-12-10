# Budgets

Provides API interfaces for managing budgets.

## Get All Budgets

```shell
curl "$MORPHEUS_API_URL/api/budgets" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "budgets": [
     {
      "id": 1,
      "name": "sample budget",
      "description": "a yearly budget",
      "account": {
        "id": 1,
        "name": "root"
      },
      "refScope": "account",
      "refType": null,
      "refId": null,
      "refName": "root",
      "interval": "year",
      "period": "year",
      "year": "2020",
      "resourceType": "all",
      "timezone": "America/New_York",
      "startDate": "2020-01-01T05:00:00+0000",
      "endDate": "2021-01-01T04:59:59+0000",
      "active": true,
      "enabled": true,
      "rollover": false,
      "costs": [
        1000.0
      ],
      "averageCost": 83.33333333333333,
      "totalCost": 1000.0,
      "currency": "USD",
      "warningLimit": null,
      "overLimit": null,
      "externalId": null,
      "internalId": null,
      "createdById": 1,
      "createdByName": "Admin",
      "updatedById": null,
      "updatedByName": null,
      "dateCreated": "2020-01-03T17:40:08+0000",
      "lastUpdated": "2020-01-03T17:40:08+0000"
    },
    {
      "id": 2,
      "name": "my budget",
      "description": "99 per month",
      "account": {
        "id": 1,
        "name": "root"
      },
      "refScope": "account",
      "refType": null,
      "refId": null,
      "refName": "root",
      "interval": "month",
      "period": "year",
      "year": "2020",
      "resourceType": "all",
      "timezone": "America/New_York",
      "startDate": "2020-01-01T05:00:00+0000",
      "endDate": "2021-01-01T04:59:59+0000",
      "active": true,
      "enabled": true,
      "rollover": false,
      "costs": [
        99.0,
        99.0,
        99.0,
        99.0,
        99.0,
        99.0,
        99.0,
        99.0,
        99.0,
        99.0,
        99.0,
        99.0,
      ],
      "averageCost": 99.0,
      "totalCost": 1188.0,
      "currency": "USD",
      "warningLimit": null,
      "overLimit": null,
      "externalId": null,
      "internalId": null,
      "createdById": 1,
      "createdByName": "Admin",
      "updatedById": null,
      "updatedByName": null,
      "dateCreated": "2020-01-03T17:37:51+0000",
      "lastUpdated": "2020-01-03T17:37:51+0000"
    },
    {
      "id": 3,
      "name": "quarters",
      "description": "Quarterly budget for tenant Acme",
      "account": {
        "id": 1,
        "name": "root"
      },
      "refScope": "tenant",
      "refType": "Account",
      "refId": 47,
      "refName": "Acme",
      "interval": "quarter",
      "period": "year",
      "year": "2020",
      "resourceType": "all",
      "timezone": "America/New_York",
      "startDate": "2020-01-01T05:00:00+0000",
      "endDate": "2021-01-01T04:59:59+0000",
      "active": true,
      "enabled": true,
      "rollover": false,
      "costs": [
        250.0,
        250.0,
        250.0,
        500.0,
      ],
      "averageCost": 312.5,
      "totalCost": 1250.0,
      "currency": "USD",
      "warningLimit": null,
      "overLimit": null,
      "externalId": null,
      "internalId": null,
      "createdById": 1,
      "createdByName": "James D",
      "updatedById": null,
      "updatedByName": null,
      "dateCreated": "2020-01-02T02:54:34+0000",
      "lastUpdated": "2020-01-03T17:43:52+0000"
    }
  ],
  "meta": {
    "size": 3,
    "total": 3,
    "offset": 0,
    "max": 25
  }
}
```

This endpoint retrieves all budgets.

### HTTP Request

`GET https://api.gomorpheus.com/api/budgets`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Filter by matching name
name |  | Filter by name

## Get a Specific Budget

```shell
curl "$MORPHEUS_API_URL/api/budgets/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "budget": {
    "id": 1,
    "name": "sample budget",
    "description": "a yearly budget",
    "account": {
      "id": 1,
      "name": "root"
    },
    "refScope": "account",
    "refType": null,
    "refId": null,
    "refName": "root",
    "interval": "year",
    "period": "year",
    "year": "2020",
    "resourceType": "all",
    "timezone": "America/New_York",
    "startDate": "2020-01-01T05:00:00+0000",
    "endDate": "2021-01-01T04:59:59+0000",
    "active": true,
    "enabled": true,
    "rollover": false,
    "costs": [
      1000.0
    ],
    "averageCost": 83.33333333333333,
    "totalCost": 1000.0,
    "currency": "USD",
    "warningLimit": null,
    "overLimit": null,
    "externalId": null,
    "internalId": null,
    "createdById": 1,
    "createdByName": "Admin",
    "updatedById": null,
    "updatedByName": null,
    "dateCreated": "2020-01-03T17:40:08+0000",
    "lastUpdated": "2020-01-03T17:40:08+0000",
    "stats": {
      "averageCost": 83.33,
      "totalCost": 1000.0,
      "currency": "USD",
      "conversionRate": 1,
      "intervals": [
        {
          "index": 0,
          "year": "Y1",
          "shortYear": "Y1",
          "budget": 1000.0,
          "cost": 15.1016
        }
      ],
      "current": {
        "estimatedCost": 15.1,
        "lastCost": 15.1
      }
    }
  }
}
```

This endpoint will retrieve a specific budget by id.

### HTTP Request

`GET https://api.gomorpheus.com/api/budgets/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the budget

## Create a Budget

```shell
curl -XPOST "$MORPHEUS_API_URL/api/budgets" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"budget":{
    "name": "sample budget",
    "year": "2020",
    "interval": "year",
    "scope": "account",
    "costs": [1000]
  }}'
```

> The above command returns JSON structured like getting a single budget:

This endpoint creates a new budget.

### HTTP Request

`POST https://api.gomorpheus.com/api/budgets`

### JSON Parameters

The following parameters are passed inside an object named `budget`.

Parameter | Default | Description
--------- | ------- | -----------
name      |  | A unique name for the budget
description      |  | A description of the budget
period      | year | Budget period, year
year      | 2020 | Budget period value, default is the current year. This can also be passed as `custom` along with a startDate and endDate.
startDate      |  | Start Date for custom period budgets, should be the first of a month. eg. `2021-01-01`
endDate      |  | End Date for custom period budgets, should be the last day of a month, and must be 12, 24, or 36 months after the start date. eg. `2021-12-31`
interval      | year | Budget interval, `year`, `quarter`, `month`.
scope      |  | The type of the scope for the budget, `account`, `group`, `cloud`, `user`.  The default scope is `account`, which means the entire account.
scopeTenantId      |  | The Tenant ID to scope to, for use with `"scope"=tenant`.
scopeGroupId      |  | The Group ID to scope to, for use with `"scope"=group`.
scopeCloudId      |  | The Cloud ID to scope to, for use with `"scope"=cloud`.
scopeUserId      |  | The User ID to scope to, for use with `"scope"=user`.
costs      |  | Array of budget cost amounts that varies in length by interval. For interval year use `[1000]`. For interval quarter use `[120.0,120.0,120.0,240.0]`. For interval month use `[99,99,99,99,99,99,99,99,99,99,99,299]` (other 10 months omitted). Custom budgets of more than one year may have more cost values. When creating a new schedule, the default cost for a given interval is `0` so be sure to specify a cost for every interval when creating a new budget.

## Updating a Budget

```shell
curl -XPUT "$MORPHEUS_API_URL/api/budgets/:id" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"budget":{
    "interval": "quarter",
    "costs": [1000,1000,1000,2000]
  }}'
```

> The above command returns JSON structured like getting a single budget:

This endpoint updates a budget.

### HTTP Request

`PUT https://api.gomorpheus.com/api/budgets/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the budget

### JSON Parameters

The following parameters are passed inside an object named `budget`.

Parameter | Default | Description
--------- | ------- | -----------
name      |  | A unique name for the budget
description      |  | A description of the budget
period      | year | Budget period, year
year      | 2020 | Budget period value, default is the current year. This can also be passed as `custom` along with a startDate and endDate.
startDate      |  | Start Date for custom period budgets, should be the first of a month. eg. `2021-01-01`
endDate      |  | End Date for custom period budgets, should be the last day of a month, and must be exactly 12, 24, or 36 months after the start date. eg. `2021-12-31`
interval      | year | Budget interval, `year`, `quarter`, `month`.
scope      |  | The type of the scope for the budget, `account`, `group`, `cloud`, `user`.  The default scope is `account`, which means the entire account.
scopeTenantId      |  | The Tenant ID to scope to, for use with `"scope"=tenant`.
scopeGroupId      |  | The Group ID to scope to, for use with `"scope"=group`.
scopeCloudId      |  | The Cloud ID to scope to, for use with `"scope"=cloud`.
scopeUserId      |  | The User ID to scope to, for use with `"scope"=user`.
costs      |  | Array of budget cost amounts that varies in length by interval. For interval year use `[1000]`. For interval quarter use `[120.0,120.0,120.0,240.0]`. For interval month use `[99,99,99,99,99,99,99,99,99,99,99,299]` (other 10 months omitted). Custom budgets of more than one year may have more cost values. When creating a new schedule, the default cost for a given interval is `0` so be sure to specify a cost for every interval when creating a new budget.

## Delete a Budget

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/budgets/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

This endpoint deletes a budget from the system.

### HTTP Request

`DELETE https://api.gomorpheus.com/api/budgets/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the budget

