# Budgets

Provides API interfaces for managing Budgets.

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
      "name": "huh",
      "description": "a test budget",
      "ownerId": 1,
      "accountId": 1,
      "accountName": "root",
      "userId": 1,
      "userName": "admin",
      "zoneId": null,
      "zoneName": null,
      "siteId": null,
      "siteName": null,
      "refScope": "tenant",
      "refType": "Account",
      "refId": 2,
      "refName": "JRD",
      "config": {
      },
      "interval": "year",
      "period": "year",
      "year": "2019",
      "resourceType": "all",
      "timezone": "America/New_York",
      "startDate": "2019-01-01T05:00:00+0000",
      "endDate": "2020-01-01T04:59:59+0000",
      "active": true,
      "enabled": true,
      "rollover": false,
      "costs": [
        5000.0,
      ],
      "warningLimit": null,
      "overLimit": null,
      "externalId": null,
      "internalId": null,
      "createdById": 1,
      "createdByName": "Admin",
      "updatedById": null,
      "updatedByName": null,
      "dateCreated": "2019-11-17T05:59:20+0000",
      "lastUpdated": "2019-11-17T05:59:20+0000"
    },
    {
      "id": 2,
      "name": "slim",
      "description": "99 per month",
      "ownerId": 1,
      "accountId": 1,
      "accountName": "root",
      "userId": 1,
      "userName": "admin",
      "zoneId": null,
      "zoneName": null,
      "siteId": null,
      "siteName": null,
      "refScope": "tenant",
      "refType": "Account",
      "refId": 3,
      "refName": "GMD",
      "config": {
      },
      "interval": "month",
      "period": "year",
      "year": "2019",
      "resourceType": "all",
      "timezone": "America/New_York",
      "startDate": "2019-01-01T05:00:00+0000",
      "endDate": "2020-01-01T04:59:59+0000",
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
        99.0
      ],
      "warningLimit": null,
      "overLimit": null,
      "externalId": null,
      "internalId": null,
      "createdById": 1,
      "createdByName": "Admin",
      "updatedById": null,
      "updatedByName": null,
      "dateCreated": "2019-12-21T12:34:21+0000",
      "lastUpdated": "2019-12-21T12:34:21+0000"
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
  "budget": {
    "id": 1,
    "name": "2019 JRD",
    "description": "my budget schedule",
    "ownerId": 1,
    "accountId": 1,
    "accountName": "root",
    "userId": 1,
    "userName": "james",
    "zoneId": null,
    "zoneName": null,
    "siteId": null,
    "siteName": null,
    "refScope": "tenant",
    "refType": "Account",
    "refId": 2,
    "refName": "JRD",
    "config": {
    },
    "interval": "year",
    "period": "year",
    "year": "2019",
    "resourceType": "all",
    "timezone": "America/New_York",
    "startDate": "2019-01-01T05:00:00+0000",
    "endDate": "2020-01-01T04:59:59+0000",
    "active": true,
    "enabled": true,
    "rollover": false,
    "costs": [
      5000.0
    ],
    "warningLimit": null,
    "overLimit": null,
    "externalId": null,
    "internalId": null,
    "createdById": 1,
    "createdByName": "James D",
    "updatedById": null,
    "updatedByName": null,
    "dateCreated": "2019-11-17T05:59:20+0000",
    "lastUpdated": "2019-11-17T05:59:20+0000"
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
    "year": "2019",
    "interval": "year",
    "costs": [350]
  }}'
```

> The above command returns JSON structured like getting a single budget:

### HTTP Request

`POST https://api.gomorpheus.com/api/budgets`

### JSON Parameters

The following parameters are passed inside an object named `budget`.

Parameter | Default | Description
--------- | ------- | -----------
name      |  | A unique name for the budget
description      |  | A description of the budget
refType      |  | The type of the scope for the budget, eg. account, group, cloud, user
refId      |  | The ID of the account the budget applies to.
period      | year | Budget period, year
interval      | year | Budget interval, year, quarter or month
costs      |  | Array of budget values like [350] for yearly, [75,75,75,75] for quarterly or a list of 12 prices when `interval` is `month`.

## Updating a Budget

```shell
curl -XPUT "$MORPHEUS_API_URL/api/budgets/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"budget":{
    "costs": [25000]
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
refType      |  | The type of the scope for the budget, eg. account, group, cloud, user
refId      |  | The ID of the account the budget applies to.
accountId      |  | The ID of the account the budget applies to.
interval      | year | Budget interval, year, quarter or month
costs      |  | Array of budget values like `[350]` for interval year, `[75,75,75,75]` for quarter (Quarter 1 - Quarter 4) or a list of 12 values like `[30,30,30,30,30,30,30,30,30,30,30,90]` for interval is month (January - December). Passing a cost value as `0` or `null` means no cost, and no limit will be enforced during that interval.

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

### HTTP Request

`DELETE https://api.gomorpheus.com/api/budgets/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the budget

