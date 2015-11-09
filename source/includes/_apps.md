# Apps

Apps are groupings of intances that are linked together to form a full application stack. They can be created with existing templates or new templates, as well as from existing instances.

## Get All Apps

```shell
curl "https://api.gomorpheus.com/api/apps"
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structured like this:

```json
{
  "apps": [
    {
      "id": 4,
      "accountId": 1,
      "name": "My Test App",
      "description": "Sample Description"
      "instances": [],
      "config": null,
      "dateCreated": "2015-06-09T20:59:17Z",
      "lastUpdated": "2015-06-09T21:00:19Z"
    }
  ],
  "appCount": 1
}
```

This endpoint retrieves all apps and the correlated instances. Server data is encrypted in the database.

### HTTP Request

`GET https://api.gomorpheus.com/api/apps`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
name | null | Filter by name
phase | null | Filter by wildcard search of name and description
lastUpdated | null | Date filter, restricts query to only load instances updated  timestamp is more recent or equal to the date specified

## Get a Specific App


```shell
curl "https://api.gomorpheus.com/api/apps/1" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structured like this:

```json
{
  "app": {
    "id": 4,
    "accountId": 1,
    "name": "My Test App",
    "description": "Sample Description"
    "instances": [],
    "config": null,
    "dateCreated": "2015-06-09T20:59:17Z",
    "lastUpdated": "2015-06-09T21:00:19Z"
  }
}
```