# Incidents

These entities are incidents that result from [Checks](#checks). The API provides a means to list all of an account's incidents and also update, mute, close, and reopen them.

## Get All Incidents

```shell
curl "<%= curl_url %>/api/monitoring/incidents"
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "incidents": [
    {
      "id": 12,
      "account": {
        "id": 1
      },
      "app": null,
      "autoClose": true,
      "channelId": "cdff5f78-19df-41e0-b6dc-2ab87cedeae5",
      "checkGroups": [

      ],
      "checks": [

      ],
      "comment": "",
      "displayName": "test-mysql",
      "duration": null,
      "endDate": null,
      "inUptime": true,
      "muted": false,
      "lastCheckTime": "2017-02-22T00:04:56+0000",
      "lastError": "unheard from beyond check interval limit.",
      "lastMessage": null,
      "name": "test-mysql",
      "resolution": "A network outage was resolved.",
      "severity": "critical",
      "severityId": 20,
      "startDate": "2017-02-22T00:04:56+0000",
      "status": "open",
      "visibility": "private"
    }
  ],
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 25,
    "total": 63
  }
}
```

This endpoint retrieves all incidents.

### HTTP Request

`GET <%= api_url %>/api/monitoring/incidents`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
status |  | Filter by status
severity |  | Filter by severity

## Get a Specific Incident


```shell
curl "<%= curl_url %>/api/monitoring/incidents/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "incident": {
    "id": 1,
    "account": {
      "id": 1
    },
    "app": null,
    "autoClose": true,
    "channelId": "3f2fb251-9f87-4e28-88f7-7e0df24f4d50",
    "checkGroups": [
      {
        "id": 129,
        "name": "test-nginx"
      }
    ],
    "checks": [

    ],
    "comment": null,
    "displayName": "test-nginx",
    "duration": null,
    "endDate": "2018-03-26T11:00:34+0000",
    "inUptime": true,
    "muted": false,
    "lastCheckTime": "2018-03-23T23:06:03+0000",
    "lastError": "unheard from beyond check interval limit.",
    "lastMessage": null,
    "name": "test-nginx",
    "resolution": null,
    "severity": "critical",
    "severityId": 20,
    "startDate": "2018-03-23T23:06:03+0000",
    "status": "closed",
    "visibility": "private"
  },
  "issues": [
    {
      "id": 178,
      "attachmentType": "Group",
      "app": null,
      "available": false,
      "check": null,
      "checkGroup": {
        "id": 129,
        "name": "test-nginx"
      },
      "checkStatus": null,
      "endDate": "2018-03-26T11:00:33+0000",
      "health": 0,
      "inUptime": true,
      "muted": false,
      "incident": {
        "id": 41
      },
      "lastCheckTime": null,
      "lastError": null,
      "lastMessage": null,
      "name": "test-nginx",
      "severity": "critical",
      "severityId": 10,
      "startDate": "2018-03-23T23:06:03+0000",
      "status": "closed"
    }
  ]
}
```

This endpoint retrieves a specific incident.


### HTTP Request

`GET <%= api_url %>/api/monitoring/incidents/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the incident to retrieve

## Updating an Incident

```shell
curl -XPUT "<%= curl_url %>/api/monitoring/incidents/1" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"incident":{
    "resolution": "We fixed the problem",
  }}'
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This endpoint can be used to update certain properties of an incident.

### HTTP Request

`PUT <%= api_url %>/api/monitoring/incidents/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the incident

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
resolution |  | Description of the resolution to this incident
comment |  | Comment on this incident
status |  | Set status (open or closed)
severity |  | Set severity (critical, warning or info)
name |  | Set display name(subject)
startDate |  | Set start time
endDate |  | Set end time


## Mute an Incident

```shell
curl -XPUT "<%= curl_url %>/api/monitoring/incidents/1/mute" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"muted":true}'
```

> The above command returns JSON structure like this:

```json
{
  "success": true,
  "muted": true
}
```

This endpoint can be used to toggle the mute state of an incident. This sets `inUptime` to the opposite of `muted`.

### HTTP Request

`PUT <%= api_url %>/api/monitoring/incidents/:id/mute`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the incident

### JSON Parameters

Parameter | Default | Description
--------- | ----------- | -----------
muted | true | Set to false to unmute


## Unmute an Incident

```shell
curl -XPUT "<%= curl_url %>/api/monitoring/incidents/1/mute" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"muted":false}'
```

> The above command returns JSON structure like this:

```json
{
  "success": true,
  "muted": false
}
```

The mute endpoint is used to unmute by passing the parameter `"muted":false`.

### HTTP Request

`PUT <%= api_url %>/api/monitoring/incidents/:id/mute`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the incident

### JSON Parameters

Parameter | Default | Description
--------- | ----------- | -----------
muted | true | Set to false to unmute

## Mute All Incidents

```shell
curl -XPUT "<%= curl_url %>/api/monitoring/incidents/mute-all" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"muted":true}'
```

> The above command returns JSON structure like this:

```json
{
  "success": true,
  "muted": true,
  "updated": 11
}
```

This endpoint can be used to toggle the mute state of all **open** incidents. This sets `inUptime` to the opposite of `muted`.

### HTTP Request

`PUT <%= api_url %>/api/monitoring/incidents/mute-all`

### JSON Parameters

Parameter | Default | Description
--------- | ----------- | -----------
muted | true | Set to false to unmute

## Unmute all Incidents

```shell
curl -XPUT "<%= curl_url %>/api/monitoring/incidents/mute-all" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"muted":false}'
```

> The above command returns JSON structure like this:

```json
{
  "success": true,
  "muted": false,
  "updated": 11
}
```

The mute-all endpoint is used to unmute by passing the parameter `"muted":false`.

### HTTP Request

`PUT <%= api_url %>/api/monitoring/incidents/mute-all`

### JSON Parameters

Parameter | Default | Description
--------- | ----------- | -----------
muted | true | Set to false to unmute

## Close an Incident

```shell
curl -XDELETE "<%= curl_url %>/api/monitoring/incidents/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true,
  "msg": "Incident 1 is closed"
}
```

### HTTP Request

`DELETE <%= api_url %>/api/monitoring/incidents/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the incident

## Reopen an Incident

```shell
curl -XPUT "<%= curl_url %>/api/monitoring/incidents/1/reopen" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{}'
```

> The above command returns JSON structure like this:

```json
{
  "success": true,
  "msg": "Incident 1 is now open again"
}
```

This endpoint can be used to toggle the status of an incident back to `open`.

### HTTP Request

`PUT <%= api_url %>/api/monitoring/incidents/:id/reopen`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the incident

## Create an Incident

```shell
curl -XPOST "<%= curl_url %>/api/monitoring/incidents" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"incident":{
        "comment": "This is a summary of the incident",
        "resolution": null,
        "status": "open",
        "severity": "warning",
        "name": "Incident Name",
        "startDate": "2019-10-20T19:42:00Z",
        "endDate": "2019-10-21T19:42:00Z",
        "inUptime": true
  }}'
```

> The above command returns a similar JSON structure when submitting a GET request for a single incident 

This endpoint can be used to create an incident.

### HTTP Request

`POST <%= api_url %>/api/monitoring/incidents`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
resolution |  | Description of the resolution to this incident
comment |  | Comment on this incident, updates summary field
status |  | Set status (open or closed)
severity |  | Set severity (critical, warning or info)
name |  | Set display name(subject)
startDate |  | Set start time
endDate |  | Set end time
inUptime |  | Set 'In Availability'
