## Storage Server Types

Provides API for viewing Storage Server Types and their configuration options.

<!--
## Get All Storage Server Types
-->

```shell
curl "<%= curl_url %>/api/storage-server-types" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "storageServerTypes": [
    {
      "id": 1,
      "code": "3par",
      "name": "3Par",
      "description": "3Par",
      "enabled": true,
      "creatable": true,
      "hasNamespaces": false,
      "hasGroups": true,
      "hasBlock": true,
      "hasObject": false,
      "hasFile": false,
      "hasDatastore": true,
      "hasDisks": false,
      "hasHosts": true,
      "createNamespaces": false,
      "createGroup": false,
      "createBlock": true,
      "createObject": false,
      "createFile": false,
      "createDatastore": true,
      "createDisk": false,
      "createHost": false,
      "iconCode": null,
      "hasFileBrowser": true,
      "optionTypes": [

      ],
      "groupOptionTypes": [

      ],
      "bucketOptionTypes": [

      ],
      "shareOptionTypes": [

      ],
      "shareAccessOptionTypes": [

      ],
      "storageVolumeTypes": [
        {
          "id": 15,
          "code": "3par",
          "name": "3Par Volume",
          "displayOrder": 1,
          "defaultType": true,
          "customLabel": false,
          "customSize": false,
          "customSizeOptions": null
        }
      ]
    },
    {
      "id": 6,
      "code": "amazonefs",
      "name": "AWS EFS",
      "description": "Amazon Elastic Files Services",
      "enabled": true,
      "creatable": false,
      "hasNamespaces": false,
      "hasGroups": false,
      "hasBlock": false,
      "hasObject": false,
      "hasFile": true,
      "hasDatastore": false,
      "hasDisks": true,
      "hasHosts": false,
      "createNamespaces": false,
      "createGroup": false,
      "createBlock": false,
      "createObject": false,
      "createFile": true,
      "createDatastore": true,
      "createDisk": false,
      "createHost": false,
      "iconCode": null,
      "hasFileBrowser": true,
      "optionTypes": [

      ],
      "groupOptionTypes": [

      ],
      "bucketOptionTypes": [

      ],
      "shareOptionTypes": [

      ],
      "shareAccessOptionTypes": [

      ],
      "storageVolumeTypes": [
        {
          "id": 30,
          "code": "hpEnclosureDisk",
          "name": "HP Enclosure Disk",
          "displayOrder": 1,
          "defaultType": true,
          "customLabel": false,
          "customSize": false,
          "customSizeOptions": null
        }
      ]
    },
    {
      "id": 5,
      "code": "amazons3",
      "name": "AWS S3",
      "description": "Amazon S3 Services",
      "enabled": true,
      "creatable": true,
      "hasNamespaces": false,
      "hasGroups": false,
      "hasBlock": false,
      "hasObject": true,
      "hasFile": false,
      "hasDatastore": false,
      "hasDisks": true,
      "hasHosts": false,
      "createNamespaces": false,
      "createGroup": false,
      "createBlock": false,
      "createObject": true,
      "createFile": false,
      "createDatastore": true,
      "createDisk": false,
      "createHost": false,
      "iconCode": null,
      "hasFileBrowser": true,
      "optionTypes": [

      ],
      "groupOptionTypes": [

      ],
      "bucketOptionTypes": [

      ],
      "shareOptionTypes": [

      ],
      "shareAccessOptionTypes": [

      ],
      "storageVolumeTypes": [
        {
          "id": 48,
          "code": "s3Object",
          "name": "AWS S3 Object Storage",
          "displayOrder": 1,
          "defaultType": true,
          "customLabel": true,
          "customSize": true,
          "customSizeOptions": null
        }
      ]
    },
    {
      "id": 4,
      "code": "ecs",
      "name": "Dell EMC ECS",
      "description": "Dell EMC ECS",
      "enabled": true,
      "creatable": true,
      "hasNamespaces": true,
      "hasGroups": true,
      "hasBlock": false,
      "hasObject": true,
      "hasFile": true,
      "hasDatastore": false,
      "hasDisks": false,
      "hasHosts": false,
      "createNamespaces": false,
      "createGroup": false,
      "createBlock": false,
      "createObject": true,
      "createFile": true,
      "createDatastore": false,
      "createDisk": false,
      "createHost": false,
      "iconCode": null,
      "hasFileBrowser": true,
      "optionTypes": [

      ],
      "groupOptionTypes": [

      ],
      "bucketOptionTypes": [

      ],
      "shareOptionTypes": [

      ],
      "shareAccessOptionTypes": [

      ],
      "storageVolumeTypes": [
        {
          "id": 42,
          "code": "ecsBlock",
          "name": "ECS Block Storage",
          "displayOrder": 1,
          "defaultType": true,
          "customLabel": true,
          "customSize": true,
          "customSizeOptions": null
        },
        {
          "id": 41,
          "code": "ecsObject",
          "name": "ECS Object Storage",
          "displayOrder": 1,
          "defaultType": true,
          "customLabel": true,
          "customSize": true,
          "customSizeOptions": null
        },
        {
          "id": 43,
          "code": "ecsFileSystem",
          "name": "ECS Shared File System",
          "displayOrder": 1,
          "defaultType": true,
          "customLabel": true,
          "customSize": true,
          "customSizeOptions": null
        }
      ]
    }
  ],
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 13,
    "total": 13
  }
}

```

This endpoint retrieves all Storage Server Types. The sample response has been abbreviated.

### HTTP Request

`GET <%= api_url %>/api/storage-server-types`

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

## Get a Specific Storage Server Type

```shell
curl "<%= curl_url %>/api/storage-server-types/73" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "storageServerType": {
    "id": 5,
    "code": "amazons3",
    "name": "AWS S3",
    "description": "Amazon S3 Services",
    "enabled": true,
    "creatable": true,
    "hasNamespaces": false,
    "hasGroups": false,
    "hasBlock": false,
    "hasObject": true,
    "hasFile": false,
    "hasDatastore": false,
    "hasDisks": true,
    "hasHosts": false,
    "createNamespaces": false,
    "createGroup": false,
    "createBlock": false,
    "createObject": true,
    "createFile": false,
    "createDatastore": true,
    "createDisk": false,
    "createHost": false,
    "iconCode": null,
    "hasFileBrowser": true,
    "optionTypes": [
      {
        "id": 1016,
        "name": "serviceUsername",
        "description": null,
        "code": "storageServer.amazon.serviceUsername",
        "fieldName": "serviceUsername",
        "fieldLabel": "Access Key",
        "fieldCode": "gomorpheus.optiontype.AccessKey",
        "fieldContext": "storageServer",
        "fieldGroup": null,
        "fieldClass": null,
        "fieldAddOn": null,
        "fieldComponent": null,
        "fieldInput": null,
        "placeHolder": null,
        "verifyPattern": null,
        "helpBlock": "",
        "helpBlockFieldCode": null,
        "defaultValue": null,
        "optionSource": null,
        "optionSourceType": null,
        "optionList": null,
        "type": "text",
        "advanced": false,
        "required": true,
        "exportMeta": false,
        "editable": true,
        "creatable": true,
        "config": {
        },
        "displayOrder": 10,
        "wrapperClass": null,
        "enabled": true,
        "noBlank": false,
        "dependsOnCode": null,
        "visibleOnCode": null,
        "requireOnCode": null,
        "contextualDefault": false,
        "displayValueOnDetails": null,
        "showOnCreate": null,
        "showOnEdit": null
      },
      {
        "id": 1017,
        "name": "servicePassword",
        "description": null,
        "code": "storageServer.amazon.servicePassword",
        "fieldName": "servicePassword",
        "fieldLabel": "Secret Key",
        "fieldCode": "gomorpheus.optiontype.SecretKey",
        "fieldContext": "storageServer",
        "fieldGroup": null,
        "fieldClass": null,
        "fieldAddOn": null,
        "fieldComponent": null,
        "fieldInput": null,
        "placeHolder": null,
        "verifyPattern": null,
        "helpBlock": "",
        "helpBlockFieldCode": null,
        "defaultValue": null,
        "optionSource": null,
        "optionSourceType": null,
        "optionList": null,
        "type": "password",
        "advanced": false,
        "required": true,
        "exportMeta": false,
        "editable": true,
        "creatable": true,
        "config": {
        },
        "displayOrder": 11,
        "wrapperClass": null,
        "enabled": true,
        "noBlank": false,
        "dependsOnCode": null,
        "visibleOnCode": null,
        "requireOnCode": null,
        "contextualDefault": false,
        "displayValueOnDetails": null,
        "showOnCreate": null,
        "showOnEdit": null
      },
      {
        "id": 1018,
        "name": "serviceUrl",
        "description": null,
        "code": "storageServer.amazon.serviceUrl",
        "fieldName": "serviceUrl",
        "fieldLabel": "Endpoint",
        "fieldCode": "gomorpheus.optiontype.Endpoint",
        "fieldContext": "storageServer",
        "fieldGroup": null,
        "fieldClass": null,
        "fieldAddOn": null,
        "fieldComponent": null,
        "fieldInput": null,
        "placeHolder": null,
        "verifyPattern": null,
        "helpBlock": "",
        "helpBlockFieldCode": null,
        "defaultValue": null,
        "optionSource": null,
        "optionSourceType": null,
        "optionList": null,
        "type": "text",
        "advanced": false,
        "required": false,
        "exportMeta": false,
        "editable": true,
        "creatable": true,
        "config": {
        },
        "displayOrder": 12,
        "wrapperClass": null,
        "enabled": true,
        "noBlank": false,
        "dependsOnCode": null,
        "visibleOnCode": null,
        "requireOnCode": null,
        "contextualDefault": false,
        "displayValueOnDetails": null,
        "showOnCreate": null,
        "showOnEdit": null
      }
    ],
    "groupOptionTypes": [

    ],
    "bucketOptionTypes": [

    ],
    "shareOptionTypes": [

    ],
    "shareAccessOptionTypes": [

    ],
    "storageVolumeTypes": [
      {
        "id": 48,
        "code": "s3Object",
        "name": "AWS S3 Object Storage",
        "displayOrder": 1,
        "defaultType": true,
        "customLabel": true,
        "customSize": true,
        "customSizeOptions": null
      }
    ]
  }
}
```

This endpoint retrieves a specific Storage Server Type.


### HTTP Request

`GET <%= api_url %>/api/storage-server-types/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Storage Server Type to retrieve
