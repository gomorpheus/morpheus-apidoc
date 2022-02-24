# Credentials

Provides API for managing credentials.

## Get All Credentials

```shell
curl "<%= curl_url %>/api/credentials"
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "credentials": [
    {
      "id": 6,
      "name": "Example Credentials",
      "type": {
        "id": 7,
        "code": "email-private-key",
        "name": "Email and Private Key"
      },
      "integration": null,
      "description": null,
      "username": "jd@<%= company_domain %>",
      "password": null,
      "authKey": {
        "id": 6,
        "name": "my key"
      },
      "authPath": null,
      "externalId": null,
      "refType": null,
      "refId": null,
      "category": null,
      "scope": "internal",
      "status": "ok",
      "statusMessage": null,
      "statusDate": null,
      "enabled": true,
      "account": {
        "id": 1,
        "name": "<%= company_name %>"
      },
      "user": {
        "id": 42,
        "username": "jd",
        "displayName": "James D"
      },
      "dateCreated": "2022-02-14T16:39:09Z",
      "lastUpdated": "2022-02-14T16:39:09Z"
    },
    {
      "id": 1,
      "name": "Example Access Key",
      "type": {
        "id": 4,
        "code": "access-key-secret",
        "name": "Access Key and Secret Key"
      },
      "integration": null,
      "description": "An example credential",
      "username": "72c54d9b-1c73-4c73-91b9-1fb895f5fe5a",
      "password": "************",
      "authKey": null,
      "authPath": null,
      "externalId": null,
      "refType": null,
      "refId": null,
      "category": null,
      "scope": "internal",
      "status": "ok",
      "statusMessage": null,
      "statusDate": null,
      "enabled": true,
      "account": {
        "id": 1,
        "name": "<%= company_name %>"
      },
      "user": {
        "id": 42,
        "username": "jd",
        "displayName": "James D"
      },
      "dateCreated": "2022-01-27T02:59:58Z",
      "lastUpdated": "2022-01-27T02:59:58Z"
    },
    {
      "id": 2,
      "name": "Dev Client",
      "type": {
        "id": 5,
        "code": "client-id-secret",
        "name": "Client ID and Secret"
      },
      "integration": null,
      "description": null,
      "username": "247686fa-15bc-4ff9-a101-66f16d14d89f",
      "password": "************",
      "authKey": null,
      "authPath": null,
      "externalId": null,
      "refType": null,
      "refId": null,
      "category": null,
      "scope": "internal",
      "status": "ok",
      "statusMessage": null,
      "statusDate": null,
      "enabled": true,
      "account": {
        "id": 1,
        "name": "<%= company_name %>"
      },
      "user": {
        "id": 42,
        "username": "jd",
        "displayName": "James D"
      },
      "dateCreated": "2022-01-27T03:00:30Z",
      "lastUpdated": "2022-01-27T03:00:30Z"
    },
    {
      "id": 3,
      "name": "admin",
      "type": {
        "id": 1,
        "code": "username-password",
        "name": "Username and Password"
      },
      "integration": null,
      "description": null,
      "username": "admin",
      "password": "************",
      "authKey": null,
      "authPath": null,
      "externalId": null,
      "refType": null,
      "refId": null,
      "category": null,
      "scope": "internal",
      "status": "ok",
      "statusMessage": null,
      "statusDate": null,
      "enabled": true,
      "account": {
        "id": 1,
        "name": "<%= company_name %>"
      },
      "user": {
        "id": 42,
        "username": "jd",
        "displayName": "James D"
      },
      "dateCreated": "2022-01-27T03:00:53Z",
      "lastUpdated": "2022-01-27T03:00:53Z"
    }
  ],
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 4,
    "total": 4
  }
}
```

This endpoint retrieves all credentials associated with the account.

### HTTP Request

`GET <%= api_url %>/api/credentials`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | If specified will return a partial match on name
name |  | Name filter, restricts query to only load records matching the specified name
type |  | Type filter, restricts query to only load records matching the specified type code or name

## Get a Specific Credential


```shell
curl "<%= curl_url %>/api/credentials/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "success": null,
  "credential": {
    "id": 3,
    "name": "admin",
    "type": {
      "id": 1,
      "code": "username-password",
      "name": "Username and Password"
    },
    "integration": null,
    "description": null,
    "username": "admin",
    "password": "************",
    "authKey": null,
    "authPath": null,
    "externalId": null,
    "refType": null,
    "refId": null,
    "category": null,
    "scope": "internal",
    "status": "ok",
    "statusMessage": null,
    "statusDate": null,
    "enabled": true,
    "account": {
      "id": 1,
      "name": "<%= company_name %>"
    },
    "user": {
      "id": 1,
      "username": "jd",
      "displayName": "James D"
    },
    "dateCreated": "2022-01-27T03:00:53Z",
    "lastUpdated": "2022-01-27T03:00:53Z"
  }
}
```

This endpoint retrieves a specific credential.


### HTTP Request

`GET <%= api_url %>/api/credentials/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the credential to retrieve

## Create a Credential

```shell
curl -XPOST "<%= curl_url %>/api/credentials" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "credential": {
    "type": "access-key-secret",
    "name": "Example Credentials",
    "description": "An example of credentials",
    "username": "72c54d9b-1c73-4c73-91b9-1fb895f5fe5a",
    "password": "2b3450f3-b563-4a5f-ba96-91af0212fd69"
  }
}'
```

> The above command returns JSON structured like getting a single credential: 

### HTTP Request

`POST <%= api_url %>/api/credentials`

### Credential Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
type      | Y |  | [Credential Type](#credential-types) Code
name      | Y |  | Name
description | N |  | Description
enabled   | N | true | Enabled
integration.id   | N |  | Credential Store. ID of a Credential [Integration](#integrations). This can be set to store the credential in an external store. The default is `Internal`.

This endpoint allows creating a credential.  These are the common parameters for all types of credentials.  Configuration options vary by [credential type](#credential-types).

## Create an Access and Secret Key Credential

```shell
curl -XPOST "<%= curl_url %>/api/credentials" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "credential": {
    "type": "access-key-secret",
    "name": "Example Credentials",
    "username": "72c54d9b-1c73-4c73-91b9-1fb895f5fe5a",
    "password": "2b3450f3-b563-4a5f-ba96-91af0212fd69"
  }
}'
```

> The above command returns JSON structured like getting a single credential: 

### HTTP Request

`POST <%= api_url %>/api/credentials`

### Access Key and Secret Key Credential Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
username      | Y |  | Access Key
password      | Y |  | Secret Key

## Create a Client ID and Secret Credential

```shell
curl -XPOST "<%= curl_url %>/api/credentials" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "credential": {
    "type": "client-id-secret",
    "name": "Example Credentials",
    "username": "your_client",
    "password": "your_client_secret"
  }
}'
```

> The above command returns JSON structured like getting a single credential: 

### HTTP Request

`POST <%= api_url %>/api/credentials`

### Client ID and Secret Credential Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
username      | Y |  | Client ID
password      | Y |  | Client Secret

## Create an Email and Private Key Credential

```shell
curl -XPOST "<%= curl_url %>/api/credentials" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "credential": {
    "type": "email-private-key",
    "name": "Example Email Credentials",
    "username": "jd@<%= company_domain %>",
    "authKey": {
      "id": 9
    }
  }
}'
```

> The above command returns JSON structured like getting a single credential: 

### HTTP Request

`POST <%= api_url %>/api/credentials`

### Email and Private Key Credential Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
username      | Y |  | Email
authKey.id      | Y |  | Private Key. ID of a [Key Pair](#key-pairs).

## Create a Tenant, Username and Keypair Credential

```shell
curl -XPOST "<%= curl_url %>/api/credentials" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "credential": {
    "type": "tenant-username-keypair",
    "name": "Example Tenant Credentials",
    "authPath": "your_tenant",
    "username": "your_user",
    "authKey": {
      "id": 6
    }
  }
}'
```

> The above command returns JSON structured like getting a single credential: 

### HTTP Request

`POST <%= api_url %>/api/credentials`

### Tenant, Username and Keypair Credential Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
authPath      | Y |  | Tenant
username      | Y |  | Username
authKey.id      | Y |  | Private Key. ID of a [Key Pair](#key-pairs).

## Create a Username and API Key Credential

```shell
curl -XPOST "<%= curl_url %>/api/credentials" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "credential": {
    "type": "username-api-key",
    "name": "Example Credentials",
    "username": "your_user",
    "password": "your_api_key"
  }
}'
```

> The above command returns JSON structured like getting a single credential: 

### HTTP Request

`POST <%= api_url %>/api/credentials`

### Username and API Key Credential Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
username      | Y |  | Username
password      | Y |  | API Key

## Create a Username and Keypair  Credential

```shell
curl -XPOST "<%= curl_url %>/api/credentials" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "credential": {
    "type": "username-keypair",
    "name": "Example Credentials",
    "username": "your_user",
    "authKey": {
      "id": 6
    }
  }
}'
```

> The above command returns JSON structured like getting a single credential: 

### HTTP Request

`POST <%= api_url %>/api/credentials`

### Username and Keypair Credential Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
username      | Y |  | Username
authKey.id      | Y |  | Private Key. ID of a [Key Pair](#key-pairs).

## Create a Username and Password Credential

```shell
curl -XPOST "<%= curl_url %>/api/credentials" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "credential": {
    "type": "username-password",
    "name": "Example Credentials",
    "username": "your_user",
    "password": "your_password"
  }
}'
```

> The above command returns JSON structured like getting a single credential: 

### HTTP Request

`POST <%= api_url %>/api/credentials`

### Username and Password Credential Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
username      | Y |  | Username
password      | Y |  | Password

## Create a Username, Password and Keypair Credential

```shell
curl -XPOST "<%= curl_url %>/api/credentials" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "credential": {
    "type": "username-password-keypair",
    "name": "Example Credentials",
    "username": "your_user",
    "password": "your_password",
    "authKey": {
      "id": 6
    }
  }
}'
```

> The above command returns JSON structured like getting a single credential: 

### HTTP Request

`POST <%= api_url %>/api/credentials`

### Username, Password and Keypair Credential Parameters

Parameter | Required | Default | Description
--------- | -------- | ------- | -----------
username      | Y |  | Username
password      | Y |  | Password
authKey.id      | Y |  | Private Key. ID of a [Key Pair](#key-pairs).


## Update a Credential

```shell
curl -XPUT "<%= curl_url %>/api/credentials/:id" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "credential": {
    "username": "bec671ae-7623-4e88-b8df-71f75bb4af97",
    "password": "edfe9ee4-613d-47ce-b8e0-ffcf116cfc51"
  }
}'
```

> The above command returns JSON structured like getting a single credential: 

### HTTP Request

`PUT <%= api_url %>/api/credentials/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the credential

### Update Credential Parameters

The parameters for update are the same as [Create](#create-a-credential).

## Delete a Credential

```shell
curl -XDELETE "<%= curl_url %>/api/credentials/:id" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

Will delete a credential from the system and make it no longer usable. This action will fail if the credential is still in use.

### HTTP Request

`DELETE <%= api_url %>/api/credentials/:id`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the credential

