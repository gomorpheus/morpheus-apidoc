# Option Lists

Provides API interfaces for managing option lists within <%= application_name %>.

An Option List may also be referred to as an *Option Type List* or *optionTypeList*.

## Get All Option Lists

```shell
curl "<%= curl_url %>/api/library/option-type-lists" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "optionTypeLists": [
    {
      "id": 32,
      "name": "mylist",
      "description": "My List",
      "type": "manual",
      "sourceUrl": null,
      "sourceMethod": "GET",
      "apiType": null,
      "ignoreSSLErrors": false,
      "realTime": false,
      "visibility": "private",
      "config": {
      },
      "credential": {
        "type": "local"
      },
      "serviceUsername": null,
      "servicePassword": null,
      "initialDataset": "foo,Foo\nbar,Bar\nbaz,Baz\nhello,world",
      "translationScript": null,
      "requestScript": null,
      "account": {
        "id": 1,
        "name": "<%= company_domain %>"
      }
    },
    {
      "id": 56,
      "name": "group1 clouds",
      "description": null,
      "type": "rest",
      "sourceUrl": "http://10.0.2.2:8080/api/options/clouds?groupId=1",
      "sourceMethod": "GET",
      "apiType": null,
      "ignoreSSLErrors": false,
      "realTime": false,
      "visibility": "private",
      "config": {
        "sourceHeaders": [
          {
            "name": "Authorization",
            "value": "************",
            "masked": "on"
          }
        ]
      },
      "credential": {
        "type": "local"
      },
      "serviceUsername": null,
      "servicePassword": null,
      "initialDataset": null,
      "translationScript": "for(var x=0;x < data.data.length; x++) {\n    results.push(data.data[x]);\n}",
      "requestScript": null,
      "account": {
        "id": 1,
        "name": "<%= company_domain %>"
      }
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

This endpoint retrieves all option lists.

<aside class="info">
<b>Deprecation notice.</b> This endpoint no longer returns the option list items as <code>listItems</code>. A sepearate endpoint is available for this at </code>/api/library/option-type-lists/:id/items</code>.
</aside>

### HTTP Request

`GET <%= api_url %>/api/library/option-type-lists`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Name or description filter, restricts query to only load option lists which contain the phrase specified
name |  | Name filter, restricts query to only load option list of specified name


## Get a Specific Option List

```shell
curl "<%= curl_url %>/api/library/option-type-lists/1" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "optionTypeList": {
    "id": 1,
    "name": "my groups",
    "description": "A list of my groups",
    "type": "rest",
    "sourceUrl": "http://myapp/api/options/groups",
    "sourceMethod": "GET",
    "ignoreSSLErrors": false,
    "realTime": false,
    "visibility": "private",
    "config": {
      "sourceHeaders": [
        {
          "name": "Authorization",
          "value": "Bearer 8af52d52-c05d-1e3f-ae8b-542ecf47ae10",
          "masked": false
        },
        {
          "name": "Foobar",
          "value": "************",
          "masked": true
        }
      ]
    },
    "initialDataset": null,
    "translationScript": "for(var x=0;x < data['data'].length; x++) {\r\n    results.push(data.data[x]);\r\n}",
    "requestScript": null,
    "account": {
      "id": 1,
      "name": "<%= company_domain %>"
    }
  }
}
```

This endpoint retrieves a specific option list.

<aside class="info">
<b>Deprecation notice.</b> This endpoint no longer returns the option list items as <code>listItems</code>. A sepearate endpoint is available for this at </code>/api/library/option-type-lists/:id/items</code>.
</aside>

### HTTP Request

`GET <%= api_url %>/api/library/option-type-lists/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the option list

## List Items for a Specific Option List

```shell
curl "<%= curl_url %>/api/library/option-type-lists/1/items" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "listItems": [
    {
      "name": "foo",
      "value": "Foo"
    },
    {
      "name": "bar",
      "value": "Bar"
    },
    {
      "name": "baz",
      "value": "Baz"
    },
    {
      "name": "hello",
      "value": "world"
    }
  ]
}
```

This endpoint retrieves the items for a specific option list.

### HTTP Request

`GET <%= api_url %>/api/library/option-type-lists/:id/items`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the option list

## Create an Option List

Use this command to create an option list.

```shell
curl -XPOST "<%= curl_url %>/api/library/option-type-lists" \
  -H "Authorization: Bearer <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "optionTypeList": {
    "name": "resty",
    "description": "A resty list",
    "type": "rest",
    "sourceUrl": "<%= curl_url %>/api/options/mydata",
    "sourceMethod": "GET",
    "ignoreSSLErrors": true,
    "realTime": false,
    "visibility": "private",
    "initialDataset": null,
    "translationScript": null,
    "config": {
      "sourceHeaders": [
        {
          "name": "Authorization",
          "value": "Bearer foobar-key",
          "masked": true
        }
      ]
    }
  }
}'
```


> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`POST <%= api_url %>/api/library/option-type-lists`

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Name
description | N | Description
type | N | Option List Type eg. `rest` `api`, `ldap` or `manual`. Default is `rest`.
sourceUrl | N | Source URL, the http(s) URL to request data from. Required when type is rest.
visibility | N | Visibility. Default is `private`.
sourceMethod | N | Source Method, the HTTP method. Default is `GET`.
apiType | N | Api Type, The code of the api option list to use, eg. `clouds`, `environments`, `groups`, `instances`, `instance-wiki`, `networks`, `servicePlans`, `resourcePools`, `securityGroups`, `servers`, `server-wiki`. Required when type is `api`.
ignoreSSLErrors | N | Ignore SSL Errors. Default is `false`.
realTime | N | Real Time. Default is `false`.
credential | N | Map containing [Credential](#credentials) ID or the default `{"type": "local"}` which means use the values set in the local option list `serviceUsername` and `servicePassword` instead of associating a credential.
serviceUsername | N | Username for authenticating with Basic Auth when type is `rest` or `ldap` username.
servicePassword | N | Password for authenticating with Basic Auth when type is `rest` or `ldap` password.
initialDataset | N | Initial Dataset. Create an initial JSON or CSV dataset to be used as the collection for this option list. It should be a list containing objects with properties 'name', and 'value'. Required when type is `manual`.
translationScript | N | Translation Script. Create a js script to translate the result data object into an Array containing objects with properties 'name' and 'value'. The input data is provided as data and the result should be put on the global variable results. 
requestScript | N | Request Script.  Create a js script to prepare the request. Return a data object as the body for a post, and return an array containing properties 'name' and 'value' for a get. The input data is provided as data and the result should be put on the global variable results.
config.sourceHeaders | N | Array of source headers to use when requesting data., see [Source Headers](#source-headers)


#### Source Headers
The `config.sourceHeaders` parameter is array of objects with following fields:

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Header name
value | N | Header value
masked | N | Can be used to enable / disable masking of value, default is off


## Update an Option List

Use this command to update an existing option list.

```shell
curl -XPUT "<%= curl_url %>/api/library/option-type-lists/:id" \
  -H "Authorization: Bearer <%= curl_token %>" \
  -H "Content-Type: application/json" \
  -d '{
  "optionTypeList": {
    "name": "resty things",
    "description": " resty list",
    "sourceUrl": "http://myapp/api/options/things",
    "sourceMethod": "GET",
    "type": "rest",
    "config": {
      "sourceHeaders": [
      ]
    },
    "credential": {
      "id": 42
    }
  }
}'
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`PUT <%= api_url %>/api/library/option-type-lists/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the option list

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Name
description | N | Description
type | N | Option List Type eg. `rest` `api` or `manual`. Default is `rest`.
sourceUrl | N | Source URL, the http(s) URL to request data from. Required when type is rest.
visibility | N | Visibility. Default is `private`.
sourceMethod | N | Source Method, the HTTP method. Default is `GET`.
apiType | N | Api Type, The code of the api list to use, eg. `clouds`, `groups`, etc. Required when type is `api`.
ignoreSSLErrors | N | Ignore SSL Errors. Default is `false`.
realTime | N | Real Time. Default is `false`.
credential | N | Map containing [Credential](#credentials) ID or the default `{"type": "local"}` which means use the values set in the local option list `serviceUsername` and `servicePassword` instead of associating a credential.
serviceUsername | N | Username for authenticating with Basic Auth when type is `rest` or `ldap` username.
servicePassword | N | Password for authenticating with Basic Auth when type is `rest` or `ldap` password.
initialDataset | N | Initial Dataset. Create an initial JSON or CSV dataset to be used as the collection for this option list. It should be a list containing objects with properties 'name', and 'value'.
translationScript | N | Translation Script. Create a js script to translate the result data object into an Array containing objects with properties 'name' and 'value'. The input data is provided as data and the result should be put on the global variable results. 
requestScript | N | Request Script.  Create a js script to prepare the request. Return a data object as the body for a post, and return an array containing properties 'name' and 'value' for a get. The input data is provided as data and the result should be put on the global variable results.
config.sourceHeaders | N | Array of source headers to use when requesting data., see [Source Headers](#source-headers)

## Delete an Option List

```shell
curl -XDELETE "<%= curl_url %>/api/library/option-type-lists/:id" \
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete an option list.

### HTTP Request

`DELETE <%= api_url %>/api/library/option-type-lists/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the option list