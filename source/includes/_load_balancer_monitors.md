## Load Balancer Monitors

Provides API for managing Load Balancer Monitors.

## Get All Load Balancer Monitors For Load Balancer

```shell
curl "<%= curl_url %>/api/load-balancers/:loadBalancerId/monitors"
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "loadBalancerMonitors": [
    {
      "id": 64,
      "loadBalancer": {
        "id": 80,
        "type": {
          "id": 19,
          "code": "nsx-t",
          "name": "NSX-T"
        },
        "name": "dand-nsxt",
        "ip": "10.32.23.7"
      },
      "name": "bob-test",
      "code": null,
      "category": null,
      "visibility": "public",
      "description": "",
      "monitorType": "LBHttpMonitorProfile",
      "monitorInterval": 5,
      "monitorTimeout": 15,
      "sendData": null,
      "sendVersion": "HTTP_VERSION_1_1",
      "sendType": "GET",
      "receiveData": null,
      "receiveCode": "201",
      "disabledData": null,
      "monitorUsername": null,
      "monitorPassword": null,
      "monitorDestination": "/",
      "monitorReverse": false,
      "monitorTransparent": false,
      "monitorAdaptive": false,
      "aliasAddress": null,
      "aliasPort": 88,
      "internalId": "/infra/lb-monitor-profiles/8bb2ee52-d117-4f50-9b21-499e65545808",
      "externalId": "8bb2ee52-d117-4f50-9b21-499e65545808",
      "monitorSource": "external",
      "status": "ok",
      "statusMessage": null,
      "statusDate": null,
      "enabled": true,
      "maxRetry": 0,
      "fallCount": 3,
      "riseCount": 3,
      "dataLength": null,
      "config": {
      },
      "createdBy": null,
      "dateCreated": "2021-10-19T17:39:33Z",
      "lastUpdated": "2021-12-03T18:22:38Z"
    },
    {
      "id": 65,
      "loadBalancer": {
        "id": 80,
        "type": {
          "id": 19,
          "code": "nsx-t",
          "name": "NSX-T"
        },
        "name": "dand-nsxt",
        "ip": "10.32.23.7"
      },
      "name": "db-monitor-0526-1-new",
      "code": null,
      "category": null,
      "visibility": "public",
      "description": "My New Description",
      "monitorType": "LBHttpsMonitorProfile",
      "monitorInterval": 7,
      "monitorTimeout": 26,
      "sendData": "My new request body",
      "sendVersion": "HTTP_VERSION_1_0",
      "sendType": "GET",
      "receiveData": "My new response data",
      "receiveCode": "404",
      "disabledData": null,
      "monitorUsername": null,
      "monitorPassword": null,
      "monitorDestination": "http://facebook.com",
      "monitorReverse": false,
      "monitorTransparent": false,
      "monitorAdaptive": false,
      "aliasAddress": null,
      "aliasPort": 2,
      "internalId": "/infra/lb-monitor-profiles/efe8dc09-7f0f-4081-8797-4c2febecf074",
      "externalId": "efe8dc09-7f0f-4081-8797-4c2febecf074",
      "monitorSource": "external",
      "status": "ok",
      "statusMessage": null,
      "statusDate": null,
      "enabled": true,
      "maxRetry": 0,
      "fallCount": 5,
      "riseCount": 14,
      "dataLength": null,
      "config": {
      },
      "createdBy": null,
      "dateCreated": "2021-10-19T17:39:33Z",
      "lastUpdated": "2021-10-19T17:39:33Z"
    }
  ],
  "meta": {
    "offset": 0,
    "max": 2,
    "size": 2,
    "total": 8
  }
}

```

This endpoint retrieves all load balancer monitors associated with specified load balancer.

### HTTP Request

`GET <%= api_url %>/api/load-balancers/:loadBalancerId/monitors`

### URL Parameters

Parameter | Description
--------- | -----------
loadBalancerId | The ID of the Load Balancer

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
name |  | If specified will return an exact match on name
phrase |  | If specified will return a partial match on name or description

## Get a Specific Load Balancer Monitor

```shell
curl "<%= curl_url %>/api/load-balancers/80/monitors/64" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "loadBalancerMonitor": {
    "id": 64,
    "loadBalancer": {
      "id": 80,
      "type": {
        "id": 19,
        "code": "nsx-t",
        "name": "NSX-T"
      },
      "name": "dand-nsxt",
      "ip": "10.32.23.7"
    },
    "name": "bob-test",
    "code": null,
    "category": null,
    "visibility": "public",
    "description": "",
    "monitorType": "LBHttpMonitorProfile",
    "monitorInterval": 5,
    "monitorTimeout": 15,
    "sendData": null,
    "sendVersion": "HTTP_VERSION_1_1",
    "sendType": "GET",
    "receiveData": null,
    "receiveCode": "201",
    "disabledData": null,
    "monitorUsername": null,
    "monitorPassword": null,
    "monitorDestination": "/",
    "monitorReverse": false,
    "monitorTransparent": false,
    "monitorAdaptive": false,
    "aliasAddress": null,
    "aliasPort": 88,
    "internalId": "/infra/lb-monitor-profiles/8bb2ee52-d117-4f50-9b21-499e65545808",
    "externalId": "8bb2ee52-d117-4f50-9b21-499e65545808",
    "monitorSource": "external",
    "status": "ok",
    "statusMessage": null,
    "statusDate": null,
    "enabled": true,
    "maxRetry": 0,
    "fallCount": 3,
    "riseCount": 3,
    "dataLength": null,
    "config": {
    },
    "createdBy": null,
    "dateCreated": "2021-10-19T17:39:33Z",
    "lastUpdated": "2021-12-03T18:22:38Z"
  }
}
```

This endpoint retrieves a specific Load Balancer Monitor.

### HTTP Request

`GET <%= api_url %>/api/load-balancers/:loadBalancerId/monitors/:id`

### URL Parameters

Parameter | Description
--------- | -----------
loadBalancerId | The ID of the Load Balancer
ID | The ID of the Load Balancer Monitor to retrieve

## Create a Load Balancer Monitor

```shell
curl -XPOST "<%= curl_url %>/api/load-balancers/:loadBalancerId/monitors" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "loadBalancerMonitor": {
    "name": "test monitor",
    "description": "a test monitor",
    "monitorType": "LBHttpMonitorProfile",
    "monitorTimeout": 15
  }
}'
```

> The above command returns JSON structured like getting a single Load Balancer Monitor

Use this command to create a load balancer monitor.

### HTTP Request

`POST <%= api_url %>/api/load-balancers/:loadBalancerId/monitors`

### URL Parameters

Parameter | Description
--------- | -----------
loadBalancerId | The ID of the Load Balancer

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Name
description      |  | Description
config |  | Configuration object with parameters that vary by [type](#load-balancer-types).

This endpoint allows creating a Load Balancer Monitor. Configuration options vary by [Load Balancer Type](#load-balancer-types).

## Update a Load Balancer Monitor

```shell
curl -XPUT "<%= curl_url %>/api/load-balancers/:loadBalancerId/monitors/:id" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "loadBalancerMonitor": {
    "description": "new description"
  }
}'
```

> The above command returns JSON structured like getting a single Load Balancer Monitor: 

Use this command to update an existing load balancer monitor.

### HTTP Request

`PUT <%= api_url %>/api/load-balancers/:loadBalancerId/monitors/:id`

### URL Parameters

Parameter | Description
--------- | -----------
loadBalancerId | The ID of the Load Balancer
ID | The ID of the Load Balancer Monitor

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Name
description      |  | Description
config |  | Configuration object with parameters that vary by [type](#load-balancer-types).

This endpoint allows updating a Load Balancer Monitor.  Configuration options vary by [Load Balancer Type](#load-balancer-types).

## Delete a Load Balancer Monitor

```shell
curl -XDELETE "<%= curl_url %>/api/load-balancers/:loadBalancerId/monitors/:id" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

Will delete a Load Balancer Monitor from the system and make it no longer usable.

### HTTP Request

`DELETE <%= api_url %>/api/load-balancers/:loadBalancerId/monitors/:id`

### URL Parameters

Parameter | Description
--------- | -----------
loadBalancerId | The ID of the Load Balancer
ID | The ID of the Load Balancer Monitor

