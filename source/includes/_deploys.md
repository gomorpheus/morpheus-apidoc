# Deployments

Provides API's used for creating "Deployment archives" for use with deployable instance types (i.e. Tomcat, Nginx, Apache, etc.). These endpoints also provide a means to trigger a deploy as well as to rollback from a failed deploy. There is a flow to creating a deployment archive. First you must create an appDeploy record. Then you can freely upload files to that deployment archive. Once your upload is complete it is easy to simply trigger the deploy.

## Get all Deployments

```shell
curl "$MORPHEUS_API_URL/api/instances/1/deploy" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "appDeploys": [
    {
      "config": null,
      "dateCreated": "2015-11-14T23:49:24Z",
      "deployDate": "2015-11-14T23:49:47Z",
      "deployGroup": null,
      "deployType": "browser",
      "fetchUrl": null,
      "gitRef": null,
      "gitUrl": null,
      "id": 2,
      "instanceId": 5,
      "keyPair": {
        "id": 1,
        "name": null
      },
      "lastUpdated": "2015-11-14T23:49:47Z",
      "status": "committed",
      "userVersion": null
    }
  ],
  "success": true
}
```

This endpoint retrieves all deploys that were created for a given instance

### HTTP Request

`GET https://api.gomorpheus.com/api/instances/1/deploy`


## Create a new Deployment

```shell
curl -XPOST "$MORPHEUS_API_URL/api/instances/1/deploy"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
  -H "Content-Type: application/json" \
  -d '{"appDeploy":{
    "deployType": "browser",
    "gitUrl": null,
    "fetchUrl": null,
    "gitRef": null,
    "userVersion": "1.0.0"
  }}'
```

> The above command returns JSON structured like this:

```json
{
  "appDeploy": {
  	"deployType": "browser",
    "gitUrl": null,
    "fetchUrl": null,
    "gitRef": null,
    "userVersion": "1.0.0",
    "status": "open",
    "dateCreated": null,
    "lastUpdated": null,
    "config": null,
    "deployGroup": null,
    "userVersion": "1.0.0"
  }
}
```

This endpoint will create a new AppDeploy entry configured for the specific instance in the url. Depending on the deployment type you may want to upload files to the archive.

### HTTP Request

`POST https://api.gomorpheus.com/api/instances/:id/deploy`

### JSON App Deploy Parameters

Parameter | Default | Description
--------- | ------- | -----------
userVersion |  | Deployment Version userVersion identifier.
versionId |  | Deployment Version ID. This can be passed instead of userVersion.
deployType | browser | The type of deployment. File based is browser, `git` for git and `fetch` for fetching from a url
gitUrl |  | The ssh git url to use to fetch files for the archive
gitRef |  | The branch or tag name to be used to fetch from on git.
fetchUrl |  | Used for fetch deploy type. Can fetch a zip file or general file and extract into archive
deployGroup |  | Not yet in use but used to organize deploys for multiple apps in the same group
configMap |  | JSON encoded list of parameters that varies by instance type. See below for more information

## Upload Files to Deployment Archive


