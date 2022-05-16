# Reports

Provides API interfaces for viewing report results and executing new reports.

## Get All Report Types

```shell
curl "<%= curl_url %>/api/report-types" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "reportTypes": [
    {
      "id": 21,
      "code": "appCost",
      "name": "Application Cost",
      "category": "cost",
      "dateCreated": "2018-05-02T07:44:46+0000",
      "optionTypes": [
        {
          "id": 1073,
          "name": "endDate",
          "code": "reportType.endDate",
          "description": null,
          "fieldName": "endDate",
          "fieldLabel": "End Date",
          "fieldContext": "report",
          "fieldGroup": null,
          "fieldClass": null,
          "fieldAddOn": null,
          "fieldComponent": null,
          "placeHolder": null,
          "helpBlock": "",
          "defaultValue": null,
          "optionSource": null,
          "type": "text",
          "advanced": false,
          "required": true,
          "editable": true,
          "creatable": null,
          "config": {
          },
          "displayOrder": 2,
          "wrapperClass": null,
          "enabled": true,
          "noBlank": false,
          "dependsOnCode": null,
          "contextualDefault": false
        }
      ]
    },
    {
      "id": 26,
      "code": "workloadSummary",
      "name": "Workload Summary",
      "category": "provisioningInventory",
      "dateCreated": "2018-09-10T08:18:04+0000",
      "optionTypes": [

      ]
    }
  ],
  "meta": {
    "size": 18,
    "total": 18,
    "offset": 0,
    "max": 25
  }
}
```

This endpoint retrieves all available report types. A report type has `optionTypes` that define the parameters available when executing a report of that type. The sample response has been abbreviated.

### HTTP Request

`GET <%= api_url %>/api/report-types`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | If specified will return a partial match on name
name |  | If specified will return an exact match on name
code |  | If specified will return an exact match on code
category |  | If specified will return an exact match on category


## Get All Reports

```shell
curl "<%= curl_url %>/api/reports" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "reportResults": [
    {
      "id": 2,
      "type": {
        "id": 21,
        "code": "appCost",
        "name": "Application Cost"
      },
      "reportTitle": "Application Cost Jun 04, 2019 19:28:02",
      "filterTitle": "Jun 04, 2019",
      "status": "ready",
      "dateCreated": "2019-06-04T23:28:02+0000",
      "lastUpdated": "2019-06-04T23:28:02+0000",
      "startDate": null,
      "endDate": null,
      "config": {
        "type": "appCost"
      },
      "createdBy": {
        "id": 1,
        "username": "root"
      }
    },
    {
      "id": 1,
      "type": {
        "id": 6,
        "code": "groupInventory",
        "name": "Group Inventory Summary"
      },
      "reportTitle": "Group Inventory Summary Jul 12, 2019 16:30:04",
      "filterTitle": "Jul 12, 2019 | All Clouds | foo:bar",
      "status": "ready",
      "dateCreated": "2019-07-12T20:30:04+0000",
      "lastUpdated": "2019-07-12T20:30:04+0000",
      "startDate": null,
      "endDate": null,
      "config": {
        "reportType": "groupInventory",
        "cloudId": "",
        "environment": "",
        "tagName": "foo",
        "tagValue": "bar"
      },
      "createdBy": {
        "id": 1,
        "username": "root"
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

This endpoint returns all reports. This is results of reports that have been executed in the past.

### HTTP Request

`GET <%= api_url %>/api/reports`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order, default is `dateCreated` with direction `desc`
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | If specified will return a partial match on name
name |  | If specified will return an exact match on name
reportType |  | If specified will return an exact match on report type code, accepts multiple values
category |  | If specified will return an exact match on report type category, accepts multiple values

## Get a Specific Report

```shell
curl "<%= curl_url %>/api/reports/2" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "reportResult": {
    "id": 2,
    "type": {
      "id": 21,
      "code": "appCost",
      "name": "Application Cost"
    },
    "reportTitle": "Application Cost Jun 04, 2019 19:28:02",
    "filterTitle": "Jun 04, 2019",
    "status": "ready",
    "dateCreated": "2019-06-04T23:28:02+0000",
    "lastUpdated": "2019-06-04T23:28:02+0000",
    "startDate": null,
    "endDate": null,
    "config": {
      "type": "appCost"
    },
    "createdBy": {
      "id": 1,
      "username": "root"
    },
    "rows": [
      {
        "id": 536,
        "section": "header",
        "data": "{\"code\":\"totalCount\",\"name\":\"Apps\",\"value\":2",
        "displayOrder": 0
      },
      {
        "id": 535,
        "section": "header",
        "data": "{\"code\":\"totalCost\",\"name\":\"Total Cost\",\"value\":99.99,\"currency\":\"USD\"}",
        "displayOrder": 0
      },
      {
        "id": 534,
        "section": "main",
        "data": "{\"name\":\"testapp1\",\"cost\":0,\"price\":0,\"currency\":\"USD\"}",
        "displayOrder": 0
      },
      {
        "id": 533,
        "section": "main",
        "data": "{\"name\":\"testapp2\",\"cost\":99.99,\"price\":0,\"currency\":\"USD\"}",
        "displayOrder": 1
      }
    ]
  }
}
```

This endpoint retrieves a specific report result. The response includes the result data as `rows` which can be used to render the report.  Each report type will have sections for `data` and `headers` that vary by type, use [Download a Specific Report](#download-a-specific-report) to get the results organized by section.

### HTTP Request

`GET <%= api_url %>/api/reports/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the report result

## Download a Specific Report

```shell
curl "<%= curl_url %>/api/reports/download/3" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns `Content-Type: "application/octet-stream"` and `Content-disposition: attachment;filename=reportTitle.json`. The body contains JSON structured like this:

```json
{
  "data": [
    {
      "name": "dev-amazon",
      "cost": 7.199999999999999,
      "price": 7.199999999999999,
      "currency": "USD",
      "deleted": false,
      "hostCount": 0,
      "instanceCount": 2,
      "discoveredCount": 2
    },
    {
      "name": "dev-azure",
      "cost": 4775.508356680239,
      "price": 4775.508356680239,
      "currency": "USD",
      "deleted": false,
      "hostCount": 126,
      "instanceCount": 0,
      "discoveredCount": 1
    },
  ],
  "headers": [
    {
      "code": "totalCost",
      "name": "Total Cost",
      "value": 4782.7083566802385,
      "displayOrder": 4,
      "currency": "USD"
    },
    {
      "code": "instanceCount",
      "name": "Instances",
      "value": 5,
      "displayOrder": 2
    },
    {
      "code": "count",
      "name": "Clouds",
      "value": 2,
      "displayOrder": 0
    },
    {
      "code": "discoveredCount",
      "name": "Discovered VMs",
      "value": 13,
      "displayOrder": 3
    },
    {
      "code": "hostCount",
      "name": "Nodes",
      "value": 127,
      "displayOrder": 2
    }
  ],
  "footers": [

  ],
  "reportType": "Cloud Cost",
  "reportTypeId": 5,
  "resultId": 146,
  "reportDate": "2021-08-26T16:59:45Z",
  "createdBy": "admin",
  "createdById": 1
}
```

This endpoint downloads a specific report result as a file attachment. The default file format is `json`.

### HTTP Request

`GET <%= api_url %>/api/reports/download/:id(.:format)`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the report result
format | Format of the rendered report file, `json` or `csv`. The default is `.json`.


## Run a Report


```shell
curl -XPOST "<%= curl_url %>/api/reports" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "report": {
    "type": "timeSeriesCost",
    "startMonth": "01/2020",
    "endMonth": "02/2020"
  }}'
```

> The above command returns JSON structured like getting a single report:

This endpoint execute the specified report type and create a new report result.

### HTTP Request

`POST <%= api_url %>/api/reports`

### JSON Report Parameters

Parameter | Default | Description
--------- | ------- | -----------
type     |  | The [Report Type](#report-types) code to be executed.

The available parameters vary by report type. Refer to the defined `optionTypes` for each report.

### JSON Common Report Parameters

Parameter | Default | Description
--------- | ------- | -----------
startDate     |  | The start date for the report
endDate     |  | The end date for the report
groupId     |  | The Group ID filter for the report
cloudId     |  | The Cloud ID filter for the report

## Delete a Report

```shell
curl -XDELETE "<%= curl_url %>/api/reports/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

This endpoint will delete a report result.

### HTTP Request

`DELETE <%= api_url %>/api/reports/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the report result.
