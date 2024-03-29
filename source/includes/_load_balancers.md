# Load Balancers

Provides API for managing Load Balancers.

## Get All Load Balancers

```shell
curl "<%= curl_url %>/api/load-balancers"
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "loadBalancers": [
    {
      "id": 80,
      "name": "dand-nsxt",
      "accountId": 1,
      "cloud": {
        "id": 75,
        "name": "vmware-nsx"
      },
      "type": {
        "id": 19,
        "name": "NSX-T",
        "code": "nsx-t"
      },
      "visibility": "public",
      "description": "",
      "host": "10.32.23.7",
      "port": 22,
      "username": null,
      "ip": "10.32.23.7",
      "internalIp": null,
      "externalIp": null,
      "apiPort": null,
      "adminPort": null,
      "sslEnabled": null,
      "sslCert": null,
      "config": {
        "loglevel": "INFO",
        "tier1": "/infra/tier-1s/4286ddad-3d8a-464b-81a8-e17e15f30ca8",
        "size": "SMALL",
        "adminState": true,
        "systemVersion": "2.5.1.0.0.15314292"
      },
      "dateCreated": "2021-10-19T17:32:05Z",
      "lastUpdated": "2021-12-03T18:52:47Z"
    },
    {
      "id": 115,
      "name": "dand-tenant-nsxt-lb",
      "accountId": 1,
      "cloud": {
        "id": 75,
        "name": "vmware-nsx"
      },
      "type": {
        "id": 19,
        "name": "NSX-T",
        "code": "nsx-t"
      },
      "visibility": "public",
      "description": "",
      "host": "10.32.23.7",
      "port": 22,
      "username": null,
      "ip": "10.32.23.7",
      "internalIp": null,
      "externalIp": null,
      "apiPort": null,
      "adminPort": null,
      "sslEnabled": null,
      "sslCert": null,
      "config": {
        "loglevel": "INFO",
        "tier1": null,
        "size": "SMALL",
        "adminState": true,
        "serverVersion": null,
        "systemVersion": "2.5.1.0.0.15314292"
      },
      "dateCreated": "2021-11-18T16:53:16Z",
      "lastUpdated": "2021-12-03T18:52:43Z"
    }
  ],
  "meta": {
    "offset": 0,
    "max": 2,
    "size": 2,
    "total": 6
  }
}

```

This endpoint retrieves all load balancers associated with the account.

### HTTP Request

`GET <%= api_url %>/api/load-balancers`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
name |  | If specified will return an exact match on name
phrase |  | If specified will return a partial match on name

## Get a Specific Load Balancer

```shell
curl "<%= curl_url %>/api/load-balancers/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "loadBalancer": {
    "id": 80,
    "name": "dand-nsxt",
    "accountId": 1,
    "cloud": {
      "id": 75,
      "name": "vmware-nsx"
    },
    "type": {
      "id": 19,
      "name": "NSX-T",
      "code": "nsx-t"
    },
    "visibility": "public",
    "description": "",
    "host": "10.32.23.7",
    "port": 22,
    "username": null,
    "ip": "10.32.23.7",
    "internalIp": null,
    "externalIp": null,
    "apiPort": null,
    "adminPort": null,
    "sslEnabled": null,
    "sslCert": null,
    "config": {
      "loglevel": "INFO",
      "tier1": "/infra/tier-1s/4286ddad-3d8a-464b-81a8-e17e15f30ca8",
      "size": "SMALL",
      "adminState": true,
      "systemVersion": "2.5.1.0.0.15314292"
    },
    "dateCreated": "2021-10-19T17:32:05Z",
    "lastUpdated": "2021-12-03T18:52:47Z"
  }
}

```

This endpoint retrieves a specific Load Balancer.


### HTTP Request

`GET <%= api_url %>/api/load-balancers/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Load Balancer to retrieve


## Create a Load Balancer

```shell
curl -XPOST "<%= curl_url %>/api/load-balancers" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "loadBalancer": {
    "type": "nsx-t",
    "networkServerId": 23,
    "name": "lab-nsxt",
    "enabled": true,
    "config": {
      "adminState": true,
      "size": "SMALL",
      "loglevel": "INFO"
    },
    "resourcePermission": {
      "all": true
    },
    "tenants": [
      {
        "id": 2
      },
      {
        "id": 1
      }
    ],
    "visibility": "private"
  }
}'
```

> The above command returns JSON structured like getting a single Load Balancer: 

**_Available for NSX-T load balancers only_**

Use this command to create a load balancer.

### HTTP Request

`POST <%= api_url %>/api/load-balancers`

### JSON Parameters

Parameter | Default | Description
--------- |---------| -----------
name      |         | Name
description      |         | Description
networkServerId |         | Network Server ID
config |         | Configuration object with parameters that vary by [type](#load-balancer-types).
visibility      | public  | private or public
tenants  |         | Array of tenant account ids that are allowed access
resourcePermissions.all  |         | Pass true to allow access to all groups
resourcePermissions.sites  |         | Array of groups that are allowed access

This endpoint allows creating a Load Balancer.  Only certain types of clouds support creating and deleting load balancers. Configuration options vary by [Load Balancer Type](#load-balancer-types).

## Update a Load Balancer

```shell
curl -XPUT "<%= curl_url %>/api/load-balancers/1" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "loadBalancer": {
    "description": "new description"
  }
}'
```

> The above command returns JSON structured like getting a single Load Balancer: 

**_Available for NSX-T load balancers only_**

Use this command to update an existing load balancer.

### HTTP Request

`PUT <%= api_url %>/api/load-balancers/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Load Balancer

### JSON Parameters

Parameter | Default | Description
--------- |---------| -----------
name      |         | Name
description      |         | Description
enabled      |         | Activate (true) or disable (false)
config |         | Configuration object with parameters that vary by [type](#load-balancer-types).
visibility      | public  | private or public
tenants  |         | Array of tenant account ids that are allowed access
resourcePermissions.all  |         | Pass true to allow access to all groups
resourcePermissions.sites  |         | Array of groups that are allowed access

This endpoint allows updating a Load Balancer.  Configuration options vary by [Load Balancer Type](#load-balancer-types).


## Refresh a Load Balancer

```shell
curl -XPUT "<%= curl_url %>/api/load-balancers/:id/refresh" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "loadBalancer": {
    "id": 80,
    "name": "dand-nsxt",
    "accountId": 1,
    "cloud": {
      "id": 75,
      "name": "vmware-nsx"
    },
    "type": {
      "id": 19,
      "name": "NSX-T",
      "code": "nsx-t"
    },
    "visibility": "public",
    "description": "",
    "host": "10.32.23.7",
    "port": 22,
    "username": null,
    "ip": "10.32.23.7",
    "internalIp": null,
    "externalIp": null,
    "apiPort": null,
    "adminPort": null,
    "sslEnabled": null,
    "sslCert": null,
    "config": {
      "loglevel": "INFO",
      "tier1": "/infra/tier-1s/4286ddad-3d8a-464b-81a8-e17e15f30ca8",
      "size": "SMALL",
      "adminState": true,
      "systemVersion": "2.5.1.0.0.15314292"
    },
    "dateCreated": "2021-10-19T17:32:05Z",
    "lastUpdated": "2021-12-03T18:52:47Z"
  }
}
```

Will refresh a Load Balancer.

### HTTP Request

`PUT <%= api_url %>/api/load-balancers/:id/refresh`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Load Balancer


## Delete a Load Balancer

```shell
curl -XDELETE "<%= curl_url %>/api/load-balancers/:id" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

Will delete a Load Balancer from the system and make it no longer usable.

### HTTP Request

`DELETE <%= api_url %>/api/load-balancers/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Load Balancer

