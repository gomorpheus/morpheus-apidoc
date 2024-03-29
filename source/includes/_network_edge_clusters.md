## Network Edge Clusters

Provides API interfaces for managing Network Edge Clusters for a Network Service within <%= application_name %>.

## Get all Network Edge Clusters for Network Server

```shell
curl "<%= curl_url %>/api/networks/servers/1/edge-clusters" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
	"networkEdgeClusters": [
	    {
	        "id": 1,
	        "internalId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
	        "visibility": "public",
	        "dateCreated": "2021-11-01T23:02:22Z",
	        "providerId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
	        "lastUpdated": "2021-11-04T21:23:59Z",
	        "active": true,
	        "displayName": "test-edge-cluster",
	        "name": "test-edge-cluster",
	        "enabled": true,
	        "externalId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
	        "config": {
	            "clusterProfileBindings": "nsx-default-edge-high-availability-profile",
	            "members": 2,
	            "deploymentType": "VIRTUAL_MACHINE",
	            "memberNodeType": "EDGE_NODE"
	        },
	        "owner": {
	            "id": 1
	        },
	        "networkServer": {
	            "id": 3
	        },
	        "zone": {
	            "id": 5
	        },
	        "tenants": [
	            {
	                "id": 1,
	                "name": "Stubby Toes Inc."
	            }
	        ]
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

This endpoint retrieves all Network Edge Clusters for a specified Network Service.

### HTTP Request

`GET <%= api_url %>/api/networks/servers/:id/edge-clusters`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Restricts query to only load network Edge Clusters that contain the phrase specified in name or description


## Get a Specific Network Edge Cluster

```shell
curl "<%= curl_url %>/api/networks/servers/1/edge-clusters/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
    "networkEdgeCluster": {
        "id": 1,
        "internalId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
        "visibility": "public",
        "dateCreated": "2021-11-01T23:02:22Z",
        "providerId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
        "lastUpdated": "2021-11-04T21:23:38Z",
        "active": true,
        "displayName": "test-edge-cluster-rename",
        "name": "test-edge-cluster-rename",
        "enabled": true,
        "externalId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
        "config": {
            "clusterProfileBindings": "nsx-default-edge-high-availability-profile",
            "members": 2,
            "deploymentType": "VIRTUAL_MACHINE",
            "memberNodeType": "EDGE_NODE"
        },
        "owner": {
            "id": 1
        },
        "networkServer": {
            "id": 3
        },
        "zone": {
            "id": 5
        },
        "tenants": [
            {
                "id": 1,
                "name": "Stubby Toes Inc."
            }
        ]
    }
}
```

This endpoint retrieves a specific network Edge Cluster.

### HTTP Request

`GET <%= api_url %>/api/networks/servers/:serverId/edge-clusters/:edgeClusterId`

### URL Parameters

Parameter | Description
--------- | -----------
serverId | ID of the network server
edgeClusterId | ID of the network Edge Cluster

## Update a Network Edge Cluster

Use this command to update an existing network Edge Cluster.

```shell
curl -XPUT "<%= curl_url %>/api/networks/servers/1/edge-clusters/1" \
  -H "Authorization: BEARER <%= curl_token %>"
  -H "Content-Type: application/json" \
  -d '{
        "networkEdgeCluster": {
          "name": "stubby-toes-edge-cluster",
          "description": null,
          "visibility": "public",
          "tenants": [
            {
              "id": 1
            },
            {
              "id": 2
            }
          ]
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

`PUT <%= api_url %>/api/networks/servers/:serverId/edge-clusters/:edgeClusterId`

### URL Parameters

Parameter | Description
--------- | -----------
serverId | ID of the network server
edgeClusterId | ID of the network Edge Cluster

### JSON Parameters

The parameters for update a network Edge Cluster is type dependent. The following lists the common parameters. See [get a specific type](#get-a-specific-network-type)
to list available options for the network server type.

Parameter | Description
--------- | -----------
name | Network Edge Cluster name
description | Network Edge Cluster description
visibility | private or public
tenants | Array of tenant account ids that are allowed access