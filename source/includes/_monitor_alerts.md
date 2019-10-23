# Alerts

 Alerts are rules that define who is notified about monitoring [incidents](#incidents). An alert can be configured for specific [Checks](#checks), [check groups](#check-groups), and/or [monitor apps](#monitor-apps).

## Get All Alerts

```shell
curl "https://api.gomorpheus.com/api/monitoring/alerts"
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structured like this:

```json
{
  "alerts": [
    {
      "id": 1,
      "name": "My Alert",
      "allApps": true,
      "allChecks": false,
      "allGroups": false,
      "active": true,
      "minSeverity": "critical",
      "minDuration": 0,
      "dateCreated": "2019-10-23T01:08:22+0000",
      "lastUpdated": "2019-10-23T01:08:22+0000",
      "checks": [

      ],
      "checkGroups": [

      ],
      "apps": [

      ],
       "contacts": [
        {
          "id": 1,
          "name": "admin",
          "method": "emailAddress,smsAddress",
          "notify": false,
          "close": true
        }
      ]
    }
  ],
  "meta": {
    "size": 1,
    "total": 1,
    "offset": 0,
    "max": 25
  }
}
```

This endpoint retrieves all alerts and their JSON encoded configuration attributes based on alert type. Alert data is encrypted in the database.

### HTTP Request

`GET https://api.gomorpheus.com/api/monitoring/alerts`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
lastUpdated | null | Date filter, restricts query to only load alerts updated  timestamp is more recent or equal to the date specified

## Get a Specific Alert


```shell
curl "https://api.gomorpheus.com/api/monitoring/alerts/1" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structured like this:

```json
{
  "alert": {
    "id": 1,
    "name": "My Alert",
    "allApps": true,
    "allChecks": false,
    "allGroups": false,
    "active": true,
    "minSeverity": "critical",
    "minDuration": 0,
    "dateCreated": "2019-10-22T19:48:38+0000",
    "lastUpdated": "2019-10-22T19:48:38+0000",
    "checks": [

    ],
    "checkGroups": [

    ],
    "apps": [

    ],
    "contacts": [
      {
        "id": 1,
        "name": "admin",
        "method": "emailAddress",
        "notify": true,
        "close": true
      }
    ]
  }
}
```

This endpoint retrieves a specific alert.


### HTTP Request

`GET https://api.gomorpheus.com/api/monitoring/alerts/:id`

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the alert

## Create an Alert

```shell
curl -XPOST "https://api.gomorpheus.com/api/monitoring/alerts" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '"alert": {
    "name": "My Alert",
    "minSeverity": "critical",
    "minDuration": 0,
    "allChecks": false,
    "checks": [
      1,2,3
    ],
    "allGroups": false,
    "checkGroups": [

    ],
    "allApps": false,
    "apps": [

    ],
    "contacts": [
      {
        "id": 1,
        "method": "emailAddress,smsAddress",
        "notify": true,
        "close": true
      }
    ]
  }}'
```

> The above command returns a similar JSON structure when submitting a GET request for a single alert 

### HTTP Request

`POST https://api.gomorpheus.com/api/monitoring/alerts`

### JSON Alert Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Unique name scoped to your account for the alert
minDuration | 0 | Duration in minutes of the delay before sending notification(s). Default is immediate (0).
minSeverity  | critical | Severity level threshold for sending notifications. They can be `info`, `warning`, or `critical`
active    | true | Set to false to disable notifications.
allChecks      | false | Trigger for all [checks](#checks).
allGroups      | false | Trigger for all [check groups](#check-groups).
allApps      | false | Trigger for all [monitor apps](#monitor-apps).
checks      |  | Array of [Check](#checks) IDs. Trigger for specific checks.
groups      |  | Array of [Check Group](#check-groups) IDs. Trigger for specific check groups.
apps      |  | Array of [Monitor App](#monitor-apps) IDs. Trigger for specific monitor apps.
contacts      |  | Array of objects. See [Alert Contact Parameters](#alert-contact-parameters).

#### Alert Contacts Parameters

Parameter | Default | Description
--------- | ------- | -----------
id      |  | Contact ID. The [contact](#contacts) to be notified.
method      | none | Method(s) to notify by.  Email is `emailAddress`, SMS is `smsAddress` and both Email and SMS is `emailAddress,smsAddress`.
notify      | false | Notify On Change. Send notifications when an incident is created or updated.
close      | false | Notify On Close. Send notifications when an incident is closed.

This defines a contact to notify and how to notify them.
Be sure to pass `"method":"emailAddress"` and `"notify":true`, otherwise notifications will not be sent to the contact.

## Updating an Alert

```shell
curl -XPUT "https://api.gomorpheus.com/api/monitoring/alerts/1" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '"alert": {
    "minSeverity": "critical",
    "minDuration": 0,
    "allChecks": false,
    "checks": [1,2,3,4,5],
    "contacts": [
      {
        "id": 1,
        "method": "emailAddress",
        "notify": true,
        "close": true
      }
    ]
  }}'
```

> The above command returns a similar JSON structure when submitting a GET request for a single alert 

### HTTP Request

`PUT https://api.gomorpheus.com/api/monitoring/alerts/:id`

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the alert

### JSON Alert Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Unique name scoped to your account for the alert
minDuration | 0 | Duration in minutes of the delay before sending notification(s). Default is immediate (0).
minSeverity  | critical | Severity level threshold for sending notifications. They can be `info`, `warning`, or `critical`
active    | true | Set to false to disable notifications.
allChecks      | false | Trigger for all [checks](#checks).
allGroups      | false | Trigger for all [check groups](#check-groups).
allApps      | false | Trigger for all [monitor apps](#monitor-apps).
checks      |  | Array of [Check](#checks) IDs. Trigger for specific checks.
groups      |  | Array of [Check Group](#check-groups) IDs. Trigger for specific check groups.
apps      |  | Array of [Monitor App](#monitor-apps) IDs. Trigger for specific monitor apps.
contacts      |  | Array of objects. See [Alert Contact Parameters](#alert-contact-parameters).


## Delete an Alert

```shell
curl -XDELETE "https://api.gomorpheus.com/api/monitoring/alerts/1" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

### HTTP Request

`DELETE https://api.gomorpheus.com/api/monitoring/alerts/:id`

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the alert
