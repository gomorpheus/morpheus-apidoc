# Users

Managing users via the API is always scoped to a specific account. Most of the API's regarding user management require that the account Id of the user also be known

## Get All Users for an Account

```shell
curl "https://api.gomorpheus.com/api/accounts/1/users"
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structured like this:

```json
{
  "userCount": 1,
  "users": [
    {
      "account": {
        "id": 1
      },
      "accountExpired": false,
      "accountLocked": false,
      "dateCreated": "2015-11-10T18:58:55Z",
      "displayName": "David Estes",
      "email": "davydotcom@gmail.com",
      "enabled": true,
      "firstName": "David",
      "id": 1,
      "instanceLimits": null,
      "lastName": "Estes",
      "lastUpdated": "2015-11-10T18:58:55Z",
      "passwordExpired": false,
      "username": "davydotcom"
    }
  ]
}
```

This endpoint retrieves all accounts.

### HTTP Request

`GET https://api.gomorpheus.com/api/accounts/:accountId/users`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
username | null | Filter by username
lastUpdated | null | Date filter, restricts query to only load accounts updated  timestamp is more recent or equal to the date specified

<aside class="success">
Remember — a happy kitten is an authenticated kitten!
</aside>

## Get a Specific User

```shell
curl "https://api.gomorpheus.com/api/accounts/1/users/1" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structured like this:

```json
{
  "user": {
    "account": {
      "id": 1
    },
    "accountExpired": false,
    "accountLocked": false,
    "dateCreated": "2015-11-10T18:58:55Z",
    "displayName": "David Estes",
    "email": "davydotcom@gmail.com",
    "enabled": true,
    "firstName": "David",
    "id": 1,
    "instanceLimits": null,
    "lastName": "Estes",
    "lastUpdated": "2015-11-10T18:58:55Z",
    "passwordExpired": false,
    "username": "davydotcom"
  }
}
```

This endpoint will retrieve a specific user by id if the user has permission to access the account.

### HTTP Request

`GET https://api.gomorpheus.com/api/accounts/:accountId/users/:id`

## Create a User

```shell
curl -XPOST "https://api.gomorpheus.com/api/accounts/1/users" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '{"user":{
    "username": "testUser",
    "firstName": "Jane",
    "lastName": "Doe",
    "password": "abc123",
    "role": {"id": 1},
    "instanceLimits": {
      "maxMemory": 0,
      "maxStorage": 0
    }
  }}'
```

> The above command returns JSON structured like getting a single user: 

### HTTP Request

`POST https://api.gomorpheus.com/api/accounts/:accountId/users`

### JSON Check Parameters

Parameter | Default | Description
--------- | ------- | -----------
username  | null | A unique username for the account
firstName | null | The users first name (optional)
lastName  | null | The users last name (optional)
password  | null | The password to apply to the user
role      | null | A nested id of the role to assign to the user 
instanceLimits | null | Optional JSON Map of maxMemory and maxStorage restrictions (0 means unlimited)


## Updating a User

```shell
curl -XPUT "https://api.gomorpheus.com/api/accounts/1/users/2" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '{"user":{
    "username": "testUser",
    "firstName": "Jane",
    "lastName": "Doe",
    "password": "abc123",
    "role": {"id": 1},
    "instanceLimits": {
      "maxMemory": 0,
      "maxStorage": 0
    }
  }}'
```

> The above command returns JSON structured like getting a single account: 

### HTTP Request

`PUT https://api.gomorpheus.com/api/accounts/:accountId/users/:id`

### JSON Check Parameters

Parameter | Default | Description
--------- | ------- | -----------
username  | null | A unique username for the account
firstName | null | The users first name (optional)
lastName  | null | The users last name (optional)
password  | null | The password to apply to the user
role      | null | A nested id of the role to assign to the user 
instanceLimits | null | Optional JSON Map of maxMemory and maxStorage restrictions (0 means unlimited)

## Delete a User

```shell
curl -XDELETE "https://api.gomorpheus.com/api/accounts/1/users/2" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

This will disassociate the user from any instances they have previously provisioned.
