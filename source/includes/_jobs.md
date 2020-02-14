# Jobs

Provides API interfaces for managing jobs within Morpheus

## Get All Jobs

```shell
curl "$MORPHEUS_API_URL/api/jobs" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "jobs": [
    {
      "id": 5,
      "name": "task 2",
      "type": {
        "id": 3,
        "name": "Task Job",
        "code": "morpheus.task"
      },
      "task": {
        "id": 2
      },
      "jobSummary": "echo hello",
      "scheduleMode": "manual",
      "status": null,
      "namespace": null,
      "category": null,
      "description": null,
      "enabled": true,
      "dateCreated": "2019-11-13T19:17:50+0000",
      "lastUpdated": "2019-11-13T19:17:50+0000",
      "lastRun": null,
      "lastResult": null,
      "createdBy": {
        "id": 1,
        "username": "root"
      },
      "targetType": "server",
      "targets": [
        {
          "id": 8,
          "name": "server 1",
          "targetType": "server",
          "refId": 20
        }
      ],
      "customConfig": null
    }
  ],
  "stats": {
    "jobCount": 17,
    "todayCount": 7,
    "execCount": 17,
    "execSuccess": 0,
    "execSuccessRate": 0,
    "execFailed": 7,
    "execFailedRate": 41.17647059,
    "executionsPerDay": [
      0,
      1,
      1,
      3,
      2,
      3,
      7
    ]
  },
  "meta": {
    "size": 1,
    "total": 1,
    "max": 25,
    "offset": 0
  }
}
    
```

This endpoint retrieves all jobs.

### HTTP Request

`GET https://api.gomorpheus.com/api/jobs`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Name or external ID filter, restricts query to only load jobs which contain the phrase specified
itemSource |  | Source filter, restricts query to only load jobs of specified source: [all, user, sync]

## Get a Specific Job

```shell
curl "$MORPHEUS_API_URL/api/jobs/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "job": {
    "id": 14,
    "name": "Task 1",
    "type": {
      "id": 3,
      "name": "Task Job",
      "code": "morpheus.task"
    },
    "task": {
      "id": 1
    },
    "jobSummary": "echo hello",
    "scheduleMode": "1",
    "status": null,
    "namespace": null,
    "category": null,
    "description": null,
    "enabled": true,
    "dateCreated": "2019-11-16T18:29:35+0000",
    "lastUpdated": "2019-11-16T19:46:36+0000",
    "lastRun": "2019-11-16T19:45:20+0000",
    "lastResult": "error",
    "createdBy": {
      "id": 1,
      "username": "root"
    },
    "targetType": "server",
    "targets": [
      {
        "id": 35,
        "name": "Server 1",
        "targetType": "server",
        "refId": 55
      }
    ],
    "customConfig": null
  },
  "executions": {
    "jobExecutions": [
      {
        "id": 25,
        "name": "Task 1",
        "process": {
          "id": 181,
          "accountId": 1,
          "uniqueId": "6d1388d0-2482-429a-81e5-92afad192c5c",
          "processType": {
            "code": "serverWorkflow",
            "name": "workflow"
          },
          "description": "Task 1",
          "subType": null,
          "subId": null,
          "zoneId": 3,
          "integrationId": null,
          "instanceId": null,
          "containerId": null,
          "serverId": 55,
          "containerName": null,
          "displayName": "Server 1",
          "timerCategory": "Task 1",
          "timerSubCategory": "99",
          "status": "failed",
          "reason": null,
          "percent": 100.0,
          "statusEta": 180000,
          "message": "unknown error",
          "output": null,
          "error": null,
          "startDate": "2019-11-16T19:45:20+0000",
          "endDate": "2019-11-16T19:46:35+0000",
          "duration": 75585,
          "dateCreated": "2019-11-16T19:45:20+0000",
          "lastUpdated": "2019-11-16T19:46:36+0000",
          "createdBy": {
            "username": "root",
            "displayName": "Stubby Toes"
          },
          "updatedBy": {
            "username": "root",
            "displayName": "Stubby Toes"
          },
          "events": [
            {
              "id": 23,
              "processId": 166,
              "accountId": 1,
              "uniqueId": "8401ac1f-fc02-475d-a3ec-f61ea49e668b",
              "processType": {
                "code": "executeTask",
                "name": "execute task"
              },
              "description": "echo hello",
              "refType": "instance",
              "refId": 3,
              "subType": null,
              "subId": null,
              "zoneId": null,
              "integrationId": null,
              "instanceId": 3,
              "containerId": null,
              "serverId": null,
              "containerName": null,
              "displayName": "name",
              "status": "failed",
              "reason": null,
              "percent": 100.0,
              "statusEta": 180000,
              "message": "Task Execution Failed on Attempt 1\n",
              "output": null,
              "error": "Task Execution Failed on Attempt 1\n",
              "startDate": "2019-11-14T08:00:14+0000",
              "endDate": "2019-11-14T08:00:16+0000",
              "duration": 1800,
              "dateCreated": "2019-11-14T08:00:14+0000",
              "lastUpdated": "2019-11-14T08:00:16+0000",
              "createdBy": {
                "username": "root",
                "displayName": "Stubby Toes"
              },
              "updatedBy": {
                "username": "root",
                "displayName": "Stubby Toes"
              }
            }
          ]
        },
        "job": {
          "id": 14,
          "name": "Task 1",
          "description": null,
          "type": {
            "id": 3,
            "code": "morpheus.task",
            "name": "Task Job"
          }
        },
        "description": null,
        "dateCreated": "2019-11-16T19:45:20+0000",
        "startDate": "2019-11-16T19:45:20+0000",
        "endData": "2019-11-16T19:46:36+0000",
        "duration": 75513,
        "resultData": "{\"data\":{\"results\":[],\"processId\":181},\"errorCode\":null,\"errors\":{},\"inProgress\":false,\"msg\":\"\",\"success\":false}",
        "status": "error",
        "statusMessage": null
      }
    ],
    "meta": {
      "size": 1,
      "total": 1,
      "max": 3,
      "offset": 0
    }
  }
}
```

This endpoint retrieves a specific job.

### HTTP Request

`GET https://api.gomorpheus.com/api/jobs/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the job
includeExecCount | Number of most recent job executions to include in response


## Create a Job

Use this command to create a job. This command requires either a task `task.id` or workflow `workflow.id` (not both).

```shell
curl -XPOST "$MORPHEUS_API_URL/api/jobs" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"job": {
        "name": "Job 1",
        "workflow": {
          "id": 3
        },
        "targetType": "server",
        "targets": [
          {
            "refId": 2
          },
          {
            "refId": 3
          }
        ],
        "scheduleMode": "manual",
        "customConfig": "foo=bar"
     }}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`POST https://api.gomorpheus.com/api/jobs`

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Job name
enabled | N | Use this to set enabled state, defaults to true
task.id | Y if workflow.id not used | Use this to assign task to job. Not compatible with workflow
workflow.id | Y if task.id not used | Use this to assign workflow to job. Not compatible with task
targetType | Y | Target type where job will execute: appliance, instance, server
targets | 1..n for instance or server target types | Key for targets configuration, see [Targets](#targets)
scheduleMode | Y | Job execution schedule type ID or 'manual' or 'dateTime'
customConfig | N | Job custom configuration
dateTime | N | Date and Time to execute the job. Use UTC time in the format 2020-02-15T05:00:00Z. Required when scheduleMode is 'dateTime'.
run | N | If true executes job

#### Targets

The `targets` parameter is list of targets where job will execute.

Parameter | Required | Description
--------- | -------- | -----------
refId | Y | ID for instance or server depending on target type


## Update a Job

```shell
curl -XPUT "$MORPHEUS_API_URL/api/jobs/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"job": {
        "name": "Job 1",
        "workflow": {
          "id": 3
        },
        "targetType": "server",
        "targets": [
          {
            "refId": 2
          },
          {
            "refId": 3
          }
        ],
        "scheduleMode": "manual",
        "customConfig": "foo=bar",
        "run": true
     }}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/jobs/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the job

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | N | Job name
enabled | N | Use this to set enabled state
task.id | N | Use this to assign task to job. Not compatible with workflow
workflow.id | N | Use this to assign workflow to job. Not compatible with task
targetType | N | Target type where job will execute: appliance, instance, server
targets | N | Key for targets configuration, see [Targets](#targets)
scheduleMode | Y | Job execution schedule type ID or 'manual' or 'dateTime'
customConfig | N | Job custom configuration
dateTime | N | Date and Time to execute the job. Use UTC time in the format 2020-02-15T05:00:00Z. Required when scheduleMode is 'dateTime'.
run | N | If true executes job 


## Execute a Job

Use this command to execute a job.

```shell
curl -XPUT "$MORPHEUS_API_URL/api/jobs/3/execute" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/jobs/:id/execute?customConfig=%7Bfoo%3Abar%7D`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the job
customConfig | Optional custom config


## Delete a Job

Use this command to delete a job.

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/jobs/3" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`DELETE https://api.gomorpheus.com/api/jobs/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the job


## Get Job Executions

```shell
curl "$MORPHEUS_API_URL/api/job-executions" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "jobExecutions": [
    {
      "id": 30,
      "name": "name",
      "process": {
        "id": 190,
        "accountId": 1,
        "uniqueId": "2d959a94-0db6-427d-94b0-440737e9a485",
        "processType": {
          "code": "serverWorkflow",
          "name": "workflow"
        },
        "description": "name",
        "subType": null,
        "subId": null,
        "zoneId": 3,
        "integrationId": null,
        "instanceId": null,
        "containerId": null,
        "serverId": 21,
        "containerName": null,
        "displayName": "cluster resource name-master",
        "timerCategory": "name",
        "timerSubCategory": "191",
        "status": "failed",
        "reason": null,
        "percent": 100.0,
        "statusEta": 180000,
        "message": "unknown error",
        "output": null,
        "error": null,
        "startDate": "2019-11-17T14:27:08+0000",
        "endDate": "2019-11-17T14:28:23+0000",
        "duration": 75584,
        "dateCreated": "2019-11-17T14:27:08+0000",
        "lastUpdated": "2019-11-17T14:28:23+0000",
        "createdBy": {
          "username": "root",
          "displayName": "Stubby Toes"
        },
        "updatedBy": {
          "username": "root",
          "displayName": "Stubby Toes"
        },
        "events": [

        ]
      },
      "job": {
        "id": 3,
        "name": "name",
        "description": null,
        "type": {
          "id": 2,
          "code": "morpheus.workflow",
          "name": "Workflow Job"
        }
      },
      "description": null,
      "dateCreated": "2019-11-17T14:25:52+0000",
      "startDate": "2019-11-17T14:25:52+0000",
      "endData": "2019-11-17T14:28:23+0000",
      "duration": 151421,
      "resultData": "{\"data\":{\"results\":[],\"processId\":190},\"errorCode\":null,\"errors\":{},\"inProgress\":false,\"msg\":\"\",\"success\":false}",
      "status": "error",
      "statusMessage": null
    }
  ],
  "meta": {
    "size": 1,
    "total": 29,
    "max": "1",
    "offset": 0
  }
}
```

This endpoint retrieves job executions.

### HTTP Request

`GET https://api.gomorpheus.com/api/job-executions`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
jobId |  | Job ID filter, restricts query to only load executions for specified job
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Name or external ID filter, restricts query to only load job executions which contain the phrase specified


## Get a Specific Job Execution

```shell
curl "$MORPHEUS_API_URL/api/job-executions/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "jobExecution": {
    "id": 26,
    "name": "Task 1",
    "process": {
      "id": 187,
      "accountId": 1,
      "uniqueId": "9872270f-1a0f-4c5e-9ae8-8afb692da0fa",
      "processType": {
        "code": "serverWorkflow",
        "name": "workflow"
      },
      "description": "Task 1",
      "subType": null,
      "subId": null,
      "zoneId": 3,
      "integrationId": null,
      "instanceId": null,
      "containerId": null,
      "serverId": 55,
      "containerName": null,
      "displayName": "docker1",
      "timerCategory": "Task 1",
      "timerSubCategory": "99",
      "status": "failed",
      "reason": null,
      "percent": 100.0,
      "statusEta": 180000,
      "message": "unknown error",
      "output": null,
      "error": null,
      "startDate": "2019-11-17T08:41:48+0000",
      "endDate": "2019-11-17T08:43:42+0000",
      "duration": 113862,
      "dateCreated": "2019-11-17T08:41:48+0000",
      "lastUpdated": "2019-11-17T08:43:42+0000",
      "createdBy": {
        "username": "root",
        "displayName": "Stubby Toes"
      },
      "updatedBy": {
        "username": "root",
        "displayName": "Stubby Toes"
      },
      "events": [

      ]
    },
    "job": {
      "id": 14,
      "name": "Task 1",
      "description": null,
      "type": {
        "id": 3,
        "code": "morpheus.task",
        "name": "Task Job"
      }
    },
    "description": null,
    "dateCreated": "2019-11-17T08:41:47+0000",
    "startDate": "2019-11-17T08:41:47+0000",
    "endData": "2019-11-17T08:43:42+0000",
    "duration": 115226,
    "resultData": "{\"data\":{\"results\":[],\"processId\":187},\"errorCode\":null,\"errors\":{},\"inProgress\":false,\"msg\":\"\",\"success\":false}",
    "status": "error",
    "statusMessage": null
  }
}
```

This endpoint retrieves a specific job execution.

### HTTP Request

`GET https://api.gomorpheus.com/api/job-executions/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the job


## Get a Specific Job Execution Event

```shell
curl "$MORPHEUS_API_URL/api/job-executions/1/events/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "processEvent": {
    "id": 32,
    "processId": 201,
    "accountId": 1,
    "uniqueId": "82368308-045e-40c8-ad41-faf7ecd6320e",
    "processType": {
      "code": "executeTask",
      "name": "execute task"
    },
    "description": "echo goodbye",
    "refType": "instance",
    "refId": 3,
    "subType": null,
    "subId": null,
    "zoneId": null,
    "integrationId": null,
    "instanceId": 3,
    "containerId": null,
    "serverId": null,
    "containerName": null,
    "displayName": "echo goodbye",
    "status": "failed",
    "reason": null,
    "percent": 100.0,
    "statusEta": 10568,
    "message": "Task Execution Failed on Attempt 1\n",
    "output": null,
    "error": "Task Execution Failed on Attempt 1\n",
    "startDate": "2019-11-19T08:00:25+0000",
    "endDate": "2019-11-19T08:00:27+0000",
    "duration": 1712,
    "dateCreated": "2019-11-19T08:00:25+0000",
    "lastUpdated": "2019-11-19T08:00:27+0000",
    "createdBy": {
      "username": "root",
      "displayName": "Stubby Toes"
    },
    "updatedBy": {
      "username": "root",
      "displayName": "Stubby Toes"
    }
  }
}
```

This endpoint retrieves a specific job execution event.

### HTTP Request

`GET https://api.gomorpheus.com/api/job-executions/:id/events/:eventId`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the job execution
eventId | ID of the job execution event