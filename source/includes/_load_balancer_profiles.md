## Load Balancer Profiles

Provides API for managing Load Balancer Profiles.

## Get All Load Balancer Profiles For Load Balancer

```shell
curl "<%= curl_url %>/api/load-balancers/:loadBalancerId/profiles"
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "loadBalancerProfiles": [
    {
      "id": 160,
      "loadBalancer": {
        "id": 80,
        "type": {
          "id": 19,
          "code": "nsx-t",
          "name": "NSX-T"
        },
        "name": "dand-nsxt",
        "ip": "10.32.23.7"
      },
      "name": "bob-test",
      "category": "loadBalancer.nsxt.profile.ssl.applicationProfile",
      "serviceType": "LBHttpProfile",
      "serviceTypeDisplay": "HTTP",
      "visibility": "public",
      "description": "",
      "internalId": "/infra/lb-app-profiles/bob-test",
      "externalId": "bob-test",
      "proxyType": null,
      "redirectRewrite": null,
      "persistenceType": null,
      "sslEnabled": null,
      "sslCert": null,
      "accountCertificate": null,
      "enabled": true,
      "redirectUrl": null,
      "insertXforwardedFor": false,
      "persistenceCookieName": null,
      "persistenceExpiresIn": null,
      "editable": true,
      "config": {
        "tags": [

        ],
        "httpsRedirect": null,
        "httpIdleTimeout": 16,
        "ntlmAuthentication": false,
        "requestHeaderSize": 1024,
        "responseHeaderSize": 4096,
        "responseTimeout": 60,
        "xForwardedFor": "INSERT",
        "profileType": "application-profile",
        "resource_type": "LBHttpProfile"
      },
      "createdBy": null,
      "dateCreated": "2021-10-19T17:39:31Z",
      "lastUpdated": "2021-10-19T17:49:32Z"
    },
    {
      "id": 171,
      "loadBalancer": {
        "id": 80,
        "type": {
          "id": 19,
          "code": "nsx-t",
          "name": "NSX-T"
        },
        "name": "dand-nsxt",
        "ip": "10.32.23.7"
      },
      "name": "dd-test-ssl-cipher",
      "category": "loadBalancer.nsxt.profile.ssl.clientSslProfile",
      "serviceType": "LBClientSslProfile",
      "serviceTypeDisplay": "Client SSL Profile",
      "visibility": "public",
      "description": "",
      "internalId": "/infra/lb-client-ssl-profiles/acb68f77-6b77-4e82-acf9-3cca7aa6b81c",
      "externalId": "acb68f77-6b77-4e82-acf9-3cca7aa6b81c",
      "proxyType": null,
      "redirectRewrite": null,
      "persistenceType": null,
      "sslEnabled": null,
      "sslCert": null,
      "accountCertificate": null,
      "enabled": true,
      "redirectUrl": null,
      "insertXforwardedFor": false,
      "persistenceCookieName": null,
      "persistenceExpiresIn": null,
      "editable": true,
      "config": {
        "tags": [

        ],
        "sslSuite": "CUSTOM",
        "supportedSslCiphers": [
          "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"
        ],
        "supportedSslProtocols": [
          "TLS_V1"
        ],
        "preferServerCipher": true,
        "sessionCache": true,
        "sessionCacheTimeout": 300,
        "profileType": "ssl-profile",
        "resource_type": "LBClientSslProfile"
      },
      "createdBy": null,
      "dateCreated": "2021-10-19T17:39:32Z",
      "lastUpdated": "2021-10-19T17:49:33Z"
    }
  ],
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 2,
    "total": 2
  }
}
```

This endpoint retrieves all load balancer profiles associated with a specified load balancer.

### HTTP Request

`GET <%= api_url %>/api/load-balancers/:loadBalancerId/profiles`

### URL Parameters

Parameter | Description
--------- | -----------
loadBalancerId | The ID of the Load Balancer

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
name |  | If specified will return an exact match on name
phrase |  | If specified will return a partial match on name or description

## Get a Specific Load Balancer Profile

```shell
curl "<%= curl_url %>/api/load-balancers/80/profiles/63" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "loadBalancerProfile": {
    "id": 160,
    "loadBalancer": {
      "id": 80,
      "type": {
        "id": 19,
        "code": "nsx-t",
        "name": "NSX-T"
      },
      "name": "dand-nsxt",
      "ip": "10.32.23.7"
    },
    "name": "bob-test",
    "category": "loadBalancer.nsxt.profile.ssl.applicationProfile",
    "serviceType": "LBHttpProfile",
    "serviceTypeDisplay": "HTTP",
    "visibility": "public",
    "description": "",
    "internalId": "/infra/lb-app-profiles/bob-test",
    "externalId": "bob-test",
    "proxyType": null,
    "redirectRewrite": null,
    "persistenceType": null,
    "sslEnabled": null,
    "sslCert": null,
    "accountCertificate": null,
    "enabled": true,
    "redirectUrl": null,
    "insertXforwardedFor": false,
    "persistenceCookieName": null,
    "persistenceExpiresIn": null,
    "editable": true,
    "config": {
      "tags": [

      ],
      "httpsRedirect": null,
      "httpIdleTimeout": 16,
      "ntlmAuthentication": false,
      "requestHeaderSize": 1024,
      "responseHeaderSize": 4096,
      "responseTimeout": 60,
      "xForwardedFor": "INSERT",
      "profileType": "application-profile",
      "resource_type": "LBHttpProfile"
    },
    "createdBy": null,
    "dateCreated": "2021-10-19T17:39:31Z",
    "lastUpdated": "2021-10-19T17:49:32Z"
  }
}
```

This endpoint retrieves a specific Load Balancer Profile.

### HTTP Request

`GET <%= api_url %>/api/load-balancers/:loadBalancerId/profiles/:id`

### URL Parameters

Parameter | Description
--------- | -----------
loadBalancerId | The ID of the Load Balancer
ID | The ID of the Load Balancer Profile to retrieve

## Create a Load Balancer Profile

```shell
curl -XPOST "<%= curl_url %>/api/load-balancers/:loadBalancerId/profiles" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "loadBalancerProfile": {
    "name": "test profile",
    "description": "a test profile",
    "serviceType": "LBHttpProfile",
    "config": {
      "profileType": "application-profile"
    }
  }
}'
```

> The above command returns JSON structured like getting a single Load Balancer Profile: 

Use this command to create a load balancer profile.

### HTTP Request

`POST <%= api_url %>/api/load-balancers/:loadBalancerId/profiles`

### URL Parameters

Parameter | Description
--------- | -----------
loadBalancerId | The ID of the Load Balancer

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Name
description      |  | Description
serviceType      |  | Service Type
config |  | Configuration object with parameters that vary by [type](#load-balancer-types).

This endpoint allows creating a Load Balancer Profile. Configuration options vary by [Load Balancer Type](#load-balancer-types).

## Update a Load Balancer Profile

```shell
curl -XPUT "<%= curl_url %>/api/load-balancers/:loadBalancerId/profiles/:id" \
  -H "Authorization: BEARER <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "loadBalancerProfile": {
    "description": "new description"
  }
}'
```

> The above command returns JSON structured like getting a single Load Balancer Profile: 

Use this command to update an existing load balancer profile.

### HTTP Request

`PUT <%= api_url %>/api/load-balancers/:loadBalancerId/profiles/:id`

### URL Parameters

Parameter | Description
--------- | -----------
loadBalancerId | The ID of the Load Balancer
ID | The ID of the Load Balancer Profile

### JSON Parameters

Parameter | Default | Description
--------- | ------- | -----------
name      |  | Name
description      |  | Description
config |  | Configuration object with parameters that vary by [type](#load-balancer-types).

This endpoint allows updating a Load Balancer Profile.  Configuration options vary by [Load Balancer Type](#load-balancer-types).

## Delete a Load Balancer Profile

```shell
curl -XDELETE "<%= curl_url %>/api/load-balancers/:loadBalancerId/profiles/:id" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

Will delete a Load Balancer Profile from the system and make it no longer usable.

### HTTP Request

`DELETE <%= api_url %>/api/load-balancers/:loadBalancerId/profiles/:id`

### URL Parameters

Parameter | Description
--------- | -----------
loadBalancerId | The ID of the Load Balancer
ID | The ID of the Load Balancer Profile

