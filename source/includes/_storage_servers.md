## Storage Servers

Provides API for managing Storage Servers.

## Get All Storage Servers

```shell
curl "<%= curl_url %>/api/storage-servers"
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "storageServers": [
    {
      "id": 207,
      "name": "AWS Prod",
      "type": {
        "id": 5,
        "code": "amazons3",
        "name": "AWS S3"
      },
      "chassis": null,
      "visibility": "private",
      "description": null,
      "internalId": null,
      "externalId": null,
      "serviceUrl": null,
      "serviceHost": null,
      "servicePath": null,
      "serviceToken": null,
      "serviceVersion": null,
      "serviceUsername": null,
      "servicePassword": null,
      "internalIp": null,
      "externalIp": null,
      "apiPort": null,
      "adminPort": null,
      "config": {
      },
      "refType": "ComputeZone",
      "refId": 21917,
      "category": null,
      "serverVendor": null,
      "serverModel": null,
      "serialNumber": null,
      "status": "ok",
      "statusMessage": null,
      "statusDate": "2020-05-08T03:04:19Z",
      "errorMessage": null,
      "maxStorage": null,
      "usedStorage": null,
      "diskCount": null,
      "dateCreated": "2020-05-08T03:04:17Z",
      "lastUpdated": "2020-05-08T03:04:19Z",
      "enabled": true,
      "groups": [

      ],
      "hostGroups": [

      ],
      "hosts": [

      ],
      "tenants": [

      ],
      "owner": {
        "id": 1,
        "name": "<%= company_name %>"
      }
    },
    {
      "id": 6,
      "name": "Labs 3Par",
      "type": {
        "id": 1,
        "code": "3par",
        "name": "3Par"
      },
      "chassis": null,
      "visibility": "public",
      "description": "3Par",
      "internalId": null,
      "externalId": null,
      "serviceUrl": "http://serviceurl:port",
      "serviceHost": null,
      "servicePath": null,
      "serviceToken": null,
      "serviceVersion": null,
      "serviceUsername": "username",
      "servicePassword": "************",
      "internalIp": null,
      "externalIp": null,
      "apiPort": null,
      "adminPort": null,
      "config": {
      },
      "refType": null,
      "refId": null,
      "category": null,
      "serverVendor": null,
      "serverModel": null,
      "serialNumber": null,
      "status": "ok",
      "statusMessage": null,
      "statusDate": "2020-05-12T01:38:12Z",
      "errorMessage": null,
      "maxStorage": null,
      "usedStorage": null,
      "diskCount": null,
      "dateCreated": "2018-10-21T05:56:56Z",
      "lastUpdated": "2020-05-12T01:38:12Z",
      "enabled": true,
      "groups": [
        {
          "id": 8,
          "name": "SSD_r5"
        }
      ],
      "hostGroups": [
        {
          "id": 1,
          "name": "labs-prod-vmware"
        }
      ],
      "hosts": [
        {
          "id": 1,
          "name": "labs-esxi-184"
        },
        {
          "id": 3,
          "name": "labs-esxi-183"
        },
        {
          "id": 4,
          "name": "labs-esxi-185"
        },
        {
          "id": 10,
          "name": "labs-esxi-192"
        },
        {
          "id": 7,
          "name": "labs-esxi-191"
        }
      ],
      "tenants": [

      ],
      "owner": {
        "id": 1,
        "name": "<%= company_name %>"
      }
    },
    {
      "id": 17,
      "name": "Labs Dell ECS",
      "type": {
        "id": 4,
        "code": "ecs",
        "name": "Dell EMC ECS"
      },
      "chassis": null,
      "visibility": "public",
      "description": null,
      "internalId": null,
      "externalId": null,
      "serviceUrl": "https://serviceurl:port",
      "serviceHost": null,
      "servicePath": null,
      "serviceToken": null,
      "serviceVersion": null,
      "serviceUsername": "username",
      "servicePassword": "************",
      "internalIp": null,
      "externalIp": null,
      "apiPort": null,
      "adminPort": null,
      "config": {
      },
      "refType": null,
      "refId": null,
      "category": null,
      "serverVendor": null,
      "serverModel": null,
      "serialNumber": null,
      "status": "ok",
      "statusMessage": null,
      "statusDate": "2019-06-07T04:22:00Z",
      "errorMessage": null,
      "maxStorage": null,
      "usedStorage": null,
      "diskCount": null,
      "dateCreated": "2019-04-01T22:36:50Z",
      "lastUpdated": "2019-06-07T04:22:00Z",
      "enabled": true,
      "groups": [
        {
          "id": 19,
          "name": "rg1"
        }
      ],
      "hostGroups": [

      ],
      "hosts": [

      ],
      "tenants": [

      ],
      "owner": {
        "id": 1,
        "name": "<%= company_name %>"
      }
    },
    {
      "id": 7,
      "name": "Labs Dell Isilon",
      "type": {
        "id": 3,
        "code": "isilon",
        "name": "Dell EMC Isilon"
      },
      "chassis": null,
      "visibility": "private",
      "description": null,
      "internalId": null,
      "externalId": null,
      "serviceUrl": "https://serviceurl:port",
      "serviceHost": null,
      "servicePath": "/",
      "serviceToken": null,
      "serviceVersion": null,
      "serviceUsername": "username",
      "servicePassword": "************",
      "internalIp": null,
      "externalIp": null,
      "apiPort": null,
      "adminPort": null,
      "config": {
        "storageGroup": "admin",
        "storageUser": "admin",
        "permissions": [
          "10.30.21.130",
          "10.30.21.120"
        ],
        "readPermissions": [
          "10.30.21.130",
          "10.30.21.120"
        ],
        "adminPermissions": [
          "10.30.21.130",
          "10.30.21.120"
        ]
      },
      "refType": null,
      "refId": null,
      "category": null,
      "serverVendor": null,
      "serverModel": null,
      "serialNumber": null,
      "status": "ok",
      "statusMessage": null,
      "statusDate": "2021-11-11T22:24:07Z",
      "errorMessage": null,
      "maxStorage": null,
      "usedStorage": null,
      "diskCount": null,
      "dateCreated": "2018-10-23T03:44:36Z",
      "lastUpdated": "2021-11-11T22:24:07Z",
      "enabled": true,
      "groups": [
        {
          "id": 10,
          "name": "System"
        }
      ],
      "hostGroups": [

      ],
      "hosts": [

      ],
      "tenants": [

      ],
      "owner": {
        "id": 1,
        "name": "<%= company_name %>"
      }
    },
    {
      "id": 769,
      "name": "Labs Dell Isilon H5",
      "type": {
        "id": 3,
        "code": "isilon",
        "name": "Dell EMC Isilon"
      },
      "chassis": null,
      "visibility": "private",
      "description": null,
      "internalId": null,
      "externalId": null,
      "serviceUrl": "https://serviceurl:port",
      "serviceHost": null,
      "servicePath": "/",
      "serviceToken": null,
      "serviceVersion": null,
      "serviceUsername": "username",
      "servicePassword": "************",
      "internalIp": null,
      "externalIp": null,
      "apiPort": null,
      "adminPort": null,
      "config": {
        "storageGroup": null,
        "adminPermissions": [
          "10.30.21.120",
          "10.30.21.130"
        ],
        "permissions": [
          "10.30.21.120",
          "10.30.21.130"
        ],
        "storageUser": null,
        "readPermissions": [
          "10.30.21.120",
          "10.30.21.130"
        ]
      },
      "refType": null,
      "refId": null,
      "category": null,
      "serverVendor": null,
      "serverModel": null,
      "serialNumber": null,
      "status": "ok",
      "statusMessage": null,
      "statusDate": "2021-10-29T00:02:53Z",
      "errorMessage": null,
      "maxStorage": null,
      "usedStorage": null,
      "diskCount": null,
      "dateCreated": "2021-08-31T20:35:46Z",
      "lastUpdated": "2021-10-29T00:02:53Z",
      "enabled": true,
      "groups": [
        {
          "id": 36,
          "name": "System"
        }
      ],
      "hostGroups": [

      ],
      "hosts": [

      ],
      "tenants": [

      ],
      "owner": {
        "id": 1,
        "name": "<%= company_name %>"
      }
    },
    {
      "id": 584,
      "name": "Labs Google",
      "type": {
        "id": 13,
        "code": "google",
        "name": "Google Cloud Storage"
      },
      "chassis": null,
      "visibility": "private",
      "description": null,
      "internalId": null,
      "externalId": null,
      "serviceUrl": null,
      "serviceHost": null,
      "servicePath": null,
      "serviceToken": null,
      "serviceVersion": null,
      "serviceUsername": "service-user@project.iam.gserviceaccount.com",
      "servicePassword": "************",
      "internalIp": null,
      "externalIp": null,
      "apiPort": null,
      "adminPort": null,
      "config": {
        "projectId": "all"
      },
      "refType": null,
      "refId": null,
      "category": null,
      "serverVendor": null,
      "serverModel": null,
      "serialNumber": null,
      "status": "ok",
      "statusMessage": null,
      "statusDate": "2021-05-27T23:18:10Z",
      "errorMessage": null,
      "maxStorage": null,
      "usedStorage": null,
      "diskCount": null,
      "dateCreated": "2021-05-27T23:18:08Z",
      "lastUpdated": "2021-05-27T23:18:53Z",
      "enabled": true,
      "groups": [

      ],
      "hostGroups": [

      ],
      "hosts": [

      ],
      "tenants": [

      ],
      "owner": {
        "id": 1,
        "name": "<%= company_name %>"
      }
    },
    {
      "id": 555,
      "name": "Labs Huawei OBS",
      "type": {
        "id": 7,
        "code": "huaweiObs",
        "name": "Huawei OBS"
      },
      "chassis": null,
      "visibility": "private",
      "description": null,
      "internalId": null,
      "externalId": null,
      "serviceUrl": "https://serviceurl:port",
      "serviceHost": null,
      "servicePath": null,
      "serviceToken": null,
      "serviceVersion": null,
      "serviceUsername": "username",
      "servicePassword": "************",
      "internalIp": null,
      "externalIp": null,
      "apiPort": null,
      "adminPort": null,
      "config": {
      },
      "refType": null,
      "refId": null,
      "category": null,
      "serverVendor": null,
      "serverModel": null,
      "serialNumber": null,
      "status": "ok",
      "statusMessage": null,
      "statusDate": "2021-01-05T18:05:08Z",
      "errorMessage": null,
      "maxStorage": null,
      "usedStorage": null,
      "diskCount": null,
      "dateCreated": "2021-01-05T18:05:08Z",
      "lastUpdated": "2021-01-05T18:05:08Z",
      "enabled": true,
      "groups": [

      ],
      "hostGroups": [

      ],
      "hosts": [

      ],
      "tenants": [

      ],
      "owner": {
        "id": 1,
        "name": "<%= company_name %>"
      }
    },
    {
      "id": 554,
      "name": "Labs Huawei SFS",
      "type": {
        "id": 11,
        "code": "huaweiSFS",
        "name": "Huawei SFS"
      },
      "chassis": null,
      "visibility": "private",
      "description": null,
      "internalId": null,
      "externalId": null,
      "serviceUrl": "https://serviceurl:port",
      "serviceHost": null,
      "servicePath": null,
      "serviceToken": null,
      "serviceVersion": null,
      "serviceUsername": null,
      "servicePassword": null,
      "internalIp": null,
      "externalIp": null,
      "apiPort": null,
      "adminPort": null,
      "config": {
        "availabilityZone": "",
        "storageShareApiMicroVersion": "2.42"
      },
      "refType": "ComputeZone",
      "refId": 24812,
      "category": null,
      "serverVendor": null,
      "serverModel": null,
      "serialNumber": null,
      "status": null,
      "statusMessage": null,
      "statusDate": null,
      "errorMessage": null,
      "maxStorage": null,
      "usedStorage": null,
      "diskCount": null,
      "dateCreated": "2021-01-05T18:04:43Z",
      "lastUpdated": "2021-01-05T18:04:45Z",
      "enabled": true,
      "groups": [

      ],
      "hostGroups": [

      ],
      "hosts": [

      ],
      "tenants": [

      ],
      "owner": {
        "id": 1,
        "name": "<%= company_name %>"
      }
    },
    {
      "id": 73,
      "name": "Labs Open Telekom OBS",
      "type": {
        "id": 8,
        "code": "opentelekomObs",
        "name": "Open Telekom OBS"
      },
      "chassis": null,
      "visibility": "private",
      "description": null,
      "internalId": null,
      "externalId": null,
      "serviceUrl": "https://serviceurl:port",
      "serviceHost": null,
      "servicePath": null,
      "serviceToken": null,
      "serviceVersion": null,
      "serviceUsername": "username",
      "servicePassword": "************",
      "internalIp": null,
      "externalIp": null,
      "apiPort": null,
      "adminPort": null,
      "config": {
      },
      "refType": null,
      "refId": null,
      "category": null,
      "serverVendor": null,
      "serverModel": null,
      "serialNumber": null,
      "status": "ok",
      "statusMessage": null,
      "statusDate": "2019-10-28T15:54:31Z",
      "errorMessage": null,
      "maxStorage": null,
      "usedStorage": null,
      "diskCount": null,
      "dateCreated": "2019-10-28T15:54:29Z",
      "lastUpdated": "2021-06-09T16:00:21Z",
      "enabled": true,
      "groups": [

      ],
      "hostGroups": [

      ],
      "hosts": [

      ],
      "tenants": [

      ],
      "owner": {
        "id": 1,
        "name": "<%= company_name %>"
      }
    },
    {
      "id": 62,
      "name": "Labs Open Telekom SFS",
      "type": {
        "id": 10,
        "code": "opentelekomSFS",
        "name": "Open Telekom SFS"
      },
      "chassis": null,
      "visibility": "private",
      "description": null,
      "internalId": null,
      "externalId": null,
      "serviceUrl": "https://serviceurl:port",
      "serviceHost": null,
      "servicePath": null,
      "serviceToken": null,
      "serviceVersion": null,
      "serviceUsername": null,
      "servicePassword": null,
      "internalIp": null,
      "externalIp": null,
      "apiPort": null,
      "adminPort": null,
      "config": {
        "availabilityZone": "",
        "storageShareApiMicroVersion": "2.42"
      },
      "refType": "ComputeZone",
      "refId": 18988,
      "category": null,
      "serverVendor": null,
      "serverModel": null,
      "serialNumber": null,
      "status": null,
      "statusMessage": null,
      "statusDate": null,
      "errorMessage": null,
      "maxStorage": null,
      "usedStorage": null,
      "diskCount": null,
      "dateCreated": "2019-10-25T19:48:57Z",
      "lastUpdated": "2021-12-04T21:12:54Z",
      "enabled": true,
      "groups": [

      ],
      "hostGroups": [

      ],
      "hosts": [

      ],
      "tenants": [
        {
          "id": 1,
          "name": "<%= company_name %>"
        }
      ],
      "owner": {
        "id": 1,
        "name": "<%= company_name %>"
      }
    },
    {
      "id": 384,
      "name": "MXQ946014H, bay 11",
      "type": {
        "id": 2,
        "code": "hpDriveEnclosure",
        "name": "HP Drive Enclosure"
      },
      "chassis": {
        "id": 67,
        "code": "oneview.enclosure.23875.797740MXQ946014H",
        "name": "MXQ946014H"
      },
      "visibility": "private",
      "description": "",
      "internalId": null,
      "externalId": "/rest/drive-enclosures/CN794100DQ",
      "serviceUrl": null,
      "serviceHost": null,
      "servicePath": null,
      "serviceToken": null,
      "serviceVersion": null,
      "serviceUsername": null,
      "servicePassword": null,
      "internalIp": null,
      "externalIp": null,
      "apiPort": null,
      "adminPort": null,
      "config": {
      },
      "refType": "ComputeZone",
      "refId": 23875,
      "category": "oneview.driveEnclosure.23875",
      "serverVendor": "HPE",
      "serverModel": "Synergy D3940 Storage Module",
      "serialNumber": "CN794100DQ",
      "status": "OK",
      "statusMessage": null,
      "statusDate": "2020-10-21T16:44:16Z",
      "errorMessage": null,
      "maxStorage": 20615843020800,
      "usedStorage": null,
      "diskCount": 40,
      "dateCreated": "2020-10-21T16:44:16Z",
      "lastUpdated": "2021-08-01T20:15:05Z",
      "enabled": true,
      "groups": [
        {
          "id": 33,
          "name": "MXQ946014H disks"
        }
      ],
      "hostGroups": [

      ],
      "hosts": [

      ],
      "tenants": [

      ],
      "owner": {
        "id": 1,
        "name": "<%= company_name %>"
      }
    },
    {
      "id": 13,
      "name": "Labs Amazon",
      "type": {
        "id": 5,
        "code": "amazons3",
        "name": "AWS S3"
      },
      "chassis": null,
      "visibility": "private",
      "description": null,
      "internalId": null,
      "externalId": null,
      "serviceUrl": null,
      "serviceHost": null,
      "servicePath": null,
      "serviceToken": null,
      "serviceVersion": null,
      "serviceUsername": null,
      "servicePassword": null,
      "internalIp": null,
      "externalIp": null,
      "apiPort": null,
      "adminPort": null,
      "config": {
      },
      "refType": "ComputeZone",
      "refId": 3,
      "category": null,
      "serverVendor": null,
      "serverModel": null,
      "serialNumber": null,
      "status": "ok",
      "statusMessage": null,
      "statusDate": "2019-03-05T22:31:14Z",
      "errorMessage": null,
      "maxStorage": null,
      "usedStorage": null,
      "diskCount": null,
      "dateCreated": "2019-03-05T22:31:14Z",
      "lastUpdated": "2019-03-05T22:31:14Z",
      "enabled": true,
      "groups": [

      ],
      "hostGroups": [

      ],
      "hosts": [

      ],
      "tenants": [

      ],
      "owner": {
        "id": 1,
        "name": "<%= company_name %>"
      }
    },
    {
      "id": 587,
      "name": "Labs Google",
      "type": {
        "id": 13,
        "code": "google",
        "name": "Google Cloud Storage"
      },
      "chassis": null,
      "visibility": "private",
      "description": null,
      "internalId": null,
      "externalId": null,
      "serviceUrl": null,
      "serviceHost": null,
      "servicePath": null,
      "serviceToken": null,
      "serviceVersion": null,
      "serviceUsername": null,
      "servicePassword": null,
      "internalIp": null,
      "externalIp": null,
      "apiPort": null,
      "adminPort": null,
      "config": {
      },
      "refType": "ComputeZone",
      "refId": 24935,
      "category": null,
      "serverVendor": null,
      "serverModel": null,
      "serialNumber": null,
      "status": "ok",
      "statusMessage": null,
      "statusDate": "2021-05-27T23:33:26Z",
      "errorMessage": null,
      "maxStorage": null,
      "usedStorage": null,
      "diskCount": null,
      "dateCreated": "2021-05-27T23:33:24Z",
      "lastUpdated": "2021-05-27T23:33:26Z",
      "enabled": true,
      "groups": [

      ],
      "hostGroups": [

      ],
      "hosts": [

      ],
      "tenants": [

      ],
      "owner": {
        "id": 1,
        "name": "<%= company_name %>"
      }
    }
  ],
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 14,
    "total": 14
  }
}
```

This endpoint retrieves all storage servers associated with the account.

### HTTP Request

`GET <%= api_url %>/api/storage-servers`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | If specified will return a partial match on name or description
name |  | If specified will return an exact match on name

## Get a Specific Storage Server


```shell
curl "<%= curl_url %>/api/storage-servers/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "storageServer": {
    "id": 7,
    "name": "Labs Dell Isilon",
    "type": {
      "id": 3,
      "code": "isilon",
      "name": "Dell EMC Isilon"
    },
    "chassis": null,
    "visibility": "private",
    "description": null,
    "internalId": null,
    "externalId": null,
    "serviceUrl": "https://serviceurl:port",
    "serviceHost": null,
    "servicePath": "/",
    "serviceToken": null,
    "serviceVersion": null,
    "serviceUsername": "username",
    "servicePassword": "************",
    "internalIp": null,
    "externalIp": null,
    "apiPort": null,
    "adminPort": null,
    "config": {
      "storageGroup": "admin",
      "storageUser": "admin",
      "permissions": [
        "10.30.21.130",
        "10.30.21.120"
      ],
      "readPermissions": [
        "10.30.21.130",
        "10.30.21.120"
      ],
      "adminPermissions": [
        "10.30.21.130",
        "10.30.21.120"
      ]
    },
    "refType": null,
    "refId": null,
    "category": null,
    "serverVendor": null,
    "serverModel": null,
    "serialNumber": null,
    "status": "ok",
    "statusMessage": null,
    "statusDate": "2021-11-11T22:24:07Z",
    "errorMessage": null,
    "maxStorage": null,
    "usedStorage": null,
    "diskCount": null,
    "dateCreated": "2018-10-23T03:44:36Z",
    "lastUpdated": "2021-11-11T22:24:07Z",
    "enabled": true,
    "groups": [
      {
        "id": 10,
        "name": "System"
      }
    ],
    "hostGroups": [

    ],
    "hosts": [

    ],
    "tenants": [

    ],
    "owner": {
      "id": 1,
      "name": "<%= company_name %>"
    }
  }
}
```

This endpoint retrieves a specific Storage Server.


### HTTP Request

`GET <%= api_url %>/api/storage-servers/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Storage Server to retrieve


## Create a Storage Server

```shell
curl -XPOST "<%= curl_url %>/api/storage-servers" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "storageServer": {
    "type": "amazons3",
    "name": "testbucket",
    "description": "A test bucket",
    "enabled": true,
    "serviceUsername": "access-key",
    "servicePassword": "secret-key",
    "tenants": [
      {
        "id": 1
      }
    ],
    "visibility": "private"
  }
}'
```

> The above command returns JSON structured like getting a single Storage Server: 

### HTTP Request

`POST <%= api_url %>/api/storage-servers`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
type      |  | Storage Type Code or ID
name      |  | Name
description |  | Description
enabled   | true | Enabled
config |  | Configuration object with parameters that vary by [type](#storage-server-types).
visibility      | private | private or public
tenants  |  | Array of tenant account ids that are allowed access

This endpoint allows creating a Storage Server.  Only certain types of clouds support creating and deleting storage servers. Configuration options vary by [Storage Server Type](#storage-server-types).

## Update a Storage Server

```shell
curl -XPUT "<%= curl_url %>/api/storage-servers/1" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "storageServer": {
    "description": "a test s3 bucket"
  }
}'
```

> The above command returns JSON structured like getting a single Storage Server: 

### HTTP Request

`PUT <%= api_url %>/api/storage-servers/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Storage Server

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Name
description |  | Description
enabled   | true | Enabled
config |  | Configuration object with parameters that vary by [type](#storage-server-types).
visibility      | private | private or public
tenants  |  | Array of tenant account ids that are allowed access

This endpoint allows updating a Storage Server.  Configuration options vary by [Storage Server Type](#storage-server-types).

## Delete a Storage Server

```shell
curl -XDELETE "<%= curl_url %>/api/storage-servers/:id" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

Will delete a Storage Server from the system and make it no longer usable.

### HTTP Request

`DELETE <%= api_url %>/api/storage-servers/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Storage Server

