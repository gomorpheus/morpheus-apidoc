# Instances

Instances are sets of containers of various types that can be provisioned across the Morpheus stack and offer a wide range of services. MySQL, Redis, ElasticSearch, PostgreSQL, Tomcat, nginx, Confluence, Jenkins, and more.

## Get All Instances

```shell
curl "https://api.gomorpheus.com/api/instances"
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structured like this:

```json
{
  "instances": [
    {
      "id": 4,
      "accountId": 1,
      "instanceType": {
        "id": 6,
        "name": "Tomcat",
        "code": "tomcat",
        "category": "web",
        "active": true,
        "versions": [
          "7.0.62"
        ],
        "instanceTypeLayouts": [
          {
            "id": 7,
            "code": "tomcat-7.0.62-single",
            "name": "Single Process",
            "description": "This will provision a single process with no redundancy"
          }
        ]
      },
      "layout": {
        "id": 7,
        "code": "tomcat-7.0.62-single",
        "name": "Single Process",
        "description": "This will provision a single process with no redundancy"
      },
      "plan": null,
      "name": "My Tomcat",
      "description": null,
      "dateCreated": "2015-06-09T20:59:17Z",
      "lastUpdated": "2015-06-09T21:00:19Z",
      "status": {
        "enumType": "com.morpheus.Instance$Status",
        "name": "running"
      },
      "containerIds": [
        4
      ]
    },
    {
      "id": 6,
      "accountId": 1,
      "instanceType": {
        "id": 11,
        "name": "Postgres",
        "code": "postgres",
        "category": "sql",
        "active": true,
        "versions": [
          "9.4"
        ],
        "instanceTypeLayouts": [
          {
            "id": 13,
            "code": "postgres-9.4-single",
            "name": "Single Process",
            "description": "This will provision a single process with no redundancy"
          }
        ]
      },
      "layout": {
        "id": 13,
        "code": "postgres-9.4-single",
        "name": "Single Process",
        "description": "This will provision a single process with no redundancy"
      },
      "plan": null,
      "name": "Quest DB",
      "description": null,
      "dateCreated": "2015-06-09T21:06:38Z",
      "lastUpdated": "2015-06-09T21:07:15Z",
      "status": {
        "enumType": "com.morpheus.Instance$Status",
        "name": "running"
      },
      "containerIds": [
        6
      ]
    },
    {
      "id": 3,
      "accountId": 1,
      "instanceType": {
        "id": 1,
        "name": "Redis",
        "code": "redis",
        "category": "cache",
        "active": true,
        "versions": [
          "3.0"
        ],
        "instanceTypeLayouts": [
          {
            "id": 2,
            "code": "redis-3.0-master-slave",
            "name": "Master\/Slave",
            "description": "This will provision 2 containers, one master and 1 slave."
          },
          {
            "id": 1,
            "code": "redis-3.0-single",
            "name": "Single Process",
            "description": "This will provision a single process with no redundancy"
          }
        ]
      },
      "layout": {
        "id": 1,
        "code": "redis-3.0-single",
        "name": "Single Process",
        "description": "This will provision a single process with no redundancy"
      },
      "plan": null,
      "name": "Redis",
      "description": null,
      "dateCreated": "2015-06-09T17:27:56Z",
      "lastUpdated": "2015-06-09T21:06:05Z",
      "status": {
        "enumType": "com.morpheus.Instance$Status",
        "name": "running"
      },
      "containerIds": [
        3
      ]
    }
  ],
  "instanceCount": 3,
  "stats": {
    "4": {
      "usedStorage": 178561024,
      "maxStorage": 3103539200,
      "usedMemory": 0,
      "maxMemory": 0
    },
    "6": {
      "usedStorage": 48861184,
      "maxStorage": 3103539200,
      "usedMemory": 0,
      "maxMemory": 0
    },
    "3": {
      "usedStorage": 18976768,
      "maxStorage": 3103539200,
      "usedMemory": 0,
      "maxMemory": 0
    }
  }
}
```

This endpoint retrieves all instances and their JSON encoded configuration attributes based on check type. Server data is encrypted in the database.

### HTTP Request

`GET https://api.gomorpheus.com/api/instances`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
lastUpdated | null | Date filter, restricts query to only load instances updated  timestamp is more recent or equal to the date specified

## Get a Specific Instance


```shell
curl "https://api.gomorpheus.com/api/instances/1" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "instance": {
    "id": 4,
    "accountId": 1,
    "instanceType": {
      "id": 6,
      "name": "Tomcat",
      "code": "tomcat",
      "category": "web",
      "active": true,
      "versions": [
        "7.0.62"
      ],
      "instanceTypeLayouts": [
        {
          "id": 7,
          "code": "tomcat-7.0.62-single",
          "name": "Single Process",
          "description": "This will provision a single process with no redundancy"
        }
      ]
    },
    "layout": {
      "id": 7,
      "code": "tomcat-7.0.62-single",
      "name": "Single Process",
      "description": "This will provision a single process with no redundancy"
    },
    "plan": null,
    "name": "My Tomcat",
    "description": null,
    "dateCreated": "2015-06-09T20:59:17Z",
    "lastUpdated": "2015-06-09T21:00:19Z",
    "status": {
      "enumType": "com.morpheus.Instance$Status",
      "name": "running"
    },
    "containerIds": [
      4
    ]
  }
}
```

This endpoint retrieves a specific instance.

## Provision an Instance

```shell
curl -XPOST "https://api.gomorpheus.com/api/instances" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '{ "instance": {
  "name": "myRedis",
  "description": "dre-matrix-3",
  "instanceType": {"code":'redis'},
  "servicePlan": 1,
  "layout": {"id": 1},
  "site": {"id": 1}
  }
```

> The above command returns a similar JSON structure when submitting a GET request for a single check 

### HTTP Request

`POST https://api.gomorpheus.com/api/instances`

### JSON Server Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      | null | Unique name scoped to your account for the instance
description | null | Optional description field
instanceType | null | The type of instance by code we want to fetch
servicePlan | null | service plans designate layout and capacity
layout | null | the layout id for the instance type that you want to provision. i.e. single process or cluster
site   | null | The Group Id for which server group to provision into. (can be acquired using the /api/groups API)

## Updating an Instance

```shell
curl -XPUT "https://api.gomorpheus.com/api/instances/1" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '{ "instance": {
  "name": "my new redis",
  "description": "my new redis"
  }}'
```

> The above command returns a similar JSON structure when submitting a GET request for a single check 

### HTTP Request

`PUT https://api.gomorpheus.com/api/instances/:id`

### JSON Instance Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      | null | Unique name scoped to your account for the instance
description | null | Optional description field

## Stop an Instance

```shell
curl -XPUT "https://api.gomorpheus.com/api/instances/1/stop" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will stop all containers running within an instance.

### HTTP Request

`PUT https://api.gomorpheus.com/api/instances/:id/stop`

## Start an Instance

```shell
curl -XPUT "https://api.gomorpheus.com/api/instances/1/start" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will start all containers running within an instance.

### HTTP Request

`PUT https://api.gomorpheus.com/api/instances/:id/start`

## Restart an Instance

```shell
curl -XPUT "https://api.gomorpheus.com/api/instances/1/restart" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will restart all containers running within an instance. This includes rebuilding the environment variables and applying settings to the docker containers.

### HTTP Request

`PUT https://api.gomorpheus.com/api/instances/:id/restart`

## Resize an Instance

```shell
curl -XPUT "https://api.gomorpheus.com/api/instances/1/resize" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '{ "servicePlan": {
    "id": 1
  }}'
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

It is possible to resize containers within an instance by increasing their memory plan or storage limit. This is done by assigning a new service plan to the container.

### HTTP Request

`PUT https://api.gomorpheus.com/api/instances/:id/resize`

### JSON Parameters

Parameter   | Default | Description
---------   | ------- | -----------
servicePlan | null    | the map containing the id of the service plan you wish to apply to the containers in this instance

## Clone an Instance

```shell
curl -XPUT "https://api.gomorpheus.com/api/instances/1/clone" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '{ "name": "New Name",
    "group": {
      "id": 1
  }}'
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

One can easily clone an instance and all containers within that instance. The containers are backed up via the backup services and used as a snapshot to produce a clone of the instance. It is possible to clone this app instance into an entirely different availability zone.

### HTTP Request

`PUT https://api.gomorpheus.com/api/instances/:id/clone`

### JSON Parameters

Parameter   | Default | Description
---------   | ------- | -----------
group       | null    | the map containing the id of the server group you would like to clone into.
name        | null    | A name for the new cloned instance. If none is specified the existing name will be duplicated with the 'clone' suffix added.

## Upgrade an Instance

```shell
curl -XPUT "https://api.gomorpheus.com/api/instances/1/upgrade" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '{ "upgrade": {
      "id": 1
  }}'
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

It is possible to perform certain upgrade options for an instance. See the section on getting a list of upgrade options for a particular instance. Depending on the instance type these could include adding a replica, adding a a tomcat node, adding a mysql save, or master. Entirely depends.

### HTTP Request

`PUT https://api.gomorpheus.com/api/instances/:id/upgrade`

### JSON Parameters

Parameter   | Default | Description
---------   | ------- | -----------
upgrade       | null    | the map containing the id of the instance type upgrade you would like to perform.


## Delete an Instance

```shell
curl -XDELETE "https://api.gomorpheus.com/api/instances/1" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete an instance and all associated monitors and backups.
