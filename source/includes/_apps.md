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
lastUpdated | null | Date filter, restricts query to only load apps updated  timestamp is more recent or equal to the date specified

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

## Get Security Groups

```shell
curl -XGET "https://api.gomorpheus.com/api/apps/1/security-groups" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structure like this:

```json
{
  "success": true,
  "firewallEnabled": true,
  "securityGroups": [
    {
      "id": 19,
      "accountId": 1,
      "name": "All Tomcat Access",
      "description": "Allow everyone to access Tomcat"
    }
  ]
}
```

This returns a list of all of the security groups applied to an app and whether the firewall is enabled.

### HTTP Request

`GET https://api.gomorpheus.com/api/apps/:id/security-groups`


## Set Security Groups

```shell
curl -XPOST "https://api.gomorpheus.com/api/apps/1/security-groups" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '{ "securityGroupIds": [19, 2] }'
```

> The above command returns JSON structure similar to the 'get' of security groups.

### HTTP Request

`PUT https://api.gomorpheus.com/api/apps/:id/security-groups`

### JSON Parameters

Parameter   | Default | Description
---------   | ------- | -----------
securityGroupIds | null | List of all security groups ids which should be applied.  If no security groups should apply, pass '[]'

## Disable the firewall

```shell
curl -XPUT "https://api.gomorpheus.com/api/apps/1/security-groups/disable" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will disable the firewall.  Any configured security groups will not be applied.

### HTTP Request

`PUT https://api.gomorpheus.com/api/apps/:id/security-groups/disable`

## Enable the firewall

```shell
curl -XPUT "https://api.gomorpheus.com/api/apps/1/security-groups/enable" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

This will enable the firewall.  Any configured security groups will be applied.

### HTTP Request

`PUT https://api.gomorpheus.com/api/instances/:id/security-groups/enable`