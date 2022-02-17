## Network DHCP Relays

Provides API interfaces for managing Network DHCP Relays for a Network Service within <%= application_name %>.

## Get all Network DHCP Relays for Network Server

```shell
curl "<%= curl_url %>/api/networks/servers/1/dhcp-relays" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
    "networkDhcpRelays": [
        {
            "id": 5,
            "dateCreated": "2021-11-02T20:06:02Z",
            "providerId": "/infra/dhcp-relay-configs/test-dhcp-repay",
            "lastUpdated": "2021-11-08T21:30:07Z",
            "name": "test-dhcp-relay",
            "externalId": "test-dhcp-repay",
            "serverIpAddresses": [
                "192.168.127.128"
            ],
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
        "total": 2
    }
}
```

This endpoint retrieves all Network DHCP Relays for a specified Network Service.

### HTTP Request

`GET <%= api_url %>/api/networks/servers/:id/dhcp-relays`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Restricts query to only load Network DHCP Relays that contain the phrase specified in name or description


## Get a Specific Network DHCP Relay

```shell
curl "<%= curl_url %>/api/networks/servers/1/dhcp-relays/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
    "networkDhcpRelay": {
        "id": 5,
        "dateCreated": "2021-11-02T20:06:02Z",
        "providerId": "/infra/dhcp-relay-configs/dd-test-dhcp-repay",
        "lastUpdated": "2021-11-08T21:30:07Z",
        "name": "test-dhcp-relay",
        "externalId": "test-dhcp-repay",
        "serverIpAddresses": [
            "192.168.127.128"
        ],
        "owner": {
            "id": 1
        },
        "networkServer": {
            "id": 5
        }
    }
}
```

This endpoint retrieves a specific Network DHCP Relay.

### HTTP Request

`GET <%= api_url %>/api/networks/servers/:serverId/dhcp-relays/:id`

### URL Parameters

Parameter | Description
--------- | -----------
serverId | ID of the network server
id | ID of the Network DHCP Relay

## Create a Network DHCP Relay

```shell
curl -XPOST "<%= curl_url %>/api/networks/servers/1/dhcp-relays" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "networkDhcpRelay": {
      "name": "test-dhcp-relay",
      "serverIpAddresses": [
          "192.168.127.129"
      ]
  }
}'
```

> The above command returns JSON structured like getting a single Network DHCP Relay:

```json
{
  "success": true,
  "id": 7
}
```

### HTTP Request

`POST <%= api_url %>/api/networks/servers/:serverId/dhcp-relays`

### URL Parameters

Parameter | Description
--------- | -----------
serverId | ID of the network server

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name |  | Name
serverIpAddresses |  | Server IP Addresses for the DHCP Relay

## Update a Network DHCP Relay

Use this command to update an existing Network DHCP Relay.

```shell
curl -XPUT "<%= curl_url %>/api/networks/servers/1/dhcp-relays/1" \
  -H "Authorization: BEARER <%= curl_token %>"
  -H "Content-Type: application/json" \
  -d '{
    "networkDhcpRelay": {
        "name": "test-dhcp-relay",
        "serverIpAddresses": [
            "192.168.127.129"
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

`PUT <%= api_url %>/api/networks/servers/:serverId/dhcp-relays/:id`

### URL Parameters

Parameter | Description
--------- | -----------
serverId | ID of the network server
id | ID of the Network DHCP Relay

### JSON Parameters

The parameters for update a Network DHCP Relay is type dependent. The following lists the common parameters. See [get a specific type](#get-a-specific-network-type)
to list available options for the network server type.

Parameter | Description
--------- | -----------
name | Network DHCP Relay name
serverIpAddresses | Server IP Addresses for the DHCP Relay

## Delete a Network DHCP Relay

```shell
curl -XDELETE "<%= curl_url %>/api/networks/servers/:serverId/dhcp-relays/:id`
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

Will delete a Network DHCP Relay from the system and make it no longer usable.

### HTTP Request

`DELETE <%= api_url %>/api/networks/servers/:serverId/dhcp-relays/:id`

### URL Parameters

Parameter | Description
--------- | -----------
serverId | ID of the network server
id | The ID of the Network DHCP Relay
