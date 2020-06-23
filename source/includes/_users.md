# Users

Users are meant to represent people or services that will be using the Morpheus appliance. Users belong to a Tenant (Account).

## Get All Users

```shell
curl "$MORPHEUS_API_URL/api/users"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "users": [
    {
      "id": 1,
      "accountId": 1,
      "username": "davydotcom",
      "displayName": "David Estes",
      "email": "destes@bcap.com",
      "firstName": "David",
      "lastName": "Estes",
      "dateCreated": "2015-11-10T18:58:55+0000",
      "lastUpdated": "2015-11-10T18:58:55+0000",
      "enabled": true,
      "accountExpired": false,
      "accountLocked": false,
      "passwordExpired": false,
      "role": {
        "id": 1,
        "authority": "System Admin",
        "description": "Super User"
      },
      "account": {
        "id": 1,
        "name": "Root Account"
      }
    }
  ],
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 1,
    "total": 1
  }
}
```

This endpoint retrieves all users in the current user's tenant account. Master tenant users with permission to manage subtenants can use `global=true` to find users accross all tenants.

### HTTP Request

`GET https://api.gomorpheus.com/api/users`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort order
phrase |  | Filter by matching firstName, lastName, username, or email
username |  | Filter by username
firstName |  | Filter by firstName
lastName |  | Filter by lastName
email |  | Filter by email
lastUpdated |  | Date filter, restricts query to only load users updated  timestamp is more recent or equal to the date specified
global | false | Global (All Tenants), load users from all tenants. The default is to only see your own tenant. This is only available to master tenant users with permission to manage tenants and users.

## Get All Users Across All Tenants

```shell
curl "$MORPHEUS_API_URL/api/users?global=true"
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like Get All Users for a Tenant

Using `global=true` is a way to list users across all tenants.  This is only available to master tenant users with permission to manage users and tenants.

### HTTP Request

`GET https://api.gomorpheus.com/api/users?global=true`

### Query Parameters

The same as [Get All Users](#Get-All-Users).

## Get a Specific User

```shell
curl "$MORPHEUS_API_URL/api/users/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "user": {
    "id": 1,
    "accountId": 1,
    "username": "davydotcom",
    "displayName": "David Estes",
    "email": "destes@bcap.com",
    "firstName": "David",
    "lastName": "Estes",
    "dateCreated": "2015-11-10T18:58:55+0000",
    "lastUpdated": "2015-11-10T18:58:55+0000",
    "enabled": true,
    "accountExpired": false,
    "accountLocked": false,
    "passwordExpired": false,
    "role": {
      "id": 1,
      "authority": "System Admin",
      "description": "Super User"
    },
    "account": {
      "id": 1,
      "name": "Root Account"
    },
    "access": {
      "features": [
        {
          "id": 11,
          "code": "admin-appliance",
          "name": "Admin: Appliance Settings",
          "access": "full"
        }
      ],
      "zones": [
        {
          "id": 1,
          "name": "zone1",
          "access": "full"
        }
      ],
      "sites": [
        {
          "id": 1,
          "name": "AWS",
          "access": "full"
        }
      ],
      "instanceTypes": [
        {
          "id": 1,
          "code": "activemq",
          "name": "ActiveMQ",
          "access": "full"
        }
      ],
      "appTemplates": [
        {
          "id": 1,
          "name": "Blank Apache",
          "access": "full"
        }
      ]
    }
  }
}
```

This endpoint will retrieve a specific user by id if the user has permission to access the user.

### HTTP Request

`GET https://api.gomorpheus.com/api/users/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the User

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
includeAccess |  | Include access the user payload


## Create a User

```shell
curl -XPOST "$MORPHEUS_API_URL/api/users" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"user":{
    "username": "testuser",
    "email": "testuser@api.gomorpheus.com",
    "firstName": "Test",
    "lastName": "User",
    "password": "aStrongpassword123!",
    "role": {"id": 1}
  }}'
```

> The above command returns JSON structured like getting a single user

### HTTP Request

`POST https://api.gomorpheus.com/api/users`

### URL Parameters

Parameter | Description
--------- | -----------
accountId | The ID of the User

### JSON User Parameters

Parameter | Default | Description
--------- | ------- | -----------
username  |  | A unique username
email     |  | The user's email
firstName |  | The user's first name (optional)
lastName  |  | The user's last name (optional)
password  |  | The password to apply to the user
role      |  | A nested id of the role to assign to the user

This creates a user in your own tenant.

## Create a User For a Tenant

```shell
curl -XPOST "$MORPHEUS_API_URL/api/accounts/2/users" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"user":{
    "username": "testuser",
    "email": "testuser@api.gomorpheus.com",
    "firstName": "Test",
    "lastName": "User",
    "password": "aStrongpassword123!",
    "role": {"id": 1}
  }}'
```

> The above command returns JSON structured like getting a single user

### HTTP Request

`POST https://api.gomorpheus.com/api/accounts/:accountId/users`

### URL Parameters

Parameter | Description
--------- | -----------
accountId | The ID of the Tenant

### JSON User Parameters

The same as [Create a User](#create-a-user).

This creates a user in a specific tenant. This is only available to master tenant users with permission to manage users and tenants.

## Updating a User

```shell
curl -XPUT "$MORPHEUS_API_URL/api/users/2" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"user":{
    "username": "testUser",
    "firstName": "Jane",
    "lastName": "Doe",
    "password": "abc123",
    "role": {"id": 1}
  }}'
```

> The above command returns JSON structured like getting a single user

Update a user.

### HTTP Request

`PUT https://api.gomorpheus.com/api/users/:id`

### JSON User Parameters

Parameter | Default | Description
--------- | ------- | -----------
username  |  | A unique username
email     |  | The user's email
firstName |  | The user's first name (optional)
lastName  |  | The user's last name (optional)
password  |  | The password to apply to the user
role      |  | A nested id of the role to assign to the user


## Delete a User

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/users/99" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

Delete a user.  This will disassociate the user from any instances they have previously provisioned.

### HTTP Request

`DELETE https://api.gomorpheus.com/api/users/:id`


## Get a Specific User Permissions

```shell
curl "$MORPHEUS_API_URL/api/users/1/permissions" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:
>
```json
{
  "access": {
    "features": [
      {
        "id": 11,
        "code": "admin-appliance",
        "name": "Admin: Appliance Settings",
        "access": "full"
      },
      {
        "id": 13,
        "code": "admin-backupSettings",
        "name": "Admin: Backup Settings",
        "access": "none"
      }
    ],
    "zones": [
      {
        "id": 1,
        "name": "zone1",
        "access": "full"
      }
    ],
    "sites": [
      {
        "id": 2,
        "name": "aws",
        "access": "none"
      }
    ],
    "instanceTypes": [
      {
        "id": 1,
        "code": "activemq",
        "name": "ActiveMQ",
        "access": "full"
      }
    ],
    "appTemplates": [
      {
        "id": 1,
        "name": "Blank Apache",
        "access": "full"
      },
      {
        "id": 4,
        "name": "dand-azure-blueprint",
        "access": "none"
      }
    ]
  }
}
```

This will list all the permissions for a specific user.

### HTTP Request

`GET https://api.gomorpheus.com/api/users/:id/permissions`


