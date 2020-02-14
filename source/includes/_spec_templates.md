# Spec Templates

Provides API interfaces for managing spec templates within Morpheus.

<!-- A Spec Template may also be referred to as an *Resource Spec* or *resourceSpec*. -->

## Get All Spec Templates

```shell
curl "$MORPHEUS_API_URL/api/library/spec-templates" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "specTemplates": [
    {
      "id": 1,
      "account": {
        "id": 1,
        "name": "root"
      },
      "name": "cftest",
      "code": null,
      "type": {
        "id": 5,
        "name": "CloudFormation Template",
        "code": "cloudFormation"
      },
      "externalId": null,
      "externalType": null,
      "deploymentId": null,
      "status": null,
      "file": {
        "id": 11,
        "sourceType": "local",
        "contentRef": null,
        "contentPath": null,
        "repository": null,
        "content": "#my config"
      },
      "config": {
        "cloudformation": {
          "IAM": false,
          "CAPABILITY_NAMED_IAM": false,
          "CAPABILITY_AUTO_EXPAND": false
        }
      },
      "createdBy": "admin",
      "updatedBy": null,
      "dateCreated": "2020-01-11T04:37:12+0000",
      "lastUpdated": "2020-01-11T04:37:12+0000"
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

This endpoint retrieves all spec templates.

### HTTP Request

`GET https://api.gomorpheus.com/api/library/spec-templates`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Name, description and provision type name, restricts query to only load spec templates which contain the phrase specified
name |  | Name filter, restricts query to only load template matching name specified


## Get a Specific Spec Template

```shell
curl "$MORPHEUS_API_URL/api/library/spec-templates/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "specTemplate": {
    "id": 13,
    "account": {
      "id": 1,
      "name": "root"
    },
    "name": "cache-cluster",
    "code": null,
    "type": {
      "id": 5,
      "name": "CloudFormation Template",
      "code": "cloudFormation"
    },
    "externalId": null,
    "externalType": null,
    "deploymentId": null,
    "status": null,
    "file": {
      "id": 13,
      "sourceType": "local",
      "contentRef": null,
      "contentPath": null,
      "repository": null,
      "content": "{\n  \"AWSTemplateFormatVersion\" : \"2010-09-09\",\n\n  \"Description\" : \"AWS CloudFormation Sample Template ElastiCache: Sample template showing how to create an Amazon ElastiCache Cache Cluster with Auto Discovery. **WARNING** This template creates an Amazon ElastiCache Cluster. You will be billed for the AWS resources used if you create a stack from this template.\",\n\n  \"Parameters\" : {\n\n    \"CacheNodeType\" : {\n      \"Description\" : \"The compute and memory capacity of the nodes in the Cache Cluster\",\n      \"Type\" : \"String\",\n      \"Default\" : \"cache.t2.small\",\n      \"AllowedValues\" : [ \"cache.m1.small\", \"cache.m1.large\", \"cache.m1.xlarge\", \"cache.m2.xlarge\", \"cache.m2.2xlarge\", \"cache.m2.4xlarge\", \"cache.c1.xlarge\", \"cache.t2.micro\", \"cache.t2.small\", \"cache.t2.medium\", \"cache.m3.medium\", \"cache.m3.large\", \"cache.m3.xlarge\", \"cache.m3.2xlarge\", \"cache.r3.large\", \"cache.r3.xlarge\", \"cache.r3.2xlarge\", \"cache.r3.4xlarge\", \"cache.r3.8xlarge\" ]\n,\n      \"ConstraintDescription\" : \"must select a valid Cache Node type.\"\n    },\n\n    \"NumberOfCacheNodes\" : {\n      \"Default\": \"1\",\n      \"Description\" : \"The number of Cache Nodes the Cache Cluster should have\",\n      \"Type\": \"Number\",\n      \"MinValue\": \"1\",\n      \"MaxValue\": \"10\",\n      \"ConstraintDescription\" : \"must be between 5 and 10.\"\n    }\n  },\n\n  \"Resources\" : {\n\n    \"CacheCluster\" : {\n      \"Type\": \"AWS::ElastiCache::CacheCluster\",\n      \"Properties\": {\n        \"CacheNodeType\"           : { \"Ref\" : \"CacheNodeType\" },\n        \"CacheSecurityGroupNames\" : [ { \"Ref\" : \"CacheSecurityGroup\" } ],\n        \"Engine\"                  : \"memcached\",\n        \"NumCacheNodes\"           : { \"Ref\" : \"NumberOfCacheNodes\" }\n      }\n    },\n\n    \"CacheSecurityGroup\": {\n      \"Type\": \"AWS::ElastiCache::SecurityGroup\",\n      \"Properties\": {\n        \"Description\"  : \"Lock cache down to Web Server access only\"\n      }\n    }\n  }\n}\n"
    },
    "config": {
    },
    "createdBy": "admin",
    "updatedBy": "admin",
    "dateCreated": "2020-01-11T15:47:18+0000",
    "lastUpdated": "2020-01-11T15:47:18+0000"
  }
}
```

This endpoint retrieves a specific spec template.

### HTTP Request

`GET https://api.gomorpheus.com/api/library/spec-templates/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the spec template


## Create a Spec Template

Use this command to create a spec template.

```shell
curl -XPOST "$MORPHEUS_API_URL/api/library/spec-templates" \
  -H "Authorization: Bearer $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
  "specTemplate": {
    "name": "cftest",
    "type": {
      "code": "cloudFormation"
    },
    "config": {
      "cloudformation": {
        "IAM": "on",
        "CAPABILITY_NAMED_IAM": "on",
        "CAPABILITY_AUTO_EXPAND": "off"
      }
    },
    "file": {
      "sourceType": "local",
      "content": "{\"test\":\"spec\"}"
    }
  }
}'
```

> The above command returns JSON Structured like this:

```json
{
  "id": 104,
  "success": true
}
```

### HTTP Request

`POST https://api.gomorpheus.com/api/library/spec-templates`

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Spec template name
type.code | Y | Spec Template Type. i.e. arm, cloudFormation, helm, kubernetes, oneview, terraform, ucs.
file | Y | File, object specifying file type and content, see [File Object](#file-object-parameter)

### File Object Parameter
sourceType | Y | File Source eg. `local`, `repo`, `url`. Default is `local`.
content | Y | File content, the template text. Only required when sourceType is `local`.
contentPath | Y | Content Path, the repo file location or url. Required when sourceType is `repo` or `url`.
contentRef | N | Content Ref, the branch/tag. Only used when sourceType is `repo`.

#### Cloud Formation Capability Parameters

The Cloud Formation type supports some additional configuration parameters:

Parameter | Required | Description
--------- | -------- | -----------
config.cloudformation.IAM | Y | CAPABILITY_IAM
config.cloudformation.CAPABILITY_NAMED_IAM | Y | CAPABILITY_NAMED_IAM
config.cloudformation.CAPABILITY_AUTO_EXPAND | Y | CAPABILITY_AUTO_EXPAND

## Update a Spec Template

Use this command to update an existing spec template.

```shell
curl -XPUT "$MORPHEUS_API_URL/api/library/spec-templates/:id" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
  -H "Content-Type: application/json" \
  -d '{"specTemplate": {
        "name": "cftest2"
      }}
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/library/spec-templates/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the spec template

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Spec template name
type.code | Y | Spec Template Type. i.e. arm, cloudFormation, helm, kubernetes, oneview, terraform, ucs.
file | Y | File, object specifying file type and content, see [File Object](#file-object-parameter)

## Delete a Spec Template

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/library/spec-templates/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a spec template 

### HTTP Request

`DELETE https://api.gomorpheus.com/api/library/spec-templates/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the spec template