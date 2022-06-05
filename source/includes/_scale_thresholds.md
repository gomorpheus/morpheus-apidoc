## Scale Thresholds

Scale Thresholds can be configured to provide a template of rules to apply when adding auto-scaling to an instance.

<!--## Get All Scale Thresholds-->

```shell
curl "<%= curl_url %>/api/thresholds" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "thresholds": [
    {
      "id": 3,
      "name": "Default CPU Threshold",
      "type": "template",
      "autoUp": true,
      "autoDown": true,
      "minCount": 1,
      "maxCount": 3,
      "cpuEnabled": true,
      "minCpu": 40.0,
      "maxCpu": 75.0,
      "memoryEnabled": false,
      "minMemory": null,
      "maxMemory": null,
      "diskEnabled": false,
      "minDisk": null,
      "maxDisk": null,
      "dateCreated": "2018-03-27T09:48:46Z",
      "lastUpdated": "2018-03-30T14:44:22Z"
    },
    {
      "id": 793,
      "name": "Test Threshold",
      "type": "template",
      "autoUp": false,
      "autoDown": false,
      "minCount": 1,
      "maxCount": 2,
      "cpuEnabled": true,
      "minCpu": 0.0,
      "maxCpu": 99.0,
      "memoryEnabled": true,
      "minMemory": 50.0,
      "maxMemory": 98.0,
      "diskEnabled": false,
      "minDisk": 0.0,
      "maxDisk": 90.0,
      "dateCreated": "2022-05-31T15:46:02Z",
      "lastUpdated": "2022-06-01T13:15:21Z"
    },
    {
      "id": 4,
      "name": "Scale up disk at 100%",
      "type": "template",
      "autoUp": false,
      "autoDown": false,
      "minCount": 1,
      "maxCount": 2,
      "cpuEnabled": false,
      "minCpu": 0.0,
      "maxCpu": 0.0,
      "memoryEnabled": false,
      "minMemory": 0.0,
      "maxMemory": 0.0,
      "diskEnabled": false,
      "minDisk": 0.0,
      "maxDisk": 100.0,
      "dateCreated": "2018-10-02T21:23:31Z",
      "lastUpdated": "2018-10-02T21:23:44Z"
    }
  ],
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 3,
    "total": 3
  }
}

```

This endpoint retrieves all scale thresholds associated with the account.

### HTTP Request

`GET <%= api_url %>/api/thresholds`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
name |  | If specified will return an exact match on name
phrase |  | If specified will return a partial match on name

## Get a Specific Scale Threshold

```shell
curl "<%= curl_url %>/api/thresholds/4" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "threshold": {
    "id": 4,
    "name": "Scale up disk at 100%",
    "type": "template",
    "autoUp": false,
    "autoDown": false,
    "minCount": 1,
    "maxCount": 2,
    "cpuEnabled": false,
    "minCpu": 0.0,
    "maxCpu": 0.0,
    "memoryEnabled": false,
    "minMemory": 0.0,
    "maxMemory": 0.0,
    "diskEnabled": false,
    "minDisk": 0.0,
    "maxDisk": 100.0,
    "dateCreated": "2018-10-02T21:23:31Z",
    "lastUpdated": "2018-10-02T21:23:44Z"
  }
}
```

This endpoint retrieves a specific scale threshold.


### HTTP Request

`GET <%= api_url %>/api/thresholds/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the scale threshold to retrieve

## Create a Scale Threshold

```shell
curl -XPOST "<%= curl_url %>/api/thresholds" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "threshold": {
    "name": "Example Threshold",
    "autoUp": false,
    "autoDown": false,
    "minCount": 1,
    "maxCount": 2,
    "cpuEnabled": true,
    "minCpu": 0,
    "maxCpu": 95,
    "memoryEnabled": true,
    "minMemory": 0,
    "maxMemory": 95,
    "diskEnabled": true,
    "minDisk": 0,
    "maxDisk": 90
  }
}'
```

> The above command returns JSON structured like getting a single scale threshold: 

### HTTP Request

`POST <%= api_url %>/api/thresholds`

### JSON Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
name      | Y | | A name for the scale threshold
autoUp      | Y | false | Auto Upscale
autoDown      | Y | false | Auto Downscale
minCount      | Y | 0.0 | Min Count, the minimum number of nodes to scale down to
maxCount      | Y | 0.0 | Max Count, the maximum number of nodes to scale up to
cpuEnabled      | N | false | Enable CPU Threshold
minCpu      | N | 0.0 | Min CPU (%)
maxCpu      | N | 0.0 | Max CPU (%)
memoryEnabled      | N | false | Enable Memory Threshold
minMemory      | N | 0.0 | Min Memory (%)
maxMemory      | N | 0.0 | Max Memory (%)
diskEnabled      | N | false | Enable Disk Threshold
minDisk      | N | 0.0 | Min Disk (%)
maxDisk      | N | 0.0 | Max Disk (%)


## Update a Scale Threshold

```shell
curl -XPUT "<%= curl_url %>/api/thresholds/:id" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "threshold": {
    "memoryEnabled": true,
    "minMemory": 0,
    "maxMemory": 85.0,
  }
}'
```

> The above command returns JSON structured like getting a single scale threshold: 

### HTTP Request

`PUT <%= api_url %>/api/thresholds/:id`

### JSON Parameters

See [Create](#create-a-scale-threshold).


## Delete a Scale Threshold

```shell
curl -XDELETE "<%= curl_url %>/api/thresholds/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

Will delete a scale threshold from the system and make it no longer usable.

### HTTP Request

`DELETE <%= api_url %>/api/thresholds/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the scale threshold

