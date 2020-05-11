# Projects

Morpheus provides a database for keeping track of Projects in the system. Projects can be used to associate resources together and assign common metadata tags to their invoices.

## Get All Projects

```shell
curl "$MORPHEUS_API_URL/api/projects"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "projects": [
    {
      "id": 1,
      "name": "test",
      "description": "api test",
      "owner": {
        "id": 1,
        "username": "admin"
      },
      "tags": [
        {
          "id": 18028,
          "name": "foo",
          "value": "bar"
        }
      ],
      "instances": [
        {
          "id": 303,
          "name": "ubuntutest"
        }
      ],
      "servers": [

      ],
      "clouds": [
        {
          "id": 39,
          "name": "qa-amazon"
        }
      ],
      "dateCreated": "2020-05-05T17:11:16+0000",
      "lastUpdated": "2020-05-06T16:06:31+0000"
    },
    {
      "id": 2,
      "name": "uno",
      "description": "a test project about pizza",
      "owner": {
        "id": 1,
        "username": "admin"
      },
      "tags": [
        {
          "id": 18115,
          "name": "pizzeria",
          "value": "uno"
        },
        {
          "id": 18117,
          "name": "planet",
          "value": "saturn"
        },
        {
          "id": 18116,
          "name": "taste",
          "value": "delicious"
        }
      ],
      "instances": [
        {
          "id": 344,
          "name": "nginx21"
        }
      ],
      "servers": [
      ],
      "clouds": [
        {
          "id": 32,
          "name": "qa-google"
        }
      ],
      "dateCreated": "2020-05-07T03:00:02+0000",
      "lastUpdated": "2020-05-07T03:10:51+0000"
    }
  ],
  "meta": {
    "size": 2,
    "total": 2,
    "offset": 0,
    "max": 25
  }
}
```

This endpoint retrieves all projects associated with the account.

### HTTP Request

`GET https://api.gomorpheus.com/api/projects`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
phrase |  | Filter on partial match of name or description
name |  | Filter on exact match of name
instanceId |  | Filter by associated [Instance](#instances)
serverId |  | Filter by associated [Server](#hosts)
cloudId |  | Filter by associated [Cloud](#clouds)
resourceId |  | Filter by associated AccountResource(s). These are discovered AccountResource records that do not belong to known instances or servers.
ownerId |  | Filter by [owner](#users)
id |  | Filter by Project id(s)



## Get a Specific Project


```shell
curl "$MORPHEUS_API_URL/api/projects/2" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "project": {
    "id": 19,
    "name": "uno",
    "description": "a test project about pizza",
    "owner": {
      "id": 1,
      "username": "james"
    },
    "tags": [
      {
        "id": 18115,
        "name": "pizzeria",
        "value": "uno"
      },
      {
        "id": 18117,
        "name": "planet",
        "value": "saturn"
      },
      {
        "id": 18116,
        "name": "taste",
        "value": "delicious"
      }
    ],
    "instances": [
      {
        "id": 344,
        "name": "nginx21"
      }
    ],
    "servers": [
    ],
    "clouds": [
      {
        "id": 32,
        "name": "qa-google"
      }
    ],
    "dateCreated": "2020-05-07T03:00:02+0000",
    "lastUpdated": "2020-05-07T03:10:51+0000"
  }
}
```

This endpoint retrieves a specific project.


### HTTP Request

`GET https://api.gomorpheus.com/api/projects/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the project

## Create a Project

```shell
curl -XPOST "$MORPHEUS_API_URL/api/projects" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"project":{
    "name": "Test Project",
    "description": "a test project",
    "tags": {"hello":"world"},
    "instances":[
        {"id":1}, {"id":2}, {"id":3}
    ]
  }}'
```

> The above command returns JSON structured like getting a single project: 

Create a new project.

### HTTP Request

`POST https://api.gomorpheus.com/api/projects`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | A unique name for your project
description |  | Description
tags |  | Metadata tags, Array of objects having a name and value
instances |  | Instances, Array of objects having an id
servers |  | Servers, Array of objects having an id
clouds |  | Clouds, Array of objects having an id
resources |  | Resources, Array of objects having an id. These are discovered AccountResource records that do not belong to known instances or servers.


## Update a Project

```shell
curl -XPUT "$MORPHEUS_API_URL/api/projects/:id" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"project":{
    "addInstances":[
        {"id":4}, {"id":5}, {"id":6}
    ]
  }}'
```

> The above command returns JSON structured like getting a single project: 

Update an existing project.

### HTTP Request

`PUT https://api.gomorpheus.com/api/projects/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the project

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | A unique name for your project
description |  | Description
tags |  | Metadata tags, Array of objects having a name and value
addTags |  | Add or update value of Metadata tags, Array of objects having a name and value
removeTags |  | Remove Metadata tags, Array of objects having a name and an optional value. If value is passed, it must match to be removed.
instances |  | Instances, Array of objects having an id
servers |  | Servers, Array of objects having an id
clouds |  | Clouds, Array of objects having an id
addInstances |  | Add Instances to the project, Array of objects having an id
removeInstances |  | Remove Instances from the project, Array of objects having an id
addServers |  | Add Servers to the project, Array of objects having an id
removeServers |  | Remove Servers to remove from the project, Array of objects having an id
addClouds |  | Add Clouds to the project, Array of objects having an id
removeClouds |  | Remove Clouds from the project, Array of objects having an id
resources |  | Resources, Array of objects having an id. These are discovered AccountResource records that do not belong to known instances or servers.
addResources |  | Add Resources to the project, Array of objects having an id
removeResources |  | Remove Resources from the project, Array of objects having an id

## Delete a Project

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/projects/:id" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

Delete a project from the system and make it no longer usable.

### HTTP Request

`DELETE https://api.gomorpheus.com/api/projects/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the project
