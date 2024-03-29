## Storage Buckets

Provides API interfaces for managing Storage Buckets and File Shares. This is the endpoint for managing both Storage Buckets (object stores) and File Shares.

<aside class="info">
This endpoint was renamed from <code>/api/storage/buckets</code> to <code>/api/storage-buckets</code> in API version 5.4.1 and the old path can still be used.
</aside>

## Get All Storage Buckets

```shell
curl "<%= curl_url %>/api/storage-buckets"
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "storageBuckets": [
    {
      "id": 1,
      "name": "s3 test",
      "accountId": 1,
      "providerType": "s3",
      "config": {
        "accessKey": "G429AED2C4L5YZB7Q",
        "secretKey": "************",
        "endpoint": ""
      },
      "bucketName": "morpheus-s3-test",
      "readOnly": false,
      "defaultBackupTarget": false,
      "defaultDeploymentTarget": false,
      "defaultVirtualImageTarget": false,
      "copyToStore": true
    },
    {
      "id": 2,
      "name": "testdrive",
      "accountId": 1,
      "providerType": "local",
      "config": {
        "basePath": "/tmp/testdrive"
      },
      "bucketName": ".",
      "readOnly": false,
      "defaultBackupTarget": false,
      "defaultDeploymentTarget": false,
      "defaultVirtualImageTarget": false,
      "copyToStore": false
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

This endpoint retrieves all storage buckets associated with the account.

### HTTP Request

`GET <%= api_url %>/api/storage-buckets`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | If specified will return a partial match on name
name |  | If specified will return an exact match on name
phrase |  | If specified will return a partial match on name

## Get a Specific Storage Bucket


```shell
curl "<%= curl_url %>/api/storage-buckets/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "storageBucket": {
    "id": 1,
    "name": "s3 test",
    "accountId": 1,
    "providerType": "s3",
    "config": {
      "accessKey": "G429AED2C4L5YZB7Q",
      "secretKey": "************",
      "endpoint": ""
    },
    "bucketName": "morpheus-s3-test",
    "readOnly": false,
    "defaultBackupTarget": false,
    "defaultDeploymentTarget": false,
    "defaultVirtualImageTarget": false,
    "copyToStore": true,
    "retentionPolicyType": null,
    "retentionPolicyDays": null,
    "retentionProvider": null
  }
}
```

This endpoint retrieves a specific storage bucket.


### HTTP Request

`GET <%= api_url %>/api/storage-buckets/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the storage bucket to retrieve

## Create a Storage Bucket

```shell
curl -XPOST "<%= curl_url %>/api/storage-buckets" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "storageBucket": {
    "name": "test-storage",
    "providerType": "local",
    "config": {
      "basePath": "/tmp/test-storage"
    },
    "defaultBackupTarget": false,
    "copyToStore": true,
    "defaultDeploymentTarget": false,
    "defaultVirtualImageTarget": false,
    "retentionPolicyType": null,
    "retentionPolicyDays": null,
    "retentionProvider": null
  }
}'
```

> The above command returns JSON structured like getting a single storage bucket: 

### HTTP Request

`POST <%= api_url %>/api/storage-buckets`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | A unique name scoped to your account for the storage bucket
providerType      |  | The type of storage bucket. [s3, azure, cifs, local, nfs, openstack, rackspace]
config      |  | A map of config values. The expected values vary by providerType.
bucketName      |  | The name of the bucket. Only applies to certain types eg. s3
createBucket | false | Create the bucket if it does not exist. Only applies to certain types eg. s3
defaultBackupTarget      |  | Default Backup Target
copyToStore      |  | Archive Snapshots
defaultDeploymentTarget      |  | Default Deployment Target
defaultVirtualImageTarget      |  | Default Virtual Image Store
retentionPolicyType      |  | Cleanup mode. backup - Move old files to a backup provider. delete - Delete old files. none (default) - Keep all files.
retentionPolicyDays      |  | The number of days old a file must be before it is deleted.
retentionProvider      |  | The backup Storage Bucket where old files are moved to.

### Amazon S3 (s3)

Parameter | Default | Description
--------- | ------- | -----------
config.accessKey |  | Access Key
config.secretKey |  | Secret Key
bucketName |  | Bucket Name
createBucket | false | Create the bucket if it does not exist
config.region |  | Optional Amazon region if creating a new bucket
config.endpoint |  | Optional endpoint URL if pointing to an object store other than amazon that mimics the Amazon S3 APIs.

### Azure (azure) Parameters

Parameter | Default | Description
--------- | ------- | -----------
config.storageAccount |  | Storage Account
config.storageKey |  | Storage Key
bucketName |  | Bucket Name
createBucket | false | Create the bucket if it does not exist

### CIFS (cifs) Parameters

Parameter | Default | Description
--------- | ------- | -----------
config.host |  | Host
config.username |  | Username
config.password |  | Password
bucketName |  | Bucket Name

### Local Storage (local) Parameters

Parameter | Default | Description
--------- | ------- | -----------
config.basePath |  | Storage Path

### NFSv3 (nfs) Parameters

Parameter | Default | Description
--------- | ------- | -----------
config.host |  | Host
config.exportFolder |  | Export Folder
bucketName |  | Bucket Name

### Openstack Swift (openstack) Parameters

Parameter | Default | Description
--------- | ------- | -----------
config.username |  | Username
config.apiKey |  | API Key
config.region |  | Region
bucketName |  | Bucket Name
createBucket | false | Create the bucket if it does not exist
config.identityUrl |  | Identity URL

### Rackspace CDN (rackspace) Parameters

Parameter | Default | Description
--------- | ------- | -----------
config.username |  | Username
config.apiKey |  | API Key
config.region |  | Region
bucketName |  | Bucket Name
createBucket | false | Create the bucket if it does not exist


## Update a Storage Bucket

```shell
curl -XPUT "<%= curl_url %>/api/storage-buckets/1" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "storageBucket": {
    "name": "my-storage",
    "copyToStore": true
  }
}'
```

> The above command returns JSON structured like getting a single storage bucket: 

### HTTP Request

`PUT <%= api_url %>/api/storage-buckets/1`

### JSON Parameters

See [Create](#create-a-storage-bucket).

## Delete a Storage Bucket

```shell
curl -XDELETE "<%= curl_url %>/api/storage-buckets/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

Will delete a storage bucket from the system and make it no longer usable.

### HTTP Request

`DELETE <%= api_url %>/api/storage-buckets/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the storage bucket
