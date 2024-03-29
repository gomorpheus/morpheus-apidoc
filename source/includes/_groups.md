# Groups

Groups are used to organize provisioned servers in your infrastructure. When a user on the system provisions an instance like MySQL, they can select which group to provision the instance into. This can be used to scope servers by environment or by region.

A Group may also be referred to as a *Site* or *site*.

## Get All Groups

```shell
curl "<%= curl_url %>/api/groups"
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "groups": [
    {
      "id": 1,
      "accountId": 1,
      "name": "Amazon East",
      "code": "amazon",
      "active": true,
      "location": null,
      "zones": [
        {
          "id": 1,
          "accountId": 1,
          "groupId": 1,
          "name": "VPC 1a",
          "description": "1a VPC Subnet",
          "location": null,
          "visibility": "private",
          "zoneTypeId": 1
        }
      ]
    }
  ]
}
```

This endpoint retrieves all groups and a list of zones associated with the group by id.

### HTTP Request

`GET <%= api_url %>/api/groups`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
lastUpdated |  | A date filter, restricts query to only load groups updated more recent or equal to the date specified
name |  | If specified will return an exact match group


## Get a Specific Group


```shell
curl "<%= curl_url %>/api/groups/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "group": {
    "id": 1,
    "accountId": 1,
    "name": "Vagrant",
    "code": null,
    "active": true,
    "location": null,
    "zones": [
      {
        "id": 1,
        "accountId": 1,
        "groupId": 1,
        "name": "Davids Laptop",
        "description": "My Laptop Vagrant",
        "location": null,
        "visibility": "private",
        "zoneTypeId": 1
      }
    ]
  }
}
```

This endpoint retrieves a specific group.


### HTTP Request

`GET <%= api_url %>/api/groups/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the group to retrieve

## Create a Group

```shell
curl -XPOST "<%= curl_url %>/api/groups" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"group":{
    "name": "My Group",
    "description": "My description",
    "location": "US EAST"
  }}'
```

> The above command returns JSON structured like getting a single group:

### HTTP Request

`POST <%= api_url %>/api/groups`

### JSON Group Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | A unique name scoped to your account for the group
code      |  | Optional code for use with policies
location  |  | Optional location argument for your group

## Updating a Group

```shell
curl -XPUT "<%= curl_url %>/api/groups/1" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"group":{
    "name": "My Group",
    "location": "US EAST"
  }}'
```

> The above command returns JSON structured like getting a single group:

### HTTP Request

`PUT <%= api_url %>/api/groups/:id`

### JSON Group Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | A unique name scoped to your account for the group
code      |  | Optional code for use with policies
location  |  | Optional location for your group

## Updating Group Zones

```shell
curl -XPUT "<%= curl_url %>/api/groups/1/update-zones" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{"group":{
    "zones": [
      {"id": 1}, {"id": 2}, {"id": 5}
    ]
  }}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

This will update the zones that are assigned to the group.
Any zones that are not passed in the `zones` parameter will be removed from the group.

### HTTP Request

`PUT <%= api_url %>/api/groups/:id/update-zones`

### JSON Update Group Zones Parameters

Parameter | Default | Description
--------- | ------- | -----------
zones      |  | An array of all the zones assigned to this group.


## Delete a Group

```shell
curl -XDELETE "<%= curl_url %>/api/groups/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

If a group has zones or servers still tied to it, a delete action will fail

### HTTP Request

`DELETE <%= api_url %>/api/groups/:id`
