## Tasks

Provides API interfaces for managing the creation and modification of automation tasks.  Tasks are used in workflows for automation.

<!--## Get All Tasks-->

```shell
curl "$MORPHEUS_API_URL/api/tasks"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "tasks": [
     {
      "id": 5,
      "accountId": 1,
      "name": "aptitude upgrade",
      "taskType": {
        "id": 1,
        "code": "script",
        "name": "Shell Script"
      },
      "taskOptions": {
        "script": "apt-get upgrade -y"
      }
    },
  ],
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 1,
    "total": 1
  }
}
```

This endpoint retrieves all tasks.

### HTTP Request

`GET https://api.gomorpheus.com/api/tasks`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Filter by matching name
name |  | Filter by name
taskTypeCodes |  | Filter by task type code(s).

## Get a Specific Task

```shell
curl "$MORPHEUS_API_URL/api/tasks/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "task": {
      "id": 5,
      "accountId": 1,
      "name": "aptitude upgrade",
      "taskType": {
        "id": 1,
        "code": "script",
        "name": "Shell Script"
      },
      "taskOptions": {
        "script": "apt-get upgrade -y"
      }
    }
}
```

This endpoint will retrieve a specific task by id

### HTTP Request

`GET https://api.gomorpheus.com/api/tasks/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the task

## Create a Task

```shell
curl -XPOST "$MORPHEUS_API_URL/api/tasks" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"task": {
    "name": "cleanup tmp files",
    "taskType": {
      "code": "script"
    },
    "executeTarget": "resource",
    "file": {
      "sourceType": "local",
      "content": "rm -rf /var/www/app1/tmp/*\nrm -rf /var/www/app2/tmp/*"
    }
  }}'
```

> The above command returns JSON structured like getting a single task:

### HTTP Request

`POST https://api.gomorpheus.com/api/tasks`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | A unique name for the task
code      |  | A unique code for the task
taskType.code      |  | The type of task
taskOptions | | Map of options specific to each type. eg. script
resultType      |  | The result type eg. value, exitCode, keyValue, json
executeTarget      | <variable> | The execution target. eg. local,remote,resource. The default value varies by task type.
retryable      | false | If the task should be retried or not.
retryCount      |  | The number of times to retry.
retryDelaySeconds      |  | The delay, between retries.
file |  | File, object specifying type and content, see [File Object](#file-object-parameter). This is required for task types that expect a script, having `scriptable:true` and an optionType of `type:"file-content"`.

### File Object Parameter

Parameter | Required | Description
--------- | -------- | -----------
sourceType | Y | File Source i.e. `local`, `repository`, `url`. Default is `local`.
content | Y | File content, the script text. Only required when sourceType is `local`.
contentPath | Y | Content Path, the repo file location or url. Required when sourceType is `repository` or `url`.
contentRef | N | Content Ref, the branch/tag. Only used when sourceType is `repo`.

### JSON Parameters for Execute Target: Local

Parameter | Default | Description
--------- | ------- | -----------
taskOptions.localScriptGitId      |  | The Git Repo ID
taskOptions.localScriptGitRef      |  | The Git Repo Ref eg. master

These additional task options are available when using executeTarget of `local`.

### JSON Parameters for Execute Target: Remote

Parameter | Default | Description
--------- | ------- | -----------
taskOptions.host      |  | Host or IP Address for remote execution
taskOptions.port      | 22 | Port for remote execution
taskOptions.username      |  | Username for remote execution
taskOptions.password      |  | Password for remote execution

These additional task options are available when using executeTarget of `remote`.


## Updating a Task

```shell
curl -XPUT "$MORPHEUS_API_URL/api/tasks/5" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"task":{
    "name": "my task",
  }}'
```

> The above command returns JSON structured like getting a single task:

### HTTP Request

`PUT https://api.gomorpheus.com/api/tasks/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the task

### JSON Parameters

Same as [Create](#create-a-task).

## Delete a Task

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/tasks/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`DELETE https://api.gomorpheus.com/api/tasks/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the task

If a task is still tied to workflows, the delete will fail.

## Execute a Task

```shell
curl -XPOST "$MORPHEUS_API_URL/api/tasks/5/execute" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"job":{
    "targetType": "instance",
    "instances": [1]
  }}'
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

This endpoint executes a task on the specified instances or servers.  The [History API](#get-all-processes) can be used to retrieve information about the execution results.

### HTTP Request

`POST https://api.gomorpheus.com/api/tasks/:id/execute`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the task

### JSON Parameters

The following parameters are passed inside an object named `job`.

Parameter | Default | Description
--------- | ------- | -----------
name      | (task name) | A name for the execution job. Can be used to find execution results with `/api/processes?name=`.
targetType      | | The type of object to execute on. Pass either `instance` or `server`.
instances      | | Array of Instance IDs. Only applicable for `targetType` is `instance`.
servers      | | Array of Server IDs. Only applicable for `targetType` is server`.
customOptions | | Map of options to be used as values in the task. These correspond to option types.
customConfig | | String of custom configuration values as JSON.
