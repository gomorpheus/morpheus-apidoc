# Script Templates

Provides API interfaces for managing script templates within <%= application_name %>.

A Script Template may also be referred to as a *Container Script* or *containerScript*.

## Get All Scripts

```shell
curl "<%= curl_url %>/api/library/container-scripts" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "containerScripts": [
     {
      "id": 10,
      "code": "cassandra-2.1-vm-start",
      "account": null,
      "name": "cassandra start",
      "category": null,
      "sortOrder": 1,
      "scriptVersion": "1.0",
      "scriptPhase": "start",
      "scriptType": "bash",
      "script": "************",
      "scriptService": null,
      "scriptMethod": null,
      "runAsUser": null,
      "runAsPassword": null,
      "sudoUser": true,
      "failOnError": true
    },
    {
      "id": 9,
      "code": "cassandra-2.1-vm-stop",
      "account": null,
      "name": "cassandra stop",
      "category": null,
      "sortOrder": 1,
      "scriptVersion": "1.0",
      "scriptPhase": "stop",
      "scriptType": "bash",
      "script": "************",
      "scriptService": null,
      "scriptMethod": null,
      "runAsUser": null,
      "runAsPassword": null,
      "sudoUser": true,
      "failOnError": true
    },
  ],
  "meta": {
    "size": 25,
    "total": 200,
    "max": 25,
    "offset": 0
  }
}
```

This endpoint retrieves all scripts.

The value of `script` will be masked as `************` for system owned scripts.

### HTTP Request

`GET <%= api_url %>/api/library/container-scripts`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Name, restricts query to only load scripts which contain the phrase specified
scriptType |  | Script type code filter, restricts query to only load scripts of specified type 
scriptPhase |  | Script phase filter, restricts query to only load scripts of specified phase


## Get a Specific Script

```shell
curl "<%= curl_url %>/api/library/container-scripts/10" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "containerScript": {
    "id": 10,
    "code": "cassandra-2.1-vm-start",
    "account": null,
    "name": "cassandra start",
    "category": null,
    "sortOrder": 1,
    "scriptVersion": "1.0",
    "scriptPhase": "start",
    "scriptType": "bash",
    "script": "************",
    "scriptService": null,
    "scriptMethod": null,
    "runAsUser": null,
    "runAsPassword": null,
    "sudoUser": true,
    "failOnError": true
  }
}
```

This endpoint retrieves a specific script.

The value of `script` will be masked as `************` for system owned scripts.

### HTTP Request

`GET <%= api_url %>/api/library/container-scripts/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the script


## Create a Script

Use this command to create a script.

```shell
curl -XPOST "<%= curl_url %>/api/library/container-scripts" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"containerScript": {
    "scriptType": "bash",
    "scriptPhase": "provision",
    "script": "echo hello > /tmp/hello.txt",
    "name": "hello"
  }
}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "containerScript": {
    "id": 100
  }
}
```

### HTTP Request

`POST <%= api_url %>/api/library/container-scripts`

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Script name
category | N | Script category
scriptVersion | N | Version of the script. Default is 1.
scriptPhase | N | Phase for the script, `provision`, `start`, etc.
scriptType | N | Type for the script, `bash` or `powershell`. Default is `bash`.
script | N | Script content, that is, the code itself.
runAsUser | N | Run as a specific user.
sudoUser | N | Sudo, whether or not to run with sudo. Default is `false`.

## Update a Script

Use this command to update an existing script.

```shell
curl -XPUT "<%= curl_url %>/api/library/container-scripts/:id" \
  -H "Authorization: BEARER <%= curl_token %>"
  -H "Content-Type: application/json" \
  -d '{"containerScript": {
    "script": "echo 'hello world' > /tmp/hello.txt",
  }
}'
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "containerScript": {
    "id": 100
  }
}
```

### HTTP Request

`PUT <%= api_url %>/api/library/container-scripts/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the script

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Script name
category | N | Script category
scriptVersion | N | Version of the script. Default is 1.
scriptPhase | N | Phase for the script, `provision`, `start`, etc.
scriptType | N | Type for the script, `bash` or `powershell`. Default is `bash`.
script | N | Script content, that is, the code itself.
runAsUser | N | Run as a specific user.
sudoUser | N | Sudo, whether or not to run with sudo. Default is `false`.

## Delete a Script

```shell
curl -XDELETE "<%= curl_url %>/api/library/container-scripts/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a script 

### HTTP Request

`DELETE <%= api_url %>/api/library/container-scripts/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the script
