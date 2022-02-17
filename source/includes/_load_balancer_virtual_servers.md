## Load Balancer Virtual Servers

Provides API for managing Load Balancer Virtual Servers.

## Get All Load Balancer Virtual Servers For Load Balancer

```shell
curl "<%= curl_url %>/api/load-balancers/1/virtual-servers"
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "loadBalancerInstances": [
    {
      "id": 5,
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
      "instance": null,
      "description": null,
      "internalId": "/infra/lb-virtual-servers/ba4dacf1-1f1c-47fe-a0cd-70344521391c",
      "externalId": "ba4dacf1-1f1c-47fe-a0cd-70344521391c",
      "dateCreated": "2021-11-09T17:11:06Z",
      "lastUpdated": "2021-11-16T20:00:13Z",
      "active": true,
      "sticky": false,
      "sslEnabled": null,
      "externalAddress": false,
      "backendPort": null,
      "vipType": null,
      "vipAddress": "10.11.12.13",
      "vipHostname": null,
      "vipProtocol": "http",
      "vipScheme": null,
      "vipMode": null,
      "vipName": "db-1109",
      "vipPort": 80,
      "vipSticky": null,
      "vipBalance": null,
      "servicePort": null,
      "sourceAddress": null,
      "sslCert": {
        "id": 272,
        "name": "bob-apache-lb"
      },
      "sslMode": null,
      "sslRedirectMode": null,
      "vipShared": false,
      "vipDirectAddress": null,
      "serverName": null,
      "poolName": null,
      "removing": false,
      "vipSource": "user",
      "extraConfig": null,
      "serviceAccess": null,
      "networkId": null,
      "subnetId": null,
      "externalPortId": null,
      "status": "online",
      "vipStatus": "online"
    },
    {
      "id": 1,
      "loadBalancer": {
        "id": 2,
        "type": {
          "id": 19,
          "code": "nsx-t",
          "name": "NSX-T"
        },
        "name": "dd-nsxt-1",
        "ip": "10.32.23.7"
      },
      "instance": null,
      "description": null,
      "internalId": "/infra/lb-virtual-servers/93bd9df9-966b-4698-8dc0-1431295df6a4",
      "externalId": "93bd9df9-966b-4698-8dc0-1431295df6a4",
      "dateCreated": "2021-07-06T18:33:03Z",
      "lastUpdated": "2021-11-16T20:00:13Z",
      "active": true,
      "sticky": false,
      "sslEnabled": null,
      "externalAddress": false,
      "backendPort": null,
      "vipType": null,
      "vipAddress": "192.168.2.2",
      "vipHostname": null,
      "vipProtocol": "http",
      "vipScheme": null,
      "vipMode": null,
      "vipName": "dd-nsx-test2",
      "vipPort": 8080,
      "vipSticky": null,
      "vipBalance": null,
      "servicePort": null,
      "sourceAddress": null,
      "sslCert": null,
      "sslMode": null,
      "sslRedirectMode": null,
      "vipShared": false,
      "vipDirectAddress": null,
      "serverName": null,
      "poolName": null,
      "removing": false,
      "vipSource": "user",
      "extraConfig": null,
      "serviceAccess": null,
      "networkId": null,
      "subnetId": null,
      "externalPortId": null,
      "status": "online",
      "vipStatus": "online"
    },
    {
      "id": 2,
      "loadBalancer": {
        "id": 2,
        "type": {
          "id": 19,
          "code": "nsx-t",
          "name": "NSX-T"
        },
        "name": "dd-nsxt-1",
        "ip": "10.32.23.7"
      },
      "instance": null,
      "description": null,
      "internalId": "/infra/lb-virtual-servers/e4844ef6-ed50-4259-8687-6abe0adba890",
      "externalId": "e4844ef6-ed50-4259-8687-6abe0adba890",
      "dateCreated": "2021-07-06T18:33:03Z",
      "lastUpdated": "2021-11-16T20:00:13Z",
      "active": true,
      "sticky": false,
      "sslEnabled": null,
      "externalAddress": false,
      "backendPort": null,
      "vipType": null,
      "vipAddress": "192.168.212.95",
      "vipHostname": null,
      "vipProtocol": "http",
      "vipScheme": null,
      "vipMode": null,
      "vipName": "dd-nsxt-vs-1",
      "vipPort": 80,
      "vipSticky": null,
      "vipBalance": null,
      "servicePort": null,
      "sourceAddress": null,
      "sslCert": null,
      "sslMode": null,
      "sslRedirectMode": null,
      "vipShared": false,
      "vipDirectAddress": null,
      "serverName": null,
      "poolName": null,
      "removing": false,
      "vipSource": "user",
      "extraConfig": null,
      "serviceAccess": null,
      "networkId": null,
      "subnetId": null,
      "externalPortId": null,
      "status": "online",
      "vipStatus": "online"
    }
  ],
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 3,
    "total": 3
  }
}
```

This endpoint retrieves load balancer virtual servers associated with a specified load balancer.

### HTTP Request

`GET <%= api_url %>/api/load-balancers/:loadBalancerId/virtual-servers`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | vipName | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | If specified will return a partial match on vipName, vipHostname or vipAddress
vipName |  | If specified will return an exact match on vipName
vipAddress |  | If specified will return an exact match on vipAddress
vipHostname |  | If specified will return an exact match on vipHostname


## Get a Specific Load Balancer Virtual Server

```shell
curl "<%= curl_url %>/api/load-balancers/1/virtual-servers/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "loadBalancerInstance": {
    "id": 1,
    "loadBalancer": {
      "id": 2,
      "type": {
        "id": 19,
        "code": "nsx-t",
        "name": "NSX-T"
      },
      "name": "dd-nsxt-1",
      "ip": "10.32.23.7"
    },
    "instance": null,
    "description": null,
    "internalId": "/infra/lb-virtual-servers/93bd9df9-966b-4698-8dc0-1431295df6a4",
    "externalId": "93bd9df9-966b-4698-8dc0-1431295df6a4",
    "dateCreated": "2021-07-06T18:33:03Z",
    "lastUpdated": "2021-11-16T20:00:13Z",
    "active": true,
    "sticky": false,
    "sslEnabled": null,
    "externalAddress": false,
    "backendPort": null,
    "vipType": null,
    "vipAddress": "192.168.2.2",
    "vipHostname": null,
    "vipProtocol": "http",
    "vipScheme": null,
    "vipMode": null,
    "vipName": "dd-nsx-test2",
    "vipPort": 8080,
    "vipSticky": null,
    "vipBalance": null,
    "servicePort": null,
    "sourceAddress": null,
    "sslCert": null,
    "sslMode": null,
    "sslRedirectMode": null,
    "vipShared": false,
    "vipDirectAddress": null,
    "serverName": null,
    "poolName": null,
    "removing": false,
    "vipSource": "user",
    "extraConfig": null,
    "serviceAccess": null,
    "networkId": null,
    "subnetId": null,
    "externalPortId": null,
    "status": "online",
    "vipStatus": "online"
  }
}
```

This endpoint retrieves a specific Load Balancer Virtual Server.


### HTTP Request

`GET <%= api_url %>/api/load-balancers/:loadBalancerId/virtual-servers/:id`

### URL Parameters

Parameter | Description
--------- | -----------
loadBalancerId | The ID of the Load Balancer
id | The ID of the Load Balancer Virtual Server to retrieve


## Create a Load Balancer Virtual Server

```shell
curl -XPOST "<%= curl_url %>/api/load-balancers/1/virtual-servers" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "loadBalancerInstance": {
    "vipName": "test virtual server",
    "description": "a test virtual server",
    "vipAddress": "10.11.12.13",
    "vipPort": "80",
    "vipProtocol": "http",
    "sslCert": 0,
    "sslServerCert": 0
  }
}'
```

> The above command returns JSON structured like getting a single Load Balancer Virtual Server: 

Use this command to create a load balancer virtual server.

### HTTP Request

`POST <%= api_url %>/api/load-balancers/:loadBalancerId/virtual-servers`

### URL Parameters

Parameter | Description
--------- | -----------
loadBalancerId | The ID of the Load Balancer

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
vipName      |  | VIP Name
description      |  | Description
vipAddress      |  | VIP Address
vipPort      |  | VIP Port
vipProtocol      |  | VIP Protocol
vipHostname      |  | VIP Hostname
pool      |  | Load Balancer Pool ID
sslCert      |  | SSL Client Certificate ID
sslServerCert      |  | SSL Server Certificate ID
config |  | Configuration object with parameters that vary by [type](#load-balancer-types).

This endpoint allows creating a Load Balancer Virtual Server. Configuration options vary by [Load Balancer Type](#load-balancer-types).

## Update a Load Balancer Virtual Server

```shell
curl -XPUT "<%= curl_url %>/api/load-balancers/:loadBalancerId/virtual-servers/:id" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "loadBalancerInstance": {
    "description": "new description"
  }
}'
```

> The above command returns JSON structured like getting a single Load Balancer Virtual Server: 

Use this command to update an exiting load balancer virtual server.

### HTTP Request

`PUT <%= api_url %>/api/load-balancers/:loadBalancerId/virtual-servers/:id`

### URL Parameters

Parameter | Description
--------- | -----------
loadBalancerId | The ID of the Load Balancer
id | The ID of the Load Balancer Virtual Server

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
vipName      |  | VIP Name
description      |  | Description
vipAddress      |  | VIP Address
vipPort      |  | VIP Port
vipProtocol      |  | VIP Protocol
vipHostname      |  | VIP Hostname
pool      |  | Load Balancer Pool ID
sslCert      |  | SSL Client Certificate ID
sslServerCert      |  | SSL Server Certificate ID
config |  | Configuration object with parameters that vary by [type](#load-balancer-types).

This endpoint allows updating a Load Balancer Virtual Server.  Configuration options vary by [Load Balancer Type](#load-balancer-types).

## Delete a Load Balancer Virtual Server

```shell
curl -XDELETE "<%= curl_url %>/api/load-balancers/:loadBalancerId/virtual-servers/:id" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

Will delete a Load Balancer Virtual Server from the system and make it no longer usable.

### HTTP Request

`DELETE <%= api_url %>/api/load-balancers/:loadBalancerId/virtual-servers/:id`

### URL Parameters

Parameter | Description
--------- | -----------
loadBalancerId | The ID of the Load Balancer
id | The ID of the Load Balancer Virtual Server

