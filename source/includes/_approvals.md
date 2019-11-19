# Approvals

Provides API interfaces for managing approvals within Morpheus

<aside class="info">
This endpoint is available in Morpheus API version **4.2.x**
</aside>


## Get All Approvals

```shell
curl "$MORPHEUS_API_URL/api/approvals" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "approvals": [
    {
      "id": 3,
      "name": "APPROVAL-0000003",
      "internalId": null,
      "externalId": null,
      "externalName": null,
      "requestType": "Instance Approval",
      "account": {
        "id": 1,
        "name": "Stubby Toes Inc."
      },
      "approver": {
        "id": 1,
        "name": "Stubby Toes Inc."
      },
      "accountIntegration": null,
      "status": "1 approved",
      "errorMessage": null,
      "dateCreated": "2019-11-07T02:35:15+0000",
      "lastUpdated": "2019-11-07T02:35:15+0000",
      "requestBy": "Stubby Toes"
    }
  ],
  "meta": {
    "size": 1,
    "total": 1,
    "max": 25,
    "offset": 0
  }
}    
```

This endpoint retrieves all approvals.

### HTTP Request

`GET https://api.gomorpheus.com/api/approvals`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Name, externalName and requestBy filter, restricts query to only load approvals which contain the phrase specified
name |  | Name filter, restricts query to only load approval matching name specified


## Get a Specific Approval

```shell
curl "$MORPHEUS_API_URL/api/approvals/3" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "approval": {
    "id": 3,
    "name": "APPROVAL-0000003",
    "internalId": null,
    "externalId": null,
    "externalName": null,
    "requestType": "Instance Approval",
    "account": {
      "id": 1,
      "name": "Stubby Toes Inc."
    },
    "approver": {
      "id": 1,
      "name": "Stubby Toes Inc."
    },
    "accountIntegration": null,
    "status": "1 cancelled",
    "errorMessage": null,
    "dateCreated": "2019-11-07T02:35:15+0000",
    "lastUpdated": "2019-11-07T02:35:15+0000",
    "requestBy": "Stubby Toes",
    "approvalItems": [
      {
        "id": 3,
        "name": null,
        "externalId": null,
        "externalName": null,
        "internalId": null,
        "approvedBy": "Stubby Toes",
        "deniedBy": "Stubby Toes",
        "status": "cancelled",
        "errorMessage": null,
        "dateCreated": "2019-11-07T02:35:15+0000",
        "lastUpdated": "2019-11-18T21:00:25+0000",
        "dateApproved": "2019-11-18T19:56:30+0000",
        "dateDenied": null,
        "approval": {
          "id": 3
        },
        "reference": {
          "id": 3,
          "type": "instance",
          "name": "dans-ubuntu-3",
          "displayName": "dans-ubuntu-3"
        }
      }
    ]
  }
}
```

This endpoint retrieves a specific approval.

### HTTP Request

`GET https://api.gomorpheus.com/api/approvals/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the approval


## Get a Specific Approval Item

```shell
curl "$MORPHEUS_API_URL/api/approval-items/3" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "approvalItem": {
    "id": 3,
    "name": null,
    "externalId": null,
    "externalName": null,
    "internalId": null,
    "approvedBy": "Stubby Toes",
    "deniedBy": "Stubby Toes",
    "status": "cancelled",
    "errorMessage": null,
    "dateCreated": "2019-11-07T02:35:15+0000",
    "lastUpdated": "2019-11-18T21:00:25+0000",
    "dateApproved": "2019-11-18T19:56:30+0000",
    "dateDenied": null,
    "approval": {
      "id": 3
    },
    "reference": {
      "id": 3,
      "type": "instance",
      "name": "dans-ubuntu-3",
      "displayName": "dans-ubuntu-3"
    }
  }
}
```

This endpoint retrieves a specific approval item

### HTTP Request

`GET https://api.gomorpheus.com/api/approval-items/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the approval item


## Update an Approval Item

```shell
curl -XPUT "$MORPHEUS_API_URL/api/approval-items/3/approve" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

This endpoint updates a specific approval item based upon specified action

### HTTP Request

`PUT https://api.gomorpheus.com/api/approval-items/:id/:action`

### URL Parameters

Parameter | Required | Description
--------- | -------- | -----------
id | Y | ID of the approval item
action | Y | Approval item action [approve, deny, cancel]
