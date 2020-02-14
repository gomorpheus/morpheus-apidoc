## Network Proxies

Provides API for managing Network Proxies.

## Get All Network Proxies

```shell
curl "$MORPHEUS_API_URL/api/networks/proxies"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "networkProxies": [
    {
      "id": 1,
      "name": "myproxy",
      "proxyHost": "10.30.50.100",
      "proxyPort": 9091,
      "proxyUser": null,
      "proxyPassword": null,
      "proxyDomain": "myproxy.com",
      "proxyWorkstation": null,
      "visibility": "private",
      "account": {
        "id": 1,
        "name": "root"
      },
      "owner": {
        "id": 1,
        "name": "root"
      }
    }
  ],
  "networkProxyCount": 1,
  "meta": {
    "size": 1,
    "total": 1,
    "offset": 0,
    "max": 25
  }
}
```

This endpoint retrieves all Network Proxies associated with the account.

### HTTP Request

`GET https://api.gomorpheus.com/api/networks/proxies`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
name |  | If specified will return an exact match on name
phrase |  | If specified will return a partial match on name

## Get a Specific Network Proxy


```shell
curl "$MORPHEUS_API_URL/api/networks/proxies/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "networkProxy": {
    "id": 1,
    "name": "myproxy",
    "proxyHost": "10.30.50.100",
    "proxyPort": 9091,
    "proxyUser": null,
    "proxyPassword": null,
    "proxyDomain": "myproxy.com",
    "proxyWorkstation": null,
    "visibility": "private",
    "account": {
      "id": 1,
      "name": "root"
    },
    "owner": {
      "id": 1,
      "name": "root"
    }
  }
}
```

This endpoint retrieves a specific Network Proxy.


### HTTP Request

`GET https://api.gomorpheus.com/api/networks/proxies/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Network Proxy to retrieve


## Create a Network Proxy

```shell
curl -XPOST "$MORPHEUS_API_URL/api/networks/proxies" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
  "networkProxy": {
    "name": "myproxy",
    "proxyHost": "192.168.1.155",
    "proxyPort": "9005",
    "proxyUser": "proxyuser",
    "proxyPassword": "proxypass",
    "visibility": "private"
  }
}'
```

> The above command returns JSON structured like getting a single Network Proxy: 

### HTTP Request

`POST https://api.gomorpheus.com/api/networks/proxies`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Name
description      |  | Description

## Update a Network Proxy

```shell
curl -XPUT "$MORPHEUS_API_URL/api/networks/proxies/:id" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
  "networkProxy": {
    "name": "ourproxy"
  }
}'
```

> The above command returns JSON structured like getting a single Network Proxy: 

### HTTP Request

`PUT https://api.gomorpheus.com/api/networks/proxies/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Network Proxy

### JSON Parameters

Same as [Create](#create-a-network-proxy).

## Delete a Network Proxy

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/networks/proxies/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

Will delete a Network Proxy from the system and make it no longer usable.

### HTTP Request

`DELETE https://api.gomorpheus.com/api/networks/proxies/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Network Proxy

