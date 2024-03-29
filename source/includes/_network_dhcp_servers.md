## Network DHCP Servers

Provides API interfaces for managing Network DHCP Servers for a Network Service within <%= application_name %>.

## Get all Network DHCP Servers for Network Server

```shell
curl "<%= curl_url %>/api/networks/servers/1/dhcp-servers" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
	"networkDhcpServers": [
	    {
            "id": 5,
            "dateCreated": "2021-11-02T20:06:01Z",
            "providerId": "/infra/dhcp-server-configs/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
            "serverIpAddress": "192.168.123.100/24",
            "lastUpdated": "2021-11-02T20:06:01Z",
            "leaseTime": 86400,
            "name": "test-dhcp-server",
            "externalId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
            "config": {
                "edgeCluster": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
                "preferredEdgeNode1": "/infra/sites/default/enforcement-points/default/dhcp-servers/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/edge-nodes/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
                "preferredEdgeNode2": "/infra/sites/default/enforcement-points/default/dhcp-servers/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/edge-nodes/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
            },
            "owner": {
                "id": 1
            },
            "networkServer": {
                "id": 5
            }
        }
	],
	"meta": {
	    "max": "25",
	    "offset": "0",
	    "sort": "name",
	    "order": "asc",
	    "total": 1
	}
}
```

This endpoint retrieves all Network DHCP Servers for a specified Network Service.

### HTTP Request

`GET <%= api_url %>/api/networks/servers/:id/dhcp-servers`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Restricts query to only load Network DHCP Servers that contain the phrase specified in name or description


## Get a Specific Network DHCP Server

```shell
curl "<%= curl_url %>/api/networks/servers/1/dhcp-servers/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
    "networkDhcpServer": {
	  "id": 5,
	  "dateCreated": "2021-11-02T20:06:01Z",
	  "providerId": "/infra/dhcp-server-configs/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
	  "serverIpAddress": "192.168.123.100/24",
	  "lastUpdated": "2021-11-02T20:06:01Z",
	  "leaseTime": 86400,
	  "name": "test-dhcp-server",
	  "externalId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
	  "config": {
	      "edgeCluster": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
	      "preferredEdgeNode1": "/infra/sites/default/enforcement-points/default/dhcp-servers/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/edge-nodes/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
	      "preferredEdgeNode2": "/infra/sites/default/enforcement-points/default/dhcp-servers/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/edge-nodes/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
	  },
	  "owner": {
	      "id": 1
	  },
	  "networkServer": {
	      "id": 5
	  }
	}
}
```

This endpoint retrieves a specific Network DHCP Server.

### HTTP Request

`GET <%= api_url %>/api/networks/servers/:serverId/dhcp-servers/:id`

### URL Parameters

Parameter | Description
--------- | -----------
serverId | ID of the network server
id | ID of the Network DHCP Server

## Create a Network DHCP Server

```shell
curl -XPOST "<%= curl_url %>/api/networks/servers/1/dhcp-servers" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "networkDhcpServer": {
  	  "serverIpAddress": "192.168.123.100/24",
  	  "leaseTime": 86400,
  	  "name": "test-dhcp-server",
  	  "config": {
  	      "edgeCluster": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
  	      "preferredEdgeNode1": "/infra/sites/default/enforcement-points/default/dhcp-servers/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/edge-nodes/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
  	      "preferredEdgeNode2": "/infra/sites/default/enforcement-points/default/dhcp-servers/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/edge-nodes/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
  	  }
  	}
}'
```

> The above command returns JSON structured like getting a single Network DHCP Server:

```json
{
  "success": true,
  "id": 7
}
```

### HTTP Request

`POST <%= api_url %>/api/networks/servers/:serverId/dhcp-servers`

### URL Parameters

Parameter | Description
--------- | -----------
serverId | ID of the network server

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name |  | Name
serverIpAddress |  | Server Address for the DHCP Server
leaseTime | 86400 | Optional lease time for the DHCP Server
config |  | Configuration object with parameters that vary by pool type.

#### NSX-T Config Options

Parameter | Required | Description
--------- | -------- | -----------
edgeCluster | N | Edge Cluster See [Edge Clusters](#network-edge-clusters)
preferredEdgeNode1 | N | Active Edge Node Options obtained by calling [option source](#get-option-source-data) with `:optionSource` = `nsxtEdgeNodes` and `networkServerId` param
preferredEdgeNode2 | N | Standby Edge Node Options obtained by calling [option source](#get-option-source-data) with `optionSource` = `nsxtEdgeNodes` and `networkServerId` param

## Update a Network DHCP Server

Use this command to update an existing Network DHCP Server.

```shell
curl -XPUT "<%= curl_url %>/api/networks/servers/1/dhcp-servers/1" \
  -H "Authorization: BEARER <%= curl_token %>"
  -H "Content-Type: application/json" \
  -d '{
    "networkDhcpServer": {
          "id": 5,
          "dateCreated": "2021-11-02T20:06:01Z",
          "providerId": "/infra/dhcp-server-configs/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
          "serverIpAddress": "192.168.123.100/24",
          "lastUpdated": "2021-11-02T20:06:01Z",
          "leaseTime": 86400,
          "name": "test-dhcp-server",
          "externalId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
          "config": {
              "edgeCluster": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
              "preferredEdgeNode1": "/infra/sites/default/enforcement-points/default/dhcp-servers/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/edge-nodes/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
              "preferredEdgeNode2": "/infra/sites/default/enforcement-points/default/dhcp-servers/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/edge-nodes/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
          },
          "owner": {
              "id": 1
          },
          "networkServer": {
              "id": 5
          }
        }
    }'
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`PUT <%= api_url %>/api/networks/servers/:serverId/dhcp-servers/:id`

### URL Parameters

Parameter | Description
--------- | -----------
serverId | ID of the network server
id | ID of the Network DHCP Server

### JSON Parameters

The parameters for update a Network DHCP Server is type dependent. The following lists the common parameters. See [get a specific type](#get-a-specific-network-type)
to list available options for the network server type.

Parameter | Description
--------- | -----------
name | Network DHCP Server name
description | Network DHCP Server description

#### NSX-T Config Options

Parameter | Required | Description
--------- | -------- | -----------
edgeCluster | N | Edge Cluster See [Edge Clusters](#network-edge-clusters)
preferredEdgeNode1 | N | Active Edge Node Options obtained by calling [option source](#get-option-source-data) with `:optionSource` = `nsxtEdgeNodes` and `networkServerId` param
preferredEdgeNode2 | N | Standby Edge Node Options obtained by calling [option source](#get-option-source-data) with `optionSource` = `nsxtEdgeNodes` and `networkServerId` param

## Delete a Network DHCP Server

```shell
curl -XDELETE "<%= curl_url %>/api/networks/servers/:serverId/dhcp-servers/:id`
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

Will delete a Network DHCP Server from the system and make it no longer usable.

### HTTP Request

`DELETE <%= api_url %>/api/networks/servers/:serverId/dhcp-servers/:id`

### URL Parameters

Parameter | Description
--------- | -----------
serverId | ID of the network server
id | The ID of the Network DHCP Server
