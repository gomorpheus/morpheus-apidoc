# Backup Settings

Provides API interfaces for managing backup settings within Morpheus

<aside class="info">
This endpoint is available in Morpheus API version **4.2.x**
</aside>


## Get Backup Settings

```shell
curl "$MORPHEUS_API_URL/api/backup-settings" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "backupSettings": {
    "enabled": true,
    "createBackups": true,
    "backupAppliance": true,
    "defaultStorageBucket": {
      "id": 42,
      "name": "backups"
    },
    "defaultSchedule": {
      "id": 1,
      "code": "dailyAtMidnight",
      "name": "Daily at Midnight"
    },
    "retentionCount": 12
  }
}
```

This endpoint retrieves backup settings.

### HTTP Request

`GET https://api.gomorpheus.com/api/backup-settings`


## Update Backup Settings

```shell
curl -XPUT "$MORPHEUS_API_URL/api/appliance-settings" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"backupSettings": {
         "enabled": false,
         "createBackups": false,
         "backupAppliance": true,
         "retentionCount": 7,
         "updateExisting": false,
         "defaultSchedule": {
           "id": 2
         },
         "defaultStorageBucket": {
           "id": 44,
         }
      }}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/backup-settings`

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
enabled | N | Use this to enable / disable backups
retentionCount | N | Maximum number of successful backups to retain
createBackups | N | Use this to enable / disable create backups
backupAppliance | N | When enabled, a Backup will be created to backup the Morpheus appliance database
updateExisting | N | Use this to update existing backups with new settings
defaultSchedule.id | N | ID of default backup schedule type
clearDefaultSchedule | N | Use this to clear existing default backup schedule
defaultStorageBucket.id | N | ID of default storage bucket
clearDefaultStorageBucket | N | Use this to clear default store bucket