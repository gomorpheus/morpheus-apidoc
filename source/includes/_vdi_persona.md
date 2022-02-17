# Virtual Desktop

Provides API endpoints for the Virtual Desktop persona.  This includes viewing the available virtual desktops ([VDI pools](#vdi-pools)) and allocating them for your own personal use.

## List Virtual Desktops

```shell
curl "<%= curl_url %>/api/vdi" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "desktops": [
    {
      "id": 1,
      "logo": "/assets/containers-png/morph-resource2.png",
      "name": "Windows Desktop",
      "description": "A fancy windows desktop",
      "status": "available",
      "allocationStatus": "preparing",
      "allocation": null
    },
    {
      "id": 2,
      "logo": "/assets/containers-png/windows.png",
      "name": "Test Desktop",
      "description": "",
      "status": "available",
      "allocationStatus": "preparing",
      "apps": [
        {
          "id": 1,
          "logo": "<%= api_url %>/storage/uploads/uploads/VdiApp/1/logo/Notepad_Logo_original_original.png",
          "name": "Notepad",
          "launchPrefix": "||notepad"
        }
      ],
      "allocation": null
    }
  ],
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 2,
    "total": 2
  }
}
```

This endpoint retrieves all virtual desktops (VDI pools) along with the allocation for your user if one exists.

### HTTP Request

`GET <%= api_url %>/api/vdi`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Filter by wildcard search of name and description
name |  | Filter by name, wildcard may be specified as **%**, eg. `example-%`
description |  | Filter by description, wildcard may be specified as **%**. eg. `example-%`

## Get a Specific Virtual Desktop

```shell
curl "<%= curl_url %>/api/vdi/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "desktop": {
    "id": 1,
    "logo": "/assets/containers-png/morph-resource2.png",
    "name": "Windows Desktop",
    "description": "A fancy windows desktop",
    "status": "available",
    "allocationStatus": "preparing",
    "allocation": {
      "id": 11,
      "poolId": 1,
      "pool": {
        "id": 1,
        "name": "Test"
      },
      "instance": {
        "id": 433,
        "name": "vdi-test-3",
        "status": "provisioning"
      },
      "user": {
        "id": 3,
        "name": "Thomas A",
        "username": "tanderson"
      },
      "localUserCreated": false,
      "persistent": false,
      "status": "preparing",
      "dateCreated": "2021-04-13T12:48:15Z",
      "lastUpdated": "2021-04-13T12:48:15Z",
      "lastReserved": null,
      "releaseDate": "2021-04-13T18:48:15Z"
    }
  }
}
```

This endpoint retrieves a specific virtual desktop (VDI pool) along with the allocation for your user if one exists.

### HTTP Request

`GET <%= api_url %>/api/vdi/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the Virtual Desktop (VDI Pool)


## Allocate Virtual Desktop

```shell
curl -XPOST "<%= curl_url %>/api/vdi/1/allocate" \
  -H "Authorization: Bearer <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "desktop": {
    "id": 1,
    "logo": "/assets/containers-png/windows.png",
    "name": "Test",
    "status": "available",
    "allocationStatus": "preparing",
    "allocation": {
      "id": 11,
      "poolId": 1,
      "pool": {
        "id": 1,
        "name": "Test"
      },
      "instance": {
        "id": 433,
        "name": "vdi-test-3",
        "status": "provisioning"
      },
      "user": {
        "id": 3,
        "name": "Thomas A",
        "username": "tanderson"
      },
      "localUserCreated": false,
      "persistent": false,
      "status": "preparing",
      "dateCreated": "2021-04-13T12:48:15Z",
      "lastUpdated": "2021-04-13T12:48:15Z",
      "lastReserved": null,
      "releaseDate": "2021-04-13T18:48:15Z"
    }
  }
}
```

This endpoint allocates a specific virtual desktop (VDI pool) for use by your user. It will return the desktop and its allocation for your user, or an error if allocation fails, which will occur if the desktop is fully allocated already.  If your user already has an allocation, the desktop and allocation will still be returned succesfully and the server does not make any changes.

### HTTP Request

`POST <%= api_url %>/api/vdi/:id/allocate`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the Virtual Desktop (VDI Pool)
