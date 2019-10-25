## Monitor Apps

These entities define a collection of monitoring checks and/or check groups that are associated with a specific app.

<!--## Get All Monitor Apps-->

```shell
curl "$MORPHEUS_API_URL/api/monitoring/apps"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "monitorApps": [
    {
      "id": 82,
      "account": {
        "id": 1
      },
      "active": true,
      "app": {
        "id": 82,
        "name": "testnginx"
      },
      "name": "testnginx",
      "checks": [

      ],
      "checkGroups": [
        201
      ],
      "description": null,
      "inUptime": true,
      "lastCheckStatus": null,
      "lastWarningDate": null,
      "lastErrorDate": null,
      "lastSuccessDate": null,
      "lastRunDate": "2018-07-11T22:45:00+0000",
      "lastError": null,
      "lastTimer": 7,
      "health": 0,
      "history": null,
      "severity": "critical",
      "createIncident": true,

      "createdBy": {
        "id": 1,
        "username": "james"
      },
      "dateCreated": "2018-02-20T18:28:38+0000",
      "lastUpdated": "2018-07-11T22:45:00+0000",
      "availability": 99.45081019
    }
  ],
  "meta": {
    "size": 5,
    "total": 5,
    "max": 25,
    "offset": 0
  }
}
```

This endpoint retrieves all monitor apps.

### HTTP Request

`GET https://api.gomorpheus.com/api/monitoring/apps`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
name |  | If specified will return an exact match on name
phrase |  | If specified will return a partial match on name or email or sms

## Get a Specific Monitor App

```shell
curl "$MORPHEUS_API_URL/api/monitoring/apps/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "monitorApp": {
    "id": 82,
    "account": {
      "id": 1
    },
    "active": true,
    "app": {
      "id": 82,
      "name": "testnginx"
    },
    "name": "testnginx",
    "checks": [

    ],
    "checkGroups": [
      201
    ],
    "description": null,
    "inUptime": true,
    "lastCheckStatus": null,
    "lastWarningDate": null,
    "lastErrorDate": null,
    "lastSuccessDate": null,
    "lastRunDate": "2018-07-11T22:45:00+0000",
    "lastError": null,
    "lastTimer": 7,
    "health": 0,
    "history": null,
    "severity": "critical",
    "createIncident": true,
    "createdBy": {
      "id": 1,
      "username": "james"
    },
    "dateCreated": "2018-02-20T18:28:38+0000",
    "lastUpdated": "2018-07-11T22:45:00+0000",
    "availability": 99.45081019
  },
  "checkGroups": [
    {
      "id": 201,
      "account": {
        "id": 1
      },
      "instance": {
        "id": 293,
        "name": "testnginx-18"
      },
      "name": "testnginx-18",
      "description": null,
      "inUptime": true,
      "lastCheckStatus": null,
      "lastWarningDate": null,
      "lastErrorDate": null,
      "lastSuccessDate": null,
      "lastRunDate": "2018-07-11T22:45:00+0000",
      "lastError": null,
      "outageTime": 0,
      "lastTimer": 7,
      "health": 0,
      "history": null,
      "minHappy": 1,
      "lastMetric": null,
      "severity": "critical",
      "createIncident": true,
      "createdBy": {
        "id": 1,
        "username": "james"
      },
      "dateCreated": "2018-02-20T18:34:55+0000",
      "lastUpdated": "2018-07-11T22:45:00+0000",
      "availability": 99.45081019,
      "checkType": {
        "id": 1,
        "code": "webGetCheck",
        "name": "Web Check",
        "metricName": "response"
      }
    }
  ],
  "openIncidents": [
    {
      "id": 582,
      "account": {
        "id": 1
      },
      "app": {
        "id": 82,
        "name": "testnginx"
      },
      "autoClose": true,
      "channelId": "1543448c-e391-404c-81fb-4deedb079f32",
      "checkGroups": [
        {
          "id": 201,
          "name": "testnginx-18"
        }
      ],
      "checks": [

      ],
      "comment": null,
      "displayName": "testnginx-18",
      "duration": null,
      "endDate": null,
      "inUptime": true,
      "lastCheckTime": "2018-07-11T22:45:00+0000",
      "lastError": "unheard from beyond check interval limit.",
      "lastMessage": null,
      "name": "testnginx18",
      "resolution": null,
      "severity": "critical",
      "severityId": 20,
      "startDate": "2018-07-11T22:45:00+0000",
      "status": "open",
      "visibility": "private"
    }
  ]
}
```

This endpoint retrieves a specific monitor app.

### HTTP Request

`GET https://api.gomorpheus.com/api/monitoring/apps/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of the monitor app

## Create a Monitor App

```shell
curl -XPOST "$MORPHEUS_API_URL/api/monitoring/apps" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"monitorApp":{
    "name": "My App Checks",
    "checks": [1,2]
  }}'
```

> The above command returns a similar JSON structure when submitting a GET request for a single contact

### HTTP Request

`POST https://api.gomorpheus.com/api/monitoring/apps`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Unique name scoped to your account for the monitor app
description |  | Optional description field
minHappy | 1 | Min Happy. This specifies the minimum number of checks within inUptime  | true | Used to determine if monitor app should affect account wide availability calculations
active    | true | Used to determine if monitor app is active
severity  | critical | Severity level of incidents that are created when this check fails. They can be `info`, `warning`, or `critical`
checks |  | Array of [Check](#checks) IDs
checkGroups |  | Array of [Check Group](#check-groups) IDs

## Updating a Monitor App

```shell
curl -XPUT "$MORPHEUS_API_URL/api/monitoring/apps/3" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"monitorApp":{
    "checks": [],
    "checkGroups": [55]
  }}'
```

> The above command returns a similar JSON structure when submitting a GET request for a single monitor app

### HTTP Request

`PUT https://api.gomorpheus.com/api/monitoring/apps/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of the monitor app

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Unique name scoped to your account for the monitor app
description |  | Description
minHappy |  | Min Happy. This specifies the minimum number of checks within the app that must be happy to keep the app from becoming unhealthy.
severity |  | Max Severity. Determines the maximum severity level this app can incur on an incident when failing. Default is critical
active    | true | Used to determine if monitor app is active
inUptime |  | Affects Availability. Default is on.
checks |  | Array of [Check](#checks) IDs
checkGroups |  | Array of [Check Group](#check-groups) IDs

## Mute a Monitor App

```shell
curl -XPUT "$MORPHEUS_API_URL/api/monitoring/apps/1/mute" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
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

This endpoint can be used to toggle the mute state of a monitor app. This sets `createIncident` to the opposite of `muted`.


## Unmute a Monitor App

```shell
curl -XPUT "$MORPHEUS_API_URL/api/monitoring/apps/1/mute" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
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

The same endpoint is used to unmute by passing the parameter `"muted":false`.

### HTTP Request

`PUT https://api.gomorpheus.com/api/monitoring/checks/:id/mute`

### JSON Parameters

Parameter | Default | Description
--------- | ----------- | -----------
muted | true | Set to false to unmute


## Mute All Monitor Apps

```shell
curl -XPUT "$MORPHEUS_API_URL/api/monitoring/apps/mute-all" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"muted":false}'
```

> The above command returns JSON structure like this:

```json
{
  "success": true,
  "muted": false,
  "updated": 3
}
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/monitoring/apps/mute-all`

### JSON Parameters

Parameter | Default | Description
--------- | ----------- | -----------
muted | true | Set to false to unmute

This endpoint can be used to toggle the mute state of all monitor apps. This sets `createIncident` to the opposite of `muted`.

## Unmute All Monitor App

```shell
curl -XPUT "$MORPHEUS_API_URL/api/monitoring/apps/mute-all" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"muted":false}'
```

> The above command returns JSON structure like this:

```json
{
  "success": true,
  "muted": false,
  "updated": 3
}
```

The same endpoint is used to unmute by passing the parameter `"muted":false`.

## Delete a Monitor App

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/monitoring/apps/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

### HTTP Request

`DELETE https://api.gomorpheus.com/api/monitoring/apps/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of the monitor app
