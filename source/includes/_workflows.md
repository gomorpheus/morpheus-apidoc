## Workflows

Provides API interfaces for managing the creation and modification of automation workflows. Workflows, also called Task Sets, are a collection of tasks that are organized in phases. A task phase determines if/when each task runs.

A Workflow may also be referred to as a *Task Set* or *taskSet*.

<!--## Get All Workflows-->

```shell
curl "$MORPHEUS_API_URL/api/task-sets" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "taskSets": [
    {
      "id": 13,
      "name": "my workflow",
      "description": null,
      "dateCreated": "2017-06-26T15:36:19+0000",
      "lastUpdated": "2017-06-26T15:44:38+0000",
      "accountId": 1,
      "tasks": [
        8
      ],
      "taskSetTasks": [
        {
          "id": 51,
          "taskPhase": "provision",
          "taskOrder": 2,
          "task": {
            "id": 8,
            "name": "my task",
            "taskType": {
              "id": 1,
              "code": "script",
              "name": "Shell Script"
            },
            "taskOptions": {
              "script": "echo  \"hello\""
            }
          }
        }
      ]
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

This endpoint retrieves all workflows.

### HTTP Request

`GET https://api.gomorpheus.com/api/task-sets`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Filter by matching name
name |  | Filter by name

## Get a Specific Workflow

```shell
curl "$MORPHEUS_API_URL/api/task-sets/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "taskSet": {
    "id": 8,
    "name": "uname",
    "description": "",
    "dateCreated": "2017-05-24T20:24:02+0000",
    "lastUpdated": "2017-05-24T20:24:02+0000",
    "accountId": 1,
    "tasks": [
      10
    ],
    "taskSetTasks": [
      {
        "id": 33,
        "taskPhase": "postProvision",
        "taskOrder": 0,
        "task": {
          "id": 10,
          "name": "uname",
          "taskType": {
            "id": 1,
            "code": "script",
            "name": "Shell Script"
          },
          "taskOptions": {
            "script": "echo `uname a`"
          }
        }
      }
    ]
  }
}
```

This endpoint will retrieve a specific workflow by id

### HTTP Request

`GET https://api.gomorpheus.com/api/task-sets/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the workflow

## Create a Workflow

```shell
curl -XPOST "$MORPHEUS_API_URL/api/task-sets" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"taskSet": {
    "name": "my workflow",
    "tasks": [
      {
        "taskId": 3
      },
      {
        "taskId": 8
      },
      {
        "taskId": 9,
        "taskPhase": "postProvision"
      }
    ]
  }}'
```

> The above command returns JSON structured like getting a single workflow:

### HTTP Request

`POST https://api.gomorpheus.com/api/task-sets`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | A unique name for the workflow
description      |  | A description of the workflow
type      | provision | Workflow type. Pass `operation` for operational workflows.
optionTypes      | [] | List of option type IDs for use with operational workflow configuration.
tasks      | [] | List of task objects in order
tasks.taskId |  | Task ID
tasks.taskPhase | provision | Task Phase. Pass `operation` for operational workflows.

## Create an Operational Workflow

```shell
curl -XPOST "$MORPHEUS_API_URL/api/task-sets" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"taskSet": {
    "name": "test workflow",
    "type": "operation",
    "optionTypes": [3,4,5],
    "tasks": [
      {
        "taskId": 3,
        "phase": "operation"
      }
    ]
  }}'
```

> The above command returns JSON structured like getting a single workflow:

### HTTP Request

`POST https://api.gomorpheus.com/api/task-sets`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | A unique name for the workflow
description      |  | A description of the workflow
type      | provision | Workflow type. Pass `operation` for operational workflows.
optionTypes      | [] | List of option type IDs for use with operational workflow configuration.
tasks      | [] | List of task objects in order
tasks.taskId |  | Task ID
tasks.taskPhase | provision | Task Phase. Pass `operation` for operational workflows

## Updating a Workflow

```shell
curl -XPUT "$MORPHEUS_API_URL/api/task-sets/5" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"taskSet":{
    "tasks": [
      {
        "taskId": 3
      }
    ]
  }}'
```

> The above command returns JSON structured like getting a single workflow:

### HTTP Request

`PUT https://api.gomorpheus.com/api/task-sets/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the workflow

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | A unique name for the workflow
description      |  | A description of the workflow
tasks      | [] | List of task objects in order
tasks.taskId |  | Task ID
tasks.taskPhase | provision | Task Phase.

## Delete a Workflow

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/task-sets/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`DELETE https://api.gomorpheus.com/api/task-sets/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the workflow

## Execute a Workflow

```shell
curl -XPOST "$MORPHEUS_API_URL/api/task-sets/5/execute" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"job":{
    "targetType": "instance",
    "instances": [1],
    "customOptions": {
      "mysqlVersion":"5.7"
    }
  }}'
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

This endpoint executes a workflow on the specified `instances`, `servers` or the `appliance` itself, depending on which `targetType` is specified.  The [History API](#get-all-processes) can be used to retrieve information about the execution results.

### HTTP Request

`POST https://api.gomorpheus.com/api/task-sets/:id/execute`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the workflow

### JSON Parameters

The following parameters are passed inside an object named `job`.

Parameter | Default | Description
--------- | ------- | -----------
name      | (workflow name) | A name for the execution job. Can be used to find execution results with `/api/processes?name=`.
targetType      | | The target context for task execution. Pass `instance`, `server` or `appliance` (None, execute locally on the appliance itself).  This is required for tasks with `executeTarget` set to `resource`.
instances      | | Array of Instance IDs. Only applicable for `targetType` is `instance`.
servers      | | Array of Server IDs. Only applicable for `targetType` is server`.
customOptions | | Map of options to be used as values in the workflow tasks. These correspond to option types.
customConfig | | String of custom configuration values as JSON.
