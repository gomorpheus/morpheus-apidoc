# Health

Provides API interfaces for checking health status.  This is the status of the morpheus appliance itself, which includes elasticsearch, mysql etc.

## Get Health Status

```shell
curl "$MORPHEUS_API_URL/api/health" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "health": {
    "success": true,
    "date": "2019-12-23T19:14:41Z",
    "cpu": {
      "success": true,
      "cpuLoad": 0.5126493909536541,
      "cpuTotalLoad": 5.302748759909017,
      "processorCount": 16,
      "processTime": 52169711.18,
      "systemLoad": 2.9423828125,
      "status": "ok"
    },
    "memory": {
      "success": true,
      "maxMemory": 7635730432,
      "totalMemory": 6765936640,
      "freeMemory": 197682472,
      "usedMemory": 6568254168,
      "systemMemory": 34359738368,
      "comittedMemory": 18334928896,
      "systemFreeMemory": 474562560.0,
      "systemSwap": 34359738368,
      "systemFreeSwap": 34359738368,
      "swapPercent": 0.0,
      "memoryPercent": 0.9707826894,
      "systemMemoryPercent": 0.9861884117126465,
      "status": "warning",
      "statusMessage": "heavy memory usage, consider increasing morpheus memory"
    }
}
```

> The above JSON is abbreviated, the actual response contains more data.

This endpoint retrieves health info about the appliance such as cpu, memory and database usage. Elasticsearch statistics and queue usage are also returned.

### HTTP Request

`GET https://api.gomorpheus.com/api/health`


## Get All Health Alarms

```shell
curl "$MORPHEUS_API_URL/api/health/alarms" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "alarms": [
    
  ],
  "meta": {
    "size": 2,
    "total": 2,
    "offset": 0,
    "max": 25
  }
}
```

This endpoint retrieves all health alarms.

### HTTP Request

`GET https://api.gomorpheus.com/api/health/alarms`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Filter by matching name
name |  | Filter by name
acknowledged |  | Filter by acknowledged flag

## Get a Specific Health Alarm

```shell
curl "$MORPHEUS_API_URL/api/health/alarms/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "alarm": {
    "id": 1,
    "name": "foobar",
    "dateCreated": "2019-11-17T05:59:20+0000",
    "lastUpdated": "2019-11-17T05:59:20+0000"
  }
}

```

This endpoint will retrieve a specific health alarm by ID.

### HTTP Request

`GET https://api.gomorpheus.com/api/health/alarms/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the alarm

## Acknowledge A Health Alarm

```shell
curl -XPUT "$MORPHEUS_API_URL/api/health/alarms/1/acknowledge" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"alarm":{
    "acknowledged": true,
  }}'
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/health/alarms/1/acknowledge`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the alarm

### JSON Parameters

The following parameters are passed inside an object named `alarm`.

Parameter | Default | Description
--------- | ------- | -----------
acknowledged      |  | Pass `true` to ackowledge an alarm, or pass `false` to unacknowledge it.

## Acknowledge Many Health Alarms

```shell
curl -XPUT "$MORPHEUS_API_URL/api/health/alarms/acknowledge" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "ids": [1,2,3,4,5],
    "alarm":{
      "acknowledged": true
  }}'
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/health/alarms/acknowledge`

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
ids      | [] | Array of Alarm ID(s)to be updated.
acknowledged      |  | Pass `true` to ackowledge the alarm(s) or pass `false` to unacknowledge the alarm(s).
