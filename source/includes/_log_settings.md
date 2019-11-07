# Log Settings

Provides API interfaces for managing log settings within Morpheus

<aside class="info">
This endpoint is available in Morpheus API version **4.2.x**
</aside>


## Get Log Settings

```shell
curl "$MORPHEUS_API_URL/api/log-settings" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "logSettings": {
    "enabled": true,
    "retentionDays": "1",
    "syslogRules": [
      {
        "id": 1,
        "name": "local",
        "rule": "*.* @@localhost:1234"
      }
    ],
    "integrations": [
      {
        "name": "splunk",
        "enabled": true,
        "host": "foo.com",
        "port": "80"
      },
      {
        "name": "logrhythm",
        "enabled": false
      }
    ]
  }
}
```

This endpoint retrieves log settings.

### HTTP Request

`GET https://api.gomorpheus.com/api/log-settings`


## Update Log Settings

```shell
curl -XPUT "$MORPHEUS_API_URL/api/log-settings" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"logSettings": {
        "enabled": true,
        "retentionDays": 7,
        "syslogRules": [
          {
            "name": "local",
            "rule": "*.* @@localhost:4567"
          }
        ],
        "integrations": [
          {
            "name": "splunk",
            "enabled": true,
            "host": "foo.com",
            "port": 8080
          }
        ]
      }}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/log-settings`

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
enabled | N | Use this to enable / disable logs
retentionDays | N | Availability time frame in days
syslogRules | N | Key for syslog rules list, see [Syslog Rules](#syslog-rules) 
integrations | N | Key for integrations rules list, see [Integrations](#integrations) 

#### Syslog Rules

The `syslogRules` parameter is a list used for adding syslog forwarding rules to log settings.

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Syslog name 
rule | Y | Syslog rule, example: `*.* @@server:port`

#### Integrations

The `integrations` parameter is a list used for enabling / disabling integrations to log settings.

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Integration name
enabled | N | Use this to enable / disable the integration. Host and port required when enabling.
host | - | Host of the integration, required when enabled is true  
port | - | Port of the integration, required when enabled is true


## Add Syslog Rule

```shell
curl -XPOST "$MORPHEUS_API_URL/api/log-settings/syslog-rules" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"syslogRule": {"name": "foo", "rule": "*.* @@bar.com:8080"}}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

<aside class="info">
This command will update existing syslog rule by specified name if already exists
</aside>

### HTTP Request

`POST https://api.gomorpheus.com/api/log-settings/syslog-rules`

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
syslogRule.name | Y | Syslog name 
syslogRule.rule | Y | Syslog rule, example: `*.* @@server:port`


## Delete Syslog Rules

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/log-settings/syslog-rules/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete the syslog rule matching the specified name.

### HTTP Request

`DELETE https://api.gomorpheus.com/api/log-settings/syslog-rules/:id`

### URL Parameters

Parameter | Description
--------- | -----------
:id | ID of the syslog rule 