# Users

Managing users via the API is always scoped to a specific tenant. Most of the API's regarding user management require that the tenant Id of the user also be known

## Get All Users for a Tenant

```shell
curl "$MORPHEUS_API_URL/api/accounts/1/users"
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
      },
      "instanceLimits": null
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

This endpoint retrieves all tenants.

### HTTP Request

`GET https://api.gomorpheus.com/api/accounts/:accountId/users`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort order
phrase |  | Filter by matching firstName, lastName, username, or email
username |  | Filter by username
lastUpdated |  | Date filter, restricts query to only load users updated  timestamp is more recent or equal to the date specified


## Get a Specific User

```shell
curl "$MORPHEUS_API_URL/api/accounts/1/users/1" \
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
    "instanceLimits": null,
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

`GET https://api.gomorpheus.com/api/accounts/:accountId/users/:id`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
includeAccess |  | Include access the user payload


## Create a User

```shell
curl -XPOST "$MORPHEUS_API_URL/api/accounts/1/users" \
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

> The above command returns JSON structured like getting a single user:

### HTTP Request

`POST https://api.gomorpheus.com/api/accounts/:accountId/users`


### JSON User Parameters

Parameter | Default | Description
--------- | ------- | -----------
username  |  | A unique username
email     |  | The user's email
firstName |  | The user's first name (optional)
lastName  |  | The user's last name (optional)
password  |  | The password to apply to the user
role      |  | A nested id of the role to assign to the user
instanceLimits |  | Optional JSON Map of maxCpu, maxMemory (bytes) and maxStorage (bytes) restrictions (0 means unlimited). The parameters maxMemoryMiB, maxMemoryGiB, maxStorageMiB and maxStorageGiB can be used to pass values in larger units.


## Updating a User

```shell
curl -XPUT "$MORPHEUS_API_URL/api/accounts/1/users/2" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"user":{
    "username": "testUser",
    "firstName": "Jane",
    "lastName": "Doe",
    "password": "abc123",
    "role": {"id": 1},
    "instanceLimits": {
      "maxCpu": 0,
      "maxMemory": 0,
      "maxStorage": 0
    }
  }}'
```

> The above command returns JSON structured like getting a single user:

### HTTP Request

`PUT https://api.gomorpheus.com/api/accounts/:accountId/users/:id`

### JSON User Parameters

Parameter | Default | Description
--------- | ------- | -----------
username  |  | A unique username
email     |  | The user's email
firstName |  | The user's first name (optional)
lastName  |  | The user's last name (optional)
password  |  | The password to apply to the user
role      |  | A nested id of the role to assign to the user
instanceLimits |  | Optional JSON Map of maxCpu, maxMemory (bytes) and maxStorage (bytes) restrictions (0 means unlimited). The parameters maxMemoryMiB, maxMemoryGiB, maxStorageMiB and maxStorageGiB can be used to pass values in larger units.

## Delete a User

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/accounts/1/users/2" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

This will disassociate the user from any instances they have previously provisioned.

### HTTP Request

`DELETE https://api.gomorpheus.com/api/accounts/:accountId/users/:id`


## Get a Specific User Permissions

```shell
curl "$MORPHEUS_API_URL/api/accounts/1/users/1/permissions" \
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

`GET https://api.gomorpheus.com/api/accounts/:accountId/users/:id/permissions