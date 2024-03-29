## Network Transport Zones

Provides API interfaces for managing Network Transport Zones for a Network Service within <%= application_name %>.


## Get all Network Transport Zones for Network Server

```shell
curl "<%= curl_url %>/api/networks/servers/1/scopes" \
-H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "networkScopes": [
    {
      "id": 1,
      "internalId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
      "visibility": "private",
      "dateCreated": "2021-11-03T14:23:17Z",
      "providerId": "/xxxx/xx/xxxx/xxxxxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
      "lastUpdated": "2021-11-03T14:25:05Z",
      "active": true,
      "streamType": "OVERLAY",
      "displayName": "transport-zone-a",
      "name": "transport-zone-a",
      "status": "ok",
      "enabled": true,
      "externalId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
      "config": {
        "nvdsName": "transport-zone-a",
        "hostMembershipCriteria": "STANDARD"
      },
      "owner": {
        "id": 1
      },
      "networkServer": {
        "id": 13
      },
      "zone": {
        "id": 20
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

This endpoint retrieves all Network Transport Zones for a specified Network Service.

### HTTP Request

`GET <%= api_url %>/api/networks/servers/:id/scopes`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Restricts query to only load network transport zones that contain the phrase specified in name or description


## Get a Specific Network Transport Zone

```shell
curl "<%= curl_url %>/api/networks/servers/1/scopes/1" \
-H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "networkScope": {
    "id": 1,
    "internalId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
    "visibility": "private",
    "dateCreated": "2021-11-03T14:23:17Z",
    "providerId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
    "lastUpdated": "2021-11-03T14:25:05Z",
    "active": true,
    "streamType": "OVERLAY",
    "displayName": "transport-zone-a",
    "name": "transport-zone-a",
    "status": "ok",
    "enabled": true,
    "externalId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
    "config": {
      "nvdsName": "transport-zone-a",
      "hostMembershipCriteria": "STANDARD"
    },
    "owner": {
      "id": 1
    },
    "networkServer": {
      "id": 13
    },
    "zone": {
      "id": 20
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

This endpoint retrieves a specific network transport zone.

### HTTP Request

`GET <%= api_url %>/api/networks/servers/:serverId/scopes/:id`

### URL Parameters

Parameter | Description
--------- | -----------
serverId | ID of the network server
id | ID of the network transport zone


## Create a Network Transport Zone

Use this command to create a network transport zone.

```shell
curl -XPOST "<%= curl_url %>/api/networks/servers/1/scopes" \
-H "Authorization: BEARER <%= curl_token %>" \
-H "Content-Type: application/json" \
-d '{
  "networkScope": {
    "name": "stubby-toes-tz",
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

> The above command returns JSON Structured like this:

```json
{
  "id": 1,
  "success": true
}
```

### HTTP Request

`POST <%= api_url %>/api/networks/servers/:serverId/scopes`

### JSON Parameters

The parameters for creating a network transport zone is type dependent. The following lists the common parameters. See [get a specific type](#get-a-specific-network-type)
to list available options for the network server type.

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Network transport zone name
description | N | Network transport zone description
visibility | N | private or public
tenants | N | Array of tenant account ids that are allowed access


## Update a Network Transport Zone

Use this command to update an existing network transport zone.

```shell
curl -XPUT "<%= curl_url %>/api/networks/servers/1/scopes/1" \
-H "Authorization: BEARER <%= curl_token %>"
-H "Content-Type: application/json" \
-d '{
  "networkScope": {
    "name": "stubby-toes-tz",
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

`PUT <%= api_url %>/api/networks/servers/:serverId/scopes/:id`

### URL Parameters

Parameter | Description
--------- | -----------
serverId | ID of the network server
id | ID of the network transport zone

### JSON Parameters

The parameters for update a network transport zone is type dependent. The following lists the common parameters. See [get a specific type](#get-a-specific-network-type)
to list available options for the network server type.

Parameter | Description
--------- | -----------
name | Network transport zone name
description | Network transport zone description
visibility | private or public
tenants | Array of tenant account ids that are allowed access


## Delete a Network Transport Zone

```shell
curl -XDELETE "<%= curl_url %>/api/networks/servers/1/scopes/1" \
-H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
    "success": true
}
```

Will delete a network transport zone.

### HTTP Request

`DELETE <%= api_url %>/api/networks/servers/:serverId/scopes/:id`

### URL Parameters

Parameter | Description
--------- | -----------
serverId | ID of the network server
id | ID of the network transport zone
