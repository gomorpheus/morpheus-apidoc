## Network Pools

Provides API for managing Network Pools.

## Get All Network Pools

```shell
curl "$MORPHEUS_API_URL/api/networks/pools"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "networkPools": [
    {
      "id": 9,
      "type": {
        "id": 2,
        "name": "Morpheus",
        "code": "morpheus"
      },
      "account": {
        "id": 1,
        "name": "root"
      },
      "category": null,
      "code": null,
      "name": "test pool",
      "displayName": null,
      "internalId": null,
      "externalId": null,
      "dnsDomain": null,
      "dnsSearchPath": null,
      "hostPrefix": null,
      "httpProxy": null,
      "dnsServers": [

      ],
      "dnsSuffixList": [

      ],
      "dhcpServer": false,
      "dhcpIp": null,
      "gateway": null,
      "netmask": null,
      "subnetAddress": null,
      "ipCount": 41,
      "freeCount": 41,
      "poolEnabled": true,
      "tftpServer": null,
      "bootFile": null,
      "refType": null,
      "refId": null,
      "parentType": null,
      "parentId": null,
      "poolGroup": null,
      "ipRanges": [
        {
          "id": 8,
          "startAddress": "192.168.15.10",
          "endAddress": "192.168.15.50",
          "internalId": null,
          "externalId": null,
          "description": null,
          "addressCount": 0,
          "active": true,
          "dateCreated": "2017-11-29T04:47:33Z",
          "lastUpdated": "2017-11-29T04:47:33Z"
        }
      ]
    }
  ],
  "networkPoolCount": 1,
  "meta": {
    "size": 1,
    "total": 1,
    "offset": 0,
    "max": 25
  }
}
```

This endpoint retrieves all Network Pools associated with the account.

### HTTP Request

`GET https://api.gomorpheus.com/api/networks/pools`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
name |  | If specified will return an exact match on name
phrase |  | If specified will return a partial match on name

## Get a Specific Network Pool


```shell
curl "$MORPHEUS_API_URL/api/networks/pools/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "networkPool": {
    "id": 9,
    "type": {
      "id": 2,
      "name": "Morpheus",
      "code": "morpheus"
    },
    "account": {
      "id": 1,
      "name": "root"
    },
    "category": null,
    "code": null,
    "name": "test pool",
    "displayName": null,
    "internalId": null,
    "externalId": null,
    "dnsDomain": null,
    "dnsSearchPath": null,
    "hostPrefix": null,
    "httpProxy": null,
    "dnsServers": [

    ],
    "dnsSuffixList": [

    ],
    "dhcpServer": false,
    "dhcpIp": null,
    "gateway": null,
    "netmask": null,
    "subnetAddress": null,
    "ipCount": 41,
    "freeCount": 41,
    "poolEnabled": true,
    "tftpServer": null,
    "bootFile": null,
    "refType": null,
    "refId": null,
    "parentType": null,
    "parentId": null,
    "poolGroup": null,
    "ipRanges": [
      {
        "id": 8,
        "startAddress": "192.168.15.10",
        "endAddress": "192.168.15.50",
        "internalId": null,
        "externalId": null,
        "description": null,
        "addressCount": 0,
        "active": true,
        "dateCreated": "2017-11-29T04:47:33Z",
        "lastUpdated": "2017-11-29T04:47:33Z"
      }
    ]
  }
}

```

This endpoint retrieves a specific Network Pool.


### HTTP Request

`GET https://api.gomorpheus.com/api/networks/pools/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Network Pool to retrieve


## Create a Network Pool

```shell
curl -XPOST "$MORPHEUS_API_URL/api/networks/pools" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
  "networkPool": {
    "name": "test pool",
    "type": {
      "code": "morpheus"
    },
    "ipRanges": [
      {
        "startAddress": "192.2.2.100",
        "endAddress": "192.2.2.199",
      }
    ]
  }
}'
```

> The above command returns JSON structured like getting a single Network Pool: 

### HTTP Request

`POST https://api.gomorpheus.com/api/networks/pools`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name |  | Name
type |  | Pool Type. i.e. 'morpheus', 'phpipam', etc.
ipRanges | N | Array of IP range objects, see [IP Ranges](#ip-ranges), this can only be specified when type is 'morpheus'.
config | N | Configuration object with parameters that vary by pool type.

#### IP Ranges
The `ipRanges` parameter is array of IP range objects with following fields:

Parameter | Required | Description
--------- | -------- | -----------
startAddress | Y | Starting IP Address
endAddress | Y | Ending IP Address

## Update a Network Pool

```shell
curl -XPUT "$MORPHEUS_API_URL/api/networks/pools/:id" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
  "networkPool": {
    "name": "test ip pool"
  }
}'
```

> The above command returns JSON structured like getting a single Network Pool: 

### HTTP Request

`PUT https://api.gomorpheus.com/api/networks/pools/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Network Pool

### JSON Parameters

Same as [Create](#create-a-network-pool).

## Delete a Network Pool

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/networks/pools/:id" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

Will delete a Network Pool from the system and make it no longer usable.

### HTTP Request

`DELETE https://api.gomorpheus.com/api/networks/pools/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Network Pool

