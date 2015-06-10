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
  "layout": {"id": 1}
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

### JSON Server Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      | null | Unique name scoped to your account for the instance
description | null | Optional description field

## Delete a Server

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
