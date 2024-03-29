## Network DHCP Static Routes

Provides API interfaces for managing Network DHCP static routes for a Network within <%= application_name %>.

## Get all Static Routes for a Network

```shell
curl "<%= curl_url %>/api/networks/1/routes" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "networkRoutes": [
    {
      "id": 58,
      "name": "api-test-route3",
      "code": null,
      "description": null,
      "priority": null,
      "routeType": "static",
      "source": "10.10.0.0/24",
      "sourceType": "cidr",
      "destination": "10.20.0.0",
      "destinationType": "address",
      "defaultRoute": false,
      "networkMtu": null,
      "externalInterface": null,
      "internalId": null,
      "uniqueId": null,
      "externalType": null,
      "enabled": true,
      "visible": true
    }
  ]
}
```

This endpoint retrieves all routes for specified network.

### HTTP Request

`GET <%= api_url %>/api/networks/:network_id/routes`

### URL Parameters

Parameter | Description
--------- | -----------
network_id | The ID of the network


## Get a Static Route for a Network

```shell
curl "<%= curl_url %>/api/networks/1/routes/59" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "networkRoute": {
    "id": 59,
    "name": "api-test-route3",
    "code": null,
    "description": null,
    "priority": null,
    "routeType": "static",
    "source": "10.10.0.0/24",
    "sourceType": "cidr",
    "destination": "10.20.0.0",
    "destinationType": "address",
    "defaultRoute": false,
    "networkMtu": null,
    "externalInterface": null,
    "internalId": null,
    "uniqueId": null,
    "externalType": null,
    "enabled": true,
    "visible": true
  }
}
```

This endpoint retrieves a network static route for specified network.

### HTTP Request

`GET <%= api_url %>/api/networks/:network_id/routes/:route_id`

### URL Parameters

Parameter | Description
--------- | -----------
network_id | The ID of the network
route_id | The ID of the route



## Create a Network Static Route

Use this command to create a route for an existing network.

```shell
curl -XPOST "<%= curl_url %>/api/networks/1/routes" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
        "networkRoute": {
          "source": "10.10.10.10/24",
          "destination": "12.12.12.12"
        }
      }'
```

> The above command returns JSON Structured like this:

```json
{
  "id": 43,
  "success": true
}
```

### HTTP Request

`PUT <%= api_url %>/api/networks/:network_id/routes/:route_id`

### URL Parameters

Parameter | Description
--------- | -----------
network_id | The ID of the network
route_id | The ID of the route to be updated

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
source | Y | Source CIDR
destination | Y | Destination address

## Update a Network Static Route

Use this command to update a route

```shell
curl -XPUT "<%= curl_url %>/api/networks/1/routes/1" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
        "networkRoute": {
          "source": "10.10.10.10/24",
          "destination": "12.12.12.12"
        }
      }'
```

> The above command returns JSON Structured like this:

```json
{
  "id": 43,
  "success": true
}
```

### HTTP Request

`PUT <%= api_url %>/api/networks/:network_id/routes/:route_id`

### URL Parameters

Parameter | Description
--------- | -----------
network_id | The ID of the network
route_id | The ID of the route to be updated

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
source | Y | Source CIDR
destination | Y | Destination address


## Delete a Network Static Route

```shell
curl -XDELETE "<%= curl_url %>/api/networks/1/routes/2" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a route from a network.

### HTTP Request

`DELETE <%= api_url %>/api/networks/:network_id/routes/:route_id`

### URL Parameters

Parameter | Description
--------- | -----------
network_id | The ID of the network
route_id | The ID of the route to be deleted
