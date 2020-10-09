# Deployments

Provides API to manage "Deployment archives" for use with deployable instance types (i.e. Tomcat, Nginx, Apache, etc.). A deployment can have many versions and each version is its own archive of files. A deployment version may be a collection of [uploaded files](#upload-a-deployment-file) or it may just be a reference to an external git repository or arbitrary url. Deployment versions are used in instance [deploys](#deploys).

## Get All Deployments

```shell
curl "$MORPHEUS_API_URL/api/deployments" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "deployments": [
    {
      "id": 1,
      "name": "example-deployment",
      "description": null,
      "accountId": 1,
      "externalId": null,
      "dateCreated": "2020-09-10T18:58:55+0000",
      "lastUpdated": "2020-09-10T18:62:51+0000",
      "versionCount": 1
    }
  ],
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 1,
    "total": 1
  }
}
```

This endpoint returns a paginated list of deployments.

### HTTP Request

`GET https://api.gomorpheus.com/api/deployments`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
phrase |  | Filter by wildcard search of name and description
name |  | Filter by name
description |  | Filter by description
dateCreated |  | Filter by dateCreated, the created timestamp is more recent or equal to the date specified
lastUpdated |  | Filter by lastUpdated, the last modified timestamp is more recent or equal to the date specified

## Get a Specific Deployment

```shell
curl "$MORPHEUS_API_URL/api/deployments/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "deployment": {
    "id": 1,
    "name": "example-deployment",
    "description": "Example deployment",
    "accountId": 1,
    "externalId": null,
    "dateCreated": "2020-09-10T18:58:55+0000",
    "lastUpdated": "22020-09-10T18:58:55+0000",
    "versionCount": 1,
    "versions": [
      {
        "id": 1,
        "deployType": "file",
        "fetchUrl": null,
        "gitUrl": null,
        "gitRef": null,
        "userVersion": "1.0",
        "version": "1.0",
        "status": "created",
        "dateCreated": "2020-09-10T19:56:36+0000",
        "lastUpdated": "2020-09-10T19:56:36+0000"
      }
    ]
  }
}
```

This endpoint retrieves a specific deployment. By default the 5 most recent versions are returned, more can be returned by specifying the `maxVersions` parameter.

### HTTP Request

`GET https://api.gomorpheus.com/api/deployments/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the deployment

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
maxVersions | 5 | Max number of recent versions to return.

## Create a new Deployment

```shell
curl -XPOST "$MORPHEUS_API_URL/api/deployments"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
  -H "Content-Type: application/json" \
  -d '{"deployment":{
    "name": "example",
    "description": "Example deployment"
  }}'
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "deployment": {
    "id": 1,
    "name": "example",
    "description": "Example deployment",
    "lastUpdated": "2020-09-10T18:58:55+0000",
    "dateCreated": "2020-09-10T18:58:55+0000",
    "versionCount": 0,
    "versions": []
  }
}
```

This endpoint will create a new deployment that is ready to have versions added to it.

### HTTP Request

`POST https://api.gomorpheus.com/api/deployments`

### Deployment JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name |  | Name, a unique identifier for the deployment
description |  | Description

## Update a Deployment

```shell
curl -XPUT "$MORPHEUS_API_URL/api/deployments/:id"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
  -H "Content-Type: application/json" \
  -d '{"deployment":{
    "name": "example",
    "description": "An example deployment"
  }}'
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "deployment": {
    "id": 1,
    "name": "example",
    "description": "An example deployment",
    "dateCreated": "2020-09-10T18:58:55+0000",
    "lastUpdated": "2020-09-10T18:62:51+0000",
    "versionCount": 0,
    "versions": []
  }
}
```

This endpoint will update an existing deployment.

### HTTP Request

`PUT https://api.gomorpheus.com/api/deployments/:id`

### Deployment JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name |  | Name, a unique identifier for the deployment
description |  | Description

## Delete a Deployment

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/deployments/:id" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

This endpoint will delete an existing deployment.

### HTTP Request

`DELETE https://api.gomorpheus.com/api/deployments/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the deployment

<!-- # Deployment Versions -->

## Get All Versions For a Deployment

```shell
curl "$MORPHEUS_API_URL/api/deployments/:deploymentId/versions" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "versions": [
    {
      "id": 1,
      "deployType": "file",
      "deploymentId": 1,
      "fetchUrl": null,
      "gitUrl": null,
      "gitRef": null,
      "userVersion": "1.0",
      "version": "1.0",
      "status": "created",
      "dateCreated": "2020-10-06T12:56:36+0000",
      "lastUpdated": "2020-10-06T12:56:36+0000"
    }
  ],
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 1,
    "total": 1
  }
}
```

This endpoint returns a paginated list of versions for a specific deployment.

### HTTP Request

`GET https://api.gomorpheus.com/api/deployments/:deploymentId/versions`

### URL Parameters

Parameter | Description
--------- | -----------
deploymentId | The ID of the deployment

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
phrase |  | Filter by wildcard search of version number
version |  | Filter by version number (userVersion)
type |  | Filter by type (deployType), file, git, fetch
dateCreated |  | Filter by dateCreated, the created timestamp is more recent or equal to the date specified
lastUpdated |  | Filter by lastUpdated, the last modified timestamp is more recent or equal to the date specified

## Get a Specific Deployment Version

```shell
curl "$MORPHEUS_API_URL/api/deployments/:deploymentId/versions/:id" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "version": {
    "id": 1,
    "deployType": "file",
    "deploymentId": 1,
    "fetchUrl": null,
    "gitUrl": null,
    "gitRef": null,
    "userVersion": "1.0",
    "version": "1.0",
    "status": "created",
    "dateCreated": "2020-10-06T12:56:36+0000",
    "lastUpdated": "2020-10-06T12:56:36+0000"
  }
}
```

This endpoint retrieves a specific deployment version.

### HTTP Request

`GET https://api.gomorpheus.com/api/deployments/:deploymentId/versions/:id`

### URL Parameters

Parameter | Description
--------- | -----------
deploymentId | The ID of the deployment
id | The ID of the deployment version

## Create a new Deployment Version

```shell
curl -XPOST "$MORPHEUS_API_URL/api/deployments/:deploymentId/versions"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
  -H "Content-Type: application/json" \
  -d '{"version":{
    "version": "1.0",
    "deployType": "git"
  }}'
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "version": {
    "id": 1,
    "deployType": "file",
    "deploymentId": 21,
    "fetchUrl": null,
    "gitUrl": null,
    "gitRef": null,
    "userVersion": "1.0",
    "version": "1.0",
    "status": "created",
    "dateCreated": "2020-10-06T13:23:33+0000",
    "lastUpdated": "2020-10-06T13:23:33+0000"
  }
}
```

This endpoint will create a new deployment version that is ready to have files uploaded to it. The default type is `file`, which has files directly [uploaded](#upload-a-deployment-file) via Morpheus. Alternatively, the type `git` or `fetch` can be used to just point to a repository or remote url.

### HTTP Request

`POST https://api.gomorpheus.com/api/deployments/:deploymentId/versions`

### URL Parameters

Parameter | Description
--------- | -----------
deploymentId | The ID of the deployment

### Deployment Version JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
version |  | Version number (userVersion), a unique version identifier for the deployment version.
userVersion |  | Alias for version
deployType | file | Deploy Type, eg. file, git, fetch
gitUrl |  | Git URL, git repository url to fetch files from, only applies to type git
gitRef |  | Git Ref, git reference to use, only applies to type git
fetchUrl |  | Fetch URL, location to fetch files from, only applies to type fetch

## Update a Deployment Version

```shell
curl -XPUT "$MORPHEUS_API_URL/api/deployments/:deploymentId/versions/:id"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
  -H "Content-Type: application/json" \
  -d '{"deployment":{
    "name": "example",
    "description": "An example deployment"
  }}'
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "deployment": {
    "id": 1,
    "name": "example",
    "description": "An example deployment",
    "dateCreated": "2020-09-10T18:58:55+0000",
    "lastUpdated": "2020-09-10T18:62:51+0000",
    "versionCount": 0,
    "versions": []
  }
}
```

This endpoint will update an existing deployment.

### HTTP Request

`PUT https://api.gomorpheus.com/api/deployments/:deploymentId/versions/:id`

### URL Parameters

Parameter | Description
--------- | -----------
deploymentId | The ID of the deployment
id | The ID of the deployment version

### Deployment JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
version |  | Version number (userVersion), a unique version identifier for the deployment version.
userVersion |  | Alias for version
deployType | file | Deploy Type, eg. file, git, fetch
gitUrl |  | Git URL, git repository url to fetch files from, only applies to type git
gitRef |  | Git Ref, git reference to use, only applies to type git
fetchUrl |  | Fetch URL, location to fetch files from, only applies to type fetch

## Delete a Deployment Version

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/deployments/:deploymentId/versions/:id" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

This endpoint will delete an existing deployment version.

### HTTP Request

`DELETE https://api.gomorpheus.com/api/deployments/:deploymentId/versions/:id`

### URL Parameters

Parameter | Description
--------- | -----------
deploymentId | The ID of the deployment
id | The ID of the deployment version


<!-- # Deployment Files -->

## List Deployment Files

```shell
curl "$MORPHEUS_API_URL/api/deployments/:deploymentId/versions/:id/files" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "files": [
    {
      "name": "public",
      "directory": true,
      "contentLength": null,
      "contentType": null
    },
    {
      "name": "index.html",
      "directory": false,
      "contentLength": 12927342,
      "contentType": "text/plain"
    },
    {
      "name": "config.ini",
      "directory": false,
      "contentLength": 61932,
      "contentType": "text/plain"
    }
  ]
}
```

This endpoint returns a of files for a specific deployment version. This only applies to deploy type `file`. Files are sorted alphabetically, with directories appearing at the beginning of the list. 

The `filepath` parameter can be specified to search for specific files or directories.

### HTTP Request

`GET https://api.gomorpheus.com/api/deployments/:deploymentId/versions/:id/files/:filepath`

### URL Parameters

Parameter | Description
--------- | -----------
deploymentId | The ID of the deployment
filepath | The path to to search for files under. Default is the root directory `/`.

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
phrase |  | Filter by wildcard search of version number
version |  | Filter by version number (userVersion)

## Get a Specific Deployment File

```shell
curl "$MORPHEUS_API_URL/api/deployments/:deploymentId/versions/:id/files/:filepath" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "files": [
    {
      "name": "config.ini",
      "directory": false,
      "contentLength": 61932,
      "contentType": "text/plain"
    }
  ]
}
```

This is the same endpoint as [list deployment files](#list-deployment-files), but it uses the `filepath` parameter to find a specific file by name. Only files and directories matching the specified `filepath` or in specified directory are returned, not the entire file tree. 

To list files under a directory, use a trailing `/` in the `filepath` parameter. For example `/api/deployments/1/versions/1/files/config/environments/`.

### HTTP Request

`GET https://api.gomorpheus.com/api/deployments/:deploymentId/versions/:id/files/config.ini`

### URL Parameters

Parameter | Description
--------- | -----------
deploymentId | The ID of the deployment
filepath | The name of the file or directory being fetched

## Upload a Deployment File

```shell
curl -XPOST "$MORPHEUS_API_URL/api/deployments/:deploymentId/versions/:id/files/config.ini"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
  -F 'file=@filename'
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

This endpoint will upload a file for a specific deployment version. This will overwrite the file if one with the same name exists already.

### HTTP Request

`POST https://api.gomorpheus.com/api/deployments/:deploymentId/versions/:id/files/:filepath`

### URL Parameters

Parameter | Description
--------- | -----------
deploymentId | The ID of the deployment
id | The ID of the deployment version
filepath | The name of the file being uploaded

Expects multipart form data as the request format, not JSON.

## Delete a Deployment File

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/deployments/:deploymentId/versions/:id/files/:filepath" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

This endpoint will delete an existing deployment file. To recursively delete a directory and all of its contents, the `force` parameter must be specified.

### HTTP Request

`DELETE https://api.gomorpheus.com/api/deployments/:deploymentId/versions/:id/files/:filepath`

### URL Parameters

Parameter | Description
--------- | -----------
deploymentId | The ID of the deployment
id | The ID of the deployment version
filepath | The name of the file or directory being deleted

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
force | false | Force delete, use `true` to recursively delete a directory and all of its contents.
