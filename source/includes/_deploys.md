# Deploys

Deploys are the execution and installation of [deployment](#deployments) versions on your instances. Each deploy represents the installation of a specific version to an instance. This usually involves the installation of one or more files. 

Provides API to view the deploy history for instances and also a means to deploy a new version or rollback to a previous version.

A deploy may also be referred to as an *instance deployment* or *appDeploy*.

## Get all Deploys

```shell
curl "$MORPHEUS_API_URL/api/deploys" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "appDeploys": [
    {
      "id": 28,
      "instanceId": 347,
      "instance": {
        "id": 347,
        "name": "testsite-2"
      },
      "deployment": {
        "id": 17,
        "name": "testsite",
        "deployType": "file"
      },
      "deploymentVersionId": 58,
      "deploymentVersion": {
        "id": 58,
        "userVersion": "5.0.9",
        "deployType": "file"
      },
      "config": {
        
      },
      "status": "committed",
      "deployDate": "2020-10-03T00:33:35+0000",
      "dateCreated": "2020-10-03T00:33:30+0000",
      "lastUpdated": "2020-10-03T00:33:35+0000"
    },
    {
      "id": 27,
      "instanceId": 346,
      "instance": {
        "id": 346,
        "name": "testsite-1"
      },
      "deployment": {
        "id": 17,
        "name": "testsite",
        "deployType": "file"
      },
      "deploymentVersionId": 58,
      "deploymentVersion": {
        "id": 58,
        "userVersion": "5.0.9",
        "deployType": "file"
      },
      "config": {
        
      },
      "status": "committed",
      "deployDate": "2020-10-03T00:33:35+0000",
      "dateCreated": "2020-10-03T00:33:30+0000",
      "lastUpdated": "2020-10-03T00:33:35+0000"
    },
    {
      "id": 26,
      "instanceId": 346,
      "instance": {
        "id": 346,
        "name": "testsite-1"
      },
      "deployment": {
        "id": 17,
        "name": "testsite",
        "deployType": "file"
      },
      "deploymentVersionId": 57,
      "deploymentVersion": {
        "id": 57,
        "userVersion": "5.0.8",
        "deployType": "file"
      },
      "config": {
        
      },
      "status": "archived",
      "deployDate": "2020-10-03T00:30:44+0000",
      "dateCreated": "2020-10-03T00:30:41+0000",
      "lastUpdated": "2020-10-03T00:33:35+0000"
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

This endpoint retrieves all deploys.

### HTTP Request

`GET https://api.gomorpheus.com/api/deploys`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
phrase |  | Filter by wildcard search of [deployment](#deployments) name, version number, and [instance](#instances) name
name |  | Filter by [deployment](#deployments) name
deploymentId |  | Filter by [deployment](#deployments) id
instanceName |  | Filter by [instance](#instances) name
instanceId |  | Filter by [instance](#instances) id
version |  | Filter by deployment version number (userVersion)
versionId |  | Filter by deployment version id
createdById |  | Filter by owner ([user](#users)) id
deployType |  | Filter by deployType: file, git, fetch
dateCreated |  | Filter by dateCreated, the created timestamp is more recent or equal to the date specified
lastUpdated |  | Filter by lastUpdated, the last modified timestamp is more recent or equal to the date specified
deployDate |  | Filter by deployDate, deployment completion timestamp is more recent or equal to the date specified
status |  | Filter by status: staged, deploying, commited, archived

## Get all Deploys for an Instance

```shell
curl "$MORPHEUS_API_URL/api/instances/:instanceId/deploys" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "appDeploys": [
    {
      "id": 27,
      "instanceId": 346,
      "instance": {
        "id": 346,
        "name": "testsite-1"
      },
      "deployment": {
        "id": 17,
        "name": "testsite",
        "deployType": "file"
      },
      "deploymentVersionId": 58,
      "deploymentVersion": {
        "id": 58,
        "userVersion": "5.0.9",
        "deployType": "file"
      },
      "config": {
        
      },
      "status": "committed",
      "deployDate": "2020-10-03T00:33:35+0000",
      "dateCreated": "2020-10-03T00:33:30+0000",
      "lastUpdated": "2020-10-03T00:33:35+0000"
    },
    {
      "id": 26,
      "instanceId": 346,
      "instance": {
        "id": 346,
        "name": "testsite-1"
      },
      "deployment": {
        "id": 17,
        "name": "testsite",
        "deployType": "file"
      },
      "deploymentVersionId": 57,
      "deploymentVersion": {
        "id": 57,
        "userVersion": "5.0.8",
        "deployType": "file"
      },
      "config": {
        
      },
      "status": "archived",
      "deployDate": "2020-10-03T00:30:44+0000",
      "dateCreated": "2020-10-03T00:30:41+0000",
      "lastUpdated": "2020-10-03T00:33:35+0000"
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

This endpoint retrieves all deploys for a specific instance.

### HTTP Request

`GET https://api.gomorpheus.com/api/instances/:instanceId/deploys`

### URL Parameters

Parameter | Description
--------- | -----------
instanceId | ID of the instance

### Query Parameters

Same as [get all deploys](#get-all-deploys).

## Deploy to an Instance

```shell
curl -XPOST "$MORPHEUS_API_URL/api/instances/:instanceId/deploys"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
  -H "Content-Type: application/json" \
  -d '{"appDeploy":{
    "deploymentId": 17,
    "version": "5.0.9"
  }}'
```

> The above command returns JSON structured like this:

```json
{
  "appDeploy": {
    "id": 27,
    "instanceId": 346,
    "instance": {
      "id": 346,
      "name": "jd-testsite-2"
    },
    "deployment": {
      "id": 17,
      "name": "testsite",
      "deployType": "file"
    },
    "deploymentVersionId": 58,
    "deploymentVersion": {
      "id": 58,
      "userVersion": "5.0.9",
      "version": "5.0.9",
      "deployType": "file"
    },
    "config": {
      "overwrite": true
    },
    "status": "open",
    "deployDate": "2020-10-03T00:33:35+0000",
    "createdBy": {
      "id": 1,
      "username": "admin"
    },
    "dateCreated": "2020-10-03T00:33:30+0000",
    "lastUpdated": "2020-10-03T00:33:35+0000"
  }
}
```

This endpoint will deploy the specified deployment version to specified instance. The version to deploy can be identified with `deploymentId` and `version` or with `versionId` alone. 

By default, the deployment is executed right away. To prevent this so that it can be [run manually](#run-a-deploy) later on.


### HTTP Request

`POST https://api.gomorpheus.com/api/instances/:instanceId/deploys`

### URL Parameters

Parameter | Description
--------- | -----------
instanceId | ID of the instance

### JSON Parameters

These parameters should be passed under an object called `appDeploy`.

Parameter | Default | Description
--------- | ------- | -----------
deploymentId |  | Deployment ID.
version |  | Deployment Version number identifier (userVersion). Can be passed along with deploymentId to identify the version
versionId |  | Deployment Version ID. This can be passed instead of deploymentId and version.
config |  | Map of configuration properties that vary by instance type.
stageOnly | false | Stage Only, do not run the deploy right away and instead set status to `staged` so it can be deployed later on.

## Update a Deploy

```shell
curl -XPUT "$MORPHEUS_API_URL/api/deploys/:id"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
  -H "Content-Type: application/json" \
  -d '{"appDeploy":{
    "config": { }
  }}'
```

> The above command returns JSON structured like this:

```json
{
  "appDeploy": {
    "id": 27,
    "instanceId": 346,
    "instance": {
      "id": 346,
      "name": "jd-testsite-2"
    },
    "deployment": {
      "id": 17,
      "name": "testsite",
      "deployType": "file"
    },
    "deploymentVersionId": 58,
    "deploymentVersion": {
      "id": 58,
      "userVersion": "5.0.9",
      "version": "5.0.9",
      "deployType": "file"
    },
    "config": {
      "overwrite": true
    },
    "status": "staged",
    "deployDate": "2020-10-03T00:33:35+0000",
    "createdBy": {
      "id": 1,
      "username": "admin"
    },
    "dateCreated": "2020-10-03T00:33:30+0000",
    "lastUpdated": "2020-10-03T00:33:35+0000"
  }
}
```

This endpoint will update an existing deploy. This is typically only needed to change settings on a deploy that is `staged`, before it is run.

### HTTP Request

`PUT https://api.gomorpheus.com/api/deploys/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the deploy (appDeploy)

### JSON Deploy Parameters

Parameter | Default | Description
--------- | ------- | -----------
config |  | JSON encoded list of parameters that varies by instance type.

## Run a Deploy

```shell
curl -XPOST "$MORPHEUS_API_URL/api/deploys/:id/deploy"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
  -H "Content-Type: application/json" \
  -d '{"appDeploy":{
    "config": { }
  }}'
```

> The above command returns JSON structured like this:

```json
{
  "appDeploy": {
    "id": 27,
    "instanceId": 346,
    "instance": {
      "id": 346,
      "name": "jd-testsite-2"
    },
    "deployment": {
      "id": 17,
      "name": "testsite",
      "deployType": "file"
    },
    "deploymentVersionId": 58,
    "deploymentVersion": {
      "id": 58,
      "userVersion": "5.0.9",
      "version": "5.0.9",
      "deployType": "file"
    },
    "config": {
      "overwrite": true
    },
    "status": "deploying",
    "deployDate": "2020-10-03T00:33:35+0000",
    "createdBy": {
      "id": 1,
      "username": "admin"
    },
    "dateCreated": "2020-10-03T00:33:30+0000",
    "lastUpdated": "2020-10-03T00:33:35+0000"
  }
}
```

This endpoint will run an existing instance deploy. This is for running a new `staged` deploy or to rollback to previous version by re-running a deploy that is `archived`.

### HTTP Request

`POST https://api.gomorpheus.com/api/deploys/:id/deploy`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the deploy (appDeploy)

### JSON Deploy Parameters

Parameter | Default | Description
--------- | ------- | -----------
config |  | JSON encoded list of parameters that varies by instance type.


## Delete a Deploy

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/deploys/:id" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

This endpoint will delete an archived instance deploy.

### HTTP Request

`DELETE https://api.gomorpheus.com/api/deploys/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the deploy (appDeploy)
