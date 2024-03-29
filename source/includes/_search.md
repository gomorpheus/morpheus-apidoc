# Search

<!-- ## Global Search -->

```shell
curl "<%= curl_url %>/api/search?phrase=dev"
  -H "Authorization: BEARER <%= curl_token %>"
```

> The above command returns JSON structured like this:

```json
{
  "hits": [
    {
      "id": "346",
      "uuid": "7c9f11a5-4630-4813-a3e7-65c2dfa0f20f",
      "name": "dev-test-1",
      "description": "A test dev instance",
      "type": "Instance",
      "dateCreated": "2020-09-15T20:24:30Z",
      "score": 20.0
    },
    {
      "id": "344",
      "uuid": "45edbae7-d433-4a9a-b82a-0adc5819d6ef",
      "name": "dev-test-2",
      "description": "Another test dev instance",
      "type": "Instance",
      "dateCreated": "2020-09-15T13:56:30Z",
      "score": 20.0
    }
  ],
  "query": "dev",
  "took": 12,
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 2,
    "total": 2
  }
}
```

This endpoint provides global search for all types of objects, with the results sorted in order of relevance.

The `phrase` parameter value can be specified as part of the URL or as a query parameter. If `phrase` is not specified, then 0 results (`hits`) will be returned.

### HTTP Request

`GET <%= api_url %>/api/search/:phrase`

### URL Parameters

Parameter | Description
--------- | -----------
phrase | Search phrase (query) to match results against

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
phrase |  | Search phrase to match results on
query |  | Alias for phrase

### Search Response JSON

Parameter | Description
--------- | -----------
hits | Array of [search result objects](#search-result-object)
took | Amount of time in milliseconds that the search took to execute.
meta | Meta pagination object containing `total` count.

#### Search Result Object

Parameter | Description
--------- | -----------
id | ID of the object
uuid | UUID of the object
name | Name of the object
description | Description of the object
type | Type of object, eg. Instance, ComputeServer, ComputeSite, ComputeZone, User, Role, etc.
dateCreated | Date the object was created
score | Search score, higher means a better match to the specified phrase.

