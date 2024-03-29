## Load Balancer Pools

Provides API for managing Load Balancer Pools.

## Get All Load Balancer Pools For Load Balancer

```shell
curl "<%= curl_url %>/api/load-balancers/:loadBalancerId/pools"
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "loadBalancerPools": [
    {
      "id": 63,
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
      "name": "bob-test-pool",
      "category": null,
      "visibility": "public",
      "description": "",
      "internalId": "/infra/lb-pools/7d971e87-4e99-4a5a-a00f-0636f3431bdc",
      "externalId": "7d971e87-4e99-4a5a-a00f-0636f3431bdc",
      "enabled": true,
      "vipSticky": null,
      "vipBalance": "ROUND_ROBIN",
      "allowNat": null,
      "allowSnat": null,
      "vipClientIpMode": null,
      "vipServerIpMode": null,
      "minActive": 2,
      "minInService": null,
      "minUpMonitor": null,
      "minUpAction": null,
      "maxQueueDepth": null,
      "maxQueueTime": null,
      "numberActive": 0,
      "numberInService": 0,
      "healthScore": 100.0,
      "performanceScore": 100.0,
      "healthPenalty": 0.0,
      "securityPenalty": 0.0,
      "errorPenalty": 0.0,
      "downAction": null,
      "rampTime": null,
      "port": null,
      "portType": null,
      "status": "online",
      "nodes": [
        {
          "id": 69,
          "name": "db-apache"
        },
        {
          "id": 74,
          "name": "bob-apache"
        }
      ],
      "monitors": [
        {
          "id": 64,
          "name": "bob-test"
        },
        {
          "id": 69,
          "name": "default-passive-lb-monitor"
        }
      ],
      "members": [

      ],
      "config": {
        "snatTranslationType": "LBSnatDisabled",
        "tcpMultiplexing": false,
        "tcpMultiplexingNumber": 6,
        "activeMonitorPaths": 64,
        "memberGroup": null,
        "passiveMonitorPath": 69
      },
      "createdBy": null,
      "dateCreated": "2021-10-19T17:39:34Z",
      "lastUpdated": "2021-12-02T18:08:36Z"
    },
    {
      "id": 114,
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
      "name": "dand-pool",
      "category": null,
      "visibility": "public",
      "description": "",
      "internalId": "/infra/lb-pools/816cd4be-36f8-4484-bc46-a17081b653b8",
      "externalId": "816cd4be-36f8-4484-bc46-a17081b653b8",
      "enabled": true,
      "vipSticky": null,
      "vipBalance": "ROUND_ROBIN",
      "allowNat": null,
      "allowSnat": null,
      "vipClientIpMode": null,
      "vipServerIpMode": null,
      "minActive": 1,
      "minInService": null,
      "minUpMonitor": null,
      "minUpAction": null,
      "maxQueueDepth": null,
      "maxQueueTime": null,
      "numberActive": 0,
      "numberInService": 0,
      "healthScore": 100.0,
      "performanceScore": 100.0,
      "healthPenalty": 0.0,
      "securityPenalty": 0.0,
      "errorPenalty": 0.0,
      "downAction": null,
      "rampTime": null,
      "port": null,
      "portType": null,
      "status": "online",
      "nodes": [

      ],
      "monitors": [
        {
          "id": 69,
          "name": "default-passive-lb-monitor"
        }
      ],
      "members": [

      ],
      "config": {
        "snatTranslationType": "LBSnatDisabled",
        "tcpMultiplexing": false,
        "tcpMultiplexingNumber": 6,
        "passiveMonitorPath": 69,
        "memberGroup": null
      },
      "createdBy": null,
      "dateCreated": "2021-11-01T21:25:08Z",
      "lastUpdated": "2021-12-02T18:08:36Z"
    },
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
      "name": "ld-test-pools",
      "category": null,
      "visibility": "public",
      "description": "",
      "internalId": "/infra/lb-pools/fc03ef4b-f4b3-470c-8d03-025fe9a56f90",
      "externalId": "fc03ef4b-f4b3-470c-8d03-025fe9a56f90",
      "enabled": true,
      "vipSticky": null,
      "vipBalance": "ROUND_ROBIN",
      "allowNat": null,
      "allowSnat": null,
      "vipClientIpMode": null,
      "vipServerIpMode": null,
      "minActive": 1,
      "minInService": null,
      "minUpMonitor": null,
      "minUpAction": null,
      "maxQueueDepth": null,
      "maxQueueTime": null,
      "numberActive": 0,
      "numberInService": 0,
      "healthScore": 100.0,
      "performanceScore": 100.0,
      "healthPenalty": 0.0,
      "securityPenalty": 0.0,
      "errorPenalty": 0.0,
      "downAction": null,
      "rampTime": null,
      "port": null,
      "portType": null,
      "status": "online",
      "nodes": [

      ],
      "monitors": [

      ],
      "members": [

      ],
      "config": {
        "snatTranslationType": "LBSnatDisabled",
        "tcpMultiplexing": false,
        "tcpMultiplexingNumber": 6,
        "memberGroup": null
      },
      "createdBy": null,
      "dateCreated": "2021-10-19T17:39:34Z",
      "lastUpdated": "2021-12-02T18:08:36Z"
    },
    {
      "id": 128,
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
      "name": "Monitor HTTP 80",
      "category": null,
      "visibility": "public",
      "description": "",
      "internalId": "/infra/lb-pools/f38f4977-23d1-4f51-88c5-fd107d0a18b1",
      "externalId": "f38f4977-23d1-4f51-88c5-fd107d0a18b1",
      "enabled": true,
      "vipSticky": null,
      "vipBalance": "ROUND_ROBIN",
      "allowNat": null,
      "allowSnat": null,
      "vipClientIpMode": null,
      "vipServerIpMode": null,
      "minActive": 2,
      "minInService": null,
      "minUpMonitor": null,
      "minUpAction": null,
      "maxQueueDepth": null,
      "maxQueueTime": null,
      "numberActive": 0,
      "numberInService": 0,
      "healthScore": 100.0,
      "performanceScore": 100.0,
      "healthPenalty": 0.0,
      "securityPenalty": 0.0,
      "errorPenalty": 0.0,
      "downAction": null,
      "rampTime": null,
      "port": null,
      "portType": null,
      "status": "online",
      "nodes": [

      ],
      "monitors": [
        {
          "id": 79,
          "name": "dd-http-80-mon"
        }
      ],
      "members": [

      ],
      "config": {
        "snatTranslationType": "LBSnatDisabled",
        "tcpMultiplexing": false,
        "tcpMultiplexingNumber": 6,
        "activeMonitorPaths": 79,
        "memberGroup": null
      },
      "createdBy": null,
      "dateCreated": "2021-11-08T14:07:13Z",
      "lastUpdated": "2021-12-02T18:08:36Z"
    }
  ],
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 4,
    "total": 4
  }
}
```

This endpoint retrieves all load balancer pools associated with a specified load balancer.

### HTTP Request

`GET <%= api_url %>/api/load-balancers/:loadBalancerId/pools`

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

## Get a Specific Load Balancer Pool

```shell
curl "<%= curl_url %>/api/load-balancers/80/pools/63" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "loadBalancerPool": {
    "id": 63,
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
    "name": "bob-test-pool",
    "category": null,
    "visibility": "public",
    "description": "",
    "internalId": "/infra/lb-pools/7d971e87-4e99-4a5a-a00f-0636f3431bdc",
    "externalId": "7d971e87-4e99-4a5a-a00f-0636f3431bdc",
    "enabled": true,
    "vipSticky": null,
    "vipBalance": "ROUND_ROBIN",
    "allowNat": null,
    "allowSnat": null,
    "vipClientIpMode": null,
    "vipServerIpMode": null,
    "minActive": 2,
    "minInService": null,
    "minUpMonitor": null,
    "minUpAction": null,
    "maxQueueDepth": null,
    "maxQueueTime": null,
    "numberActive": 0,
    "numberInService": 0,
    "healthScore": 100.0,
    "performanceScore": 100.0,
    "healthPenalty": 0.0,
    "securityPenalty": 0.0,
    "errorPenalty": 0.0,
    "downAction": null,
    "rampTime": null,
    "port": null,
    "portType": null,
    "status": "online",
    "nodes": [
      {
        "id": 69,
        "name": "db-apache"
      },
      {
        "id": 74,
        "name": "bob-apache"
      }
    ],
    "monitors": [
      {
        "id": 64,
        "name": "bob-test"
      },
      {
        "id": 69,
        "name": "default-passive-lb-monitor"
      }
    ],
    "members": [

    ],
    "config": {
      "snatTranslationType": "LBSnatDisabled",
      "tcpMultiplexing": false,
      "tcpMultiplexingNumber": 6,
      "activeMonitorPaths": 64,
      "memberGroup": null,
      "passiveMonitorPath": 69
    },
    "createdBy": null,
    "dateCreated": "2021-10-19T17:39:34Z",
    "lastUpdated": "2021-12-02T18:08:36Z"
  }
}
```

This endpoint retrieves a specific Load Balancer Pool.

### HTTP Request

`GET <%= api_url %>/api/load-balancers/:loadBalancerId/pools/:id`

### URL Parameters

Parameter | Description
--------- | -----------
loadBalancerId | The ID of the Load Balancer
ID | The ID of the Load Balancer Pool to retrieve

## Create a Load Balancer Pool

```shell
curl -XPOST "<%= curl_url %>/api/load-balancers/:loadBalancerId/pools" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "loadBalancerPool": {
    "name": "test-pool",
    "description": "a test pool",
    "vipBalance": "ROUND_ROBIN",
    "minActive": 1,
    "config": {
      "snatTranslationType": "LBSnatDisabled",
      "tcpMultiplexing": true,
      "tcpMultiplexingNumber": 6
    }
  }
}'
```

> The above command returns JSON structured like getting a single Load Balancer Pool: 

Use this command to create a load balancer pool.

### HTTP Request

`POST <%= api_url %>/api/load-balancers/:loadBalancerId/pools`

### URL Parameters

Parameter | Description
--------- | -----------
loadBalancerId | The ID of the Load Balancer

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Name
description      |  | Description
vipBalance      |  | Balance Algorithm
minActive      |  | Min Active Members
config |  | Configuration object with parameters that vary by [type](#load-balancer-types).

This endpoint allows creating a Load Balancer Pool. Configuration options vary by [Load Balancer Type](#load-balancer-types).

## Update a Load Balancer Pool

```shell
curl -XPUT "<%= curl_url %>/api/load-balancers/:loadBalancerId/pools/:id" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "loadBalancerPool": {
    "description": "new description"
  }
}'
```

> The above command returns JSON structured like getting a single Load Balancer Pool: 

Use this command to update an existing load balancer pool.

### HTTP Request

`PUT <%= api_url %>/api/load-balancers/:loadBalancerId/pools/:id`

### URL Parameters

Parameter | Description
--------- | -----------
loadBalancerId | The ID of the Load Balancer
ID | The ID of the Load Balancer Pool

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Name
description      |  | Description
vipBalance      |  | Balance Algorithm
minActive      |  | Min Active Members
config |  | Configuration object with parameters that vary by [type](#load-balancer-types).

This endpoint allows updating a Load Balancer Pool.  Configuration options vary by [Load Balancer Type](#load-balancer-types).

## Delete a Load Balancer Pool

```shell
curl -XDELETE "<%= curl_url %>/api/load-balancers/:loadBalancerId/pools/:id" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

Will delete a Load Balancer Pool from the system and make it no longer usable.

### HTTP Request

`DELETE <%= api_url %>/api/load-balancers/:loadBalancerId/pools/:id`

### URL Parameters

Parameter | Description
--------- | -----------
loadBalancerId | The ID of the Load Balancer
ID | The ID of the Load Balancer Pool

