## Power Schedules

Power Schedules can be configured to automatically power on and off your instances and servers.

<!--## Get All Power Schedules-->

```shell
curl "<%= curl_url %>/api/power-schedules" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "schedules": [
    {
      "id": 1,
      "name": "weekday daytime",
      "description": "An example power schedule",
      "visibility": null,
      "enabled": true,
      "scheduleType": "power",
      "scheduleTimezone": "America/New_York",
      "mondayOn": 7.0,
      "mondayOnTime": "07:00",
      "mondayOff": 19.0,
      "mondayOffTime": "19:00",
      "tuesdayOn": 7.0,
      "tuesdayOnTime": "07:00",
      "tuesdayOff": 19.0,
      "tuesdayOffTime": "19:00",
      "wednesdayOn": 7.0,
      "wednesdayOnTime": "07:00",
      "wednesdayOff": 19.0,
      "wednesdayOffTime": "19:00",
      "thursdayOn": 7.0,
      "thursdayOnTime": "07:00",
      "thursdayOff": 19.0,
      "thursdayOffTime": "19:00",
      "fridayOn": 7.0,
      "fridayOnTime": "07:00",
      "fridayOff": 19.0,
      "fridayOffTime": "19:00",
      "saturdayOn": 0.0,
      "saturdayOnTime": "00:00",
      "saturdayOff": 0.0,
      "saturdayOffTime": "00:00",
      "sundayOn": 0.0,
      "sundayOnTime": "00:00",
      "sundayOff": 0.0,
      "sundayOffTime": "00:00",
      "totalMonthlyHoursSaved": 463.32,
      "dateCreated": "2018-02-28T21:56:38Z",
      "lastUpdated": "2018-09-13T13:38:19Z"
    }
  ],
  "meta": {
    "size": 1,
    "total": 1,
    "max": 25,
    "offset": 0
  }
}
```

This endpoint retrieves all power schedules associated with the account.

### HTTP Request

`GET <%= api_url %>/api/power-schedules`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
name |  | If specified will return an exact match on name
phrase |  | If specified will return a partial match on name

## Get a Specific Power Schedule

```shell
curl "<%= curl_url %>/api/power-schedules/2" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "schedule": {
    "id": 1,
    "name": "weekday daytime",
    "description": "An example power schedule",
    "visibility": null,
    "enabled": true,
    "scheduleType": "power",
    "scheduleTimezone": "America/New_York",
    "mondayOn": 7.0,
    "mondayOnTime": "07:00",
    "mondayOff": 19.0,
    "mondayOffTime": "19:00",
    "tuesdayOn": 7.0,
    "tuesdayOnTime": "07:00",
    "tuesdayOff": 19.0,
    "tuesdayOffTime": "19:00",
    "wednesdayOn": 7.0,
    "wednesdayOnTime": "07:00",
    "wednesdayOff": 19.0,
    "wednesdayOffTime": "19:00",
    "thursdayOn": 7.0,
    "thursdayOnTime": "07:00",
    "thursdayOff": 19.0,
    "thursdayOffTime": "19:00",
    "fridayOn": 7.0,
    "fridayOnTime": "07:00",
    "fridayOff": 19.0,
    "fridayOffTime": "19:00",
    "saturdayOn": 0.0,
    "saturdayOnTime": "00:00",
    "saturdayOff": 0.0,
    "saturdayOffTime": "00:00",
    "sundayOn": 0.0,
    "sundayOnTime": "00:00",
    "sundayOff": 0.0,
    "sundayOffTime": "00:00",
    "totalMonthlyHoursSaved": 463.32,
    "dateCreated": "2018-02-28T21:56:38Z",
    "lastUpdated": "2018-09-13T13:38:19Z"
  },
  "instances": [

  ],
  "servers": [

  ]
}
```

This endpoint retrieves a specific power schedule.


### HTTP Request

`GET <%= api_url %>/api/power-schedules/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the power schedule to retrieve

## Create a Power Schedule

```shell
curl -XPOST "<%= curl_url %>/api/power-schedules" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "schedule": {
    "name": "business hours only",
    "description": null,
    "enabled": true,
    "scheduleType": "power",
    "scheduleTimezone": "UTC",
    "unit": "minute",
    "mondayOnTime": "07:00",
    "mondayOffTime": "19:00",
    "tuesdayOnTime": "07:00",
    "tuesdayOffTime": "19:00",
    "wednesdayOnTime": "07:00",
    "wednesdayOffTime": "19:00",
    "thursdayOnTime": "07:00",
    "thursdayOffTime": "19:00",
    "fridayOnTime": "07:00",
    "fridayOffTime": "19:00",
    "saturdayOnTime": "00:00"
    "saturdayOffTime": "00:00",
    "sundayOnTime": "00:00",
    "sundayOffTime": "00:00"
    "enabled": true
  }
}'
```

> The above command returns JSON structured like getting a single power schedule: 

### HTTP Request

`POST <%= api_url %>/api/power-schedules`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | A name for the power schedule
description      |  | A description for the power schedule
scheduleType      |  | Type of schedule: Power (power), Power Off (power off)
scheduleTimezone      | UTC | Time Zone eg. America/New_York, Europe/Amsterdam, etc.
enabled      | true | Enabled
mondayOnTime | 00:00 | Monday Start time of the day in 24-hour format
mondayOffTime | 24:00 | Monday End time of the day in 24-hour format
tuesdayOnTime | 00:00 | Tuesday Start time of the day in 24-hour format
tuesdayOffTime | 24:00 | Tuesday End time of the day in 24-hour format
wednesdayOnTime | 00:00 | Wednesday Start time of the day in 24-hour format
wednesdayOffTime | 24:00 | Wednesday End time of the day in 24-hour format
thursdayOnTime | 00:00 | Thursday Start time of the day in 24-hour format
thursdayOffTime | 24:00 | Thursday End time of the day in 24-hour format
fridayOnTime | 00:00 | Friday Start time of the day in 24-hour format
fridayOffTime | 24:00 | Friday End time of the day in 24-hour format
saturdayOnTime | 00:00 | Saturday Start time of the day in 24-hour format
saturdayOffTime | 24:00 | Saturday End time of the day in 24-hour format
sundayOnTime | 00:00 | Sunday Start time of the day in 24-hour format
sundayOffTime | 24:00 | Sunday End time of the day in 24-hour format


## Update a Power Schedule

```shell
curl -XPUT "<%= curl_url %>/api/power-schedules/2" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "schedule": {
    "mondayOffTime": "20:30",
    "tuesdayOffTime": "20:30",
    "wednesdayOffTime": "20:30",
    "thursdayOffTime": "20:30",
    "fridayOffTime": "15:00"
  }
}'
```

> The above command returns JSON structured like getting a single power schedule: 

### HTTP Request

`PUT <%= api_url %>/api/power-schedules/:id`

### JSON Parameters

See [Create](#create-a-power-schedule).


## Delete a Power Schedule

```shell
curl -XDELETE "<%= curl_url %>/api/power-schedules/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

Will delete a power schedule from the system and make it no longer usable.

### HTTP Request

`DELETE <%= api_url %>/api/power-schedules/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the power schedule

## Add Instances to a Power Schedule

```shell
curl -XPUT "<%= curl_url %>/api/power-schedules/2/add-instances" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "instances": [
    231, 232
  ]
}'
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

Add one or many instances to a power schedule.

### HTTP Request

`PUT <%= api_url %>/api/power-schedules/:id/add-instances`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the power schedule

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
instances      |  | Array of Instance IDs to add

## Remove Instances from a Power Schedule

```shell
curl -XPUT "<%= curl_url %>/api/power-schedules/2/remove-instances" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "instances": [
    232
  ]
}'
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

Remove one or many instances from a power schedule.

### HTTP Request

`PUT <%= api_url %>/api/power-schedules/:id/remove-instances`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the power schedule

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
instances      |  | Array of Instance IDs to remove

## Add Servers to a Power Schedule

```shell
curl -XPUT "<%= curl_url %>/api/power-schedules/2/add-servers" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "servers": [
    6,7,8
  ]
}'
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

Add one or many servers to a power schedule.

### HTTP Request

`PUT <%= api_url %>/api/power-schedules/:id/add-servers`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the power schedule

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
servers      |  | Array of Server IDs to add

## Remove Servers from a Power Schedule

```shell
curl -XPUT "<%= curl_url %>/api/power-schedules/2/remove-servers" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "servers": [
    7,8
  ]
}'
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

Remove one or many servers from a power schedule.

### HTTP Request

`PUT <%= api_url %>/api/power-schedules/:id/remove-servers`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the power schedule

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
servers      |  | Array of Server IDs to remove
