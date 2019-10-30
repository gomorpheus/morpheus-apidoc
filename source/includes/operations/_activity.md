# Activity

This endpoint provides data about activity with the morpheus appliance. User activity and other morpheus events can be seen here.

The most recent activity is returned by default.

## Get All Activity

```shell
curl "$MORPHEUS_API_URL/api/activity" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "activity": [
    {
      "date": "2019-10-23T04:00:00Z"
    },
    {
      "success": false,
      "deleted": true,
      "name": "test check",
      "siteId": null,
      "message": "Check has successfully been deleted by 'root.",
      "ts": "2019-10-23T19:31:54Z",
      "activityType": "Alert",
      "accountId": 1,
      "userId": 1,
      "userName": "root",
      "objectId": 239,
      "objectType": "MonitorCheck",
      "_id": "ed970f86-c2bd-4ea2-8c3e-37494c8d8c67",
      "timestamp": "2019-10-23T19:31:54Z"
    },
    {
      "date": "2019-10-22T04:00:00Z"
    },
    {
      "success": false,
      "name": "dev-appliance",
      "message": "Check has successfully been updated.",
      "ts": "2019-10-22T07:55:49Z",
      "activityType": "Monitoring",
      "accountId": 1,
      "userId": 1,
      "userName": "root",
      "objectId": 238,
      "objectType": "MonitorCheck",
      "_id": "247f122a-2dd6-4d92-a945-9e1fc35d8e51",
      "timestamp": "2019-10-22T07:55:49Z"
    },
    {
      "date": "2019-10-21T04:00:00Z"
    },
    {
      "success": false,
      "name": "dev-appliance",
      "message": "Check successfully been created.",
      "ts": "2019-10-22T00:06:20Z",
      "activityType": "Monitoring",
      "accountId": 1,
      "userId": 1,
      "userName": "root",
      "objectId": 238,
      "objectType": "MonitorCheck",
      "_id": "0276e1fc-214d-4cb3-bcf4-9ebda0b26542",
      "timestamp": "2019-10-22T00:06:20Z"
    },
    {
      "date": "2019-10-08T04:00:00Z"
    },
    {
      "success": true,
      "name": "jimbo",
      "message": "User 'jimbo' updated. Password changed.",
      "ts": "2019-10-08T21:17:52Z",
      "activityType": "Admin",
      "accountId": 1,
      "userId": 1,
      "userName": "root",
      "objectId": 96,
      "objectType": "User",
      "_id": "26976fe0-a722-4d20-9849-9405a95d0db9",
      "timestamp": "2019-10-08T21:17:52Z"
    }
  ]
}
```

### HTTP Request

`GET https://api.gomorpheus.com/api/activity`

### HTTP Headers

Header | Description
--------- | -----------
Authorization     | A valid access token

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
order | asc | Sort direction, use 'desc' to reverse sort
name |  | Filter by name
phrase |  | Filter by wildcard search of name and description
createdBy |  | Filter by Created By (User) ID. Accepts multiple values.


### Response

Name | Description
--------- | -----------
activity | Array of [Activity Objects](#activity-object).

#### Activity Object

Name | Description
--------- | -----------
name | A brief name for the activity.
message | A description of the activity.
userName | Username of the author.
ts | Timestamp of when the activity occurred.
objectId | Object ID
objectType | Object Type


