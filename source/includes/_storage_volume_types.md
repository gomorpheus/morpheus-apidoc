## Storage Volume Types

Provides API for viewing Storage Volume Types and their configuration options.


## Get All Storage Volume Types


```shell
curl "<%= curl_url %>/api/storage-volume-types" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "storageVolumeTypes": [
    {
      "id": 16,
      "code": "vmware-scsi",
      "name": "SCSI",
      "description": "VMware - SCSI",
      "displayOrder": 1,
      "defaultType": true,
      "customLabel": true,
      "customSize": true,
      "customSizeOptions": null,
      "configurableIOPS": false,
      "hasDatastore": null,
      "category": null,
      "enabled": true,
      "optionTypes": [

      ]
    },
    {
      "id": 17,
      "code": "vmware-ide",
      "name": "IDE",
      "description": "VMware - IDE",
      "displayOrder": 2,
      "defaultType": false,
      "customLabel": true,
      "customSize": true,
      "customSizeOptions": null,
      "configurableIOPS": false,
      "hasDatastore": null,
      "category": null,
      "enabled": true,
      "optionTypes": [

      ]
    }
  ],
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 25,
    "total": 61
  }
}
```

This endpoint retrieves all Storage Volume Types. The sample response has been abbreviated.

### HTTP Request

`GET <%= api_url %>/api/storage-volume-types`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | If specified will return a partial match on name or code or description
name |  | If specified will return an exact match on name or code
code |  | If specified will return an exact match on code

## Get a Specific Storage Volume Type

```shell
curl "<%= curl_url %>/api/storage-volume-types/73" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "storageVolumeType": {
    "id": 73,
    "code": "google-ssd",
    "name": "Google SSD persistent",
    "description": "Google - Standard SSD persistent",
    "displayOrder": 3,
    "defaultType": true,
    "customLabel": true,
    "customSize": true,
    "customSizeOptions": null,
    "configurableIOPS": false,
    "hasDatastore": true,
    "category": "volume",
    "enabled": true,
    "optionTypes": [

    ]
  }
}
```

This endpoint retrieves a specific Storage Volume Type.


### HTTP Request

`GET <%= api_url %>/api/storage-volume-types/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Storage Volume Type to retrieve
