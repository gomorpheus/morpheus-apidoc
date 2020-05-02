# Prices

Provides API interfaces for managing prices within Morpheus

## Get All Prices

```shell
curl "$MORPHEUS_API_URL/api/prices" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "prices": [
    {
      "id": 124,
      "name": "Amazon - c1.medium - US West (N. California) - Linux",
      "code": "amazon.c1.medium.ec2.us-west-1.amazonaws.com.Linux",
      "active": true,
      "priceType": "compute",
      "priceUnit": "hour",
      "additionalPriceUnit": null,
      "price": 0.148,
      "customPrice": 0.0,
      "markupType": null,
      "markup": 0.0,
      "markupPercent": 0.0,
      "cost": 0.148,
      "currency": "usd",
      "incurCharges": "running",
      "platform": "Linux",
      "software": null,
      "volumeType": null,
      "datastore": null,
      "crossCloudApply": null,
      "account": null
    }
  ],
  "meta": {
    "size": 1,
    "total": 411,
    "offset": 0,
    "max": 1
  }
}
```

This endpoint retrieves all prices.

### HTTP Request

`GET https://api.gomorpheus.com/api/prices`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Restricts query to only load prices with name or code containing the phrase specified
includeInactive | false | If true, include inactive prices in the results
priceType |  | Restricts query to only load only prices with specified priceType
platform |  | Restricts query to only load only prices with specified platform
currency |  | Restricts query to only load only prices with specified currency


## Get a Specific Price

```shell
curl "$MORPHEUS_API_URL/api/prices/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "price": {
    "id": 124,
    "name": "Amazon - c1.medium - US West (N. California) - Linux",
    "code": "amazon.c1.medium.ec2.us-west-1.amazonaws.com.Linux",
    "active": true,
    "priceType": "compute",
    "priceUnit": "hour",
    "additionalPriceUnit": null,
    "price": 0.148,
    "customPrice": 0.0,
    "markupType": null,
    "markup": 0.0,
    "markupPercent": 0.0,
    "cost": 0.148,
    "currency": "usd",
    "incurCharges": "running",
    "platform": "Linux",
    "software": null,
    "volumeType": null,
    "datastore": null,
    "crossCloudApply": null,
    "account": null
  }
}
```

This endpoint retrieves a specific price.

### HTTP Request

`GET https://api.gomorpheus.com/api/prices/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the price


## Create a Price

Use this command to create a price.

```shell
curl -XPOST "$MORPHEUS_API_URL/api/prices" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
        "price": {
          "name": "dan",
          "code": "dan",
          "account": {
            "id": 1
          },
          "priceType": "fixed",
          "priceUnit": "month",
          "incurCharges": "running",
          "currency": "USD",
          "cost": 10.5,
          "markupType": "fixed",
          "markup": 1.25
        }
      }'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "id": 1
}
```

### HTTP Request

`POST https://api.gomorpheus.com/api/prices`

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Price name
code | Y | Price code, must be unique
account.id | N | Assign to specified tenant account
priceType | Y | Price type **code**, see [Price Types](#price-types)
priceUnit | Y | Price unit: minute, hour, day, month, year, two year, three year, four year, five year
incurCharges | Y | Indicates when to incur charges: running, stopped, always
currency | Y | ISO Currency code
cost | Y | Cost
markupType | N | Price adjustment type: fixed, percent, custom
markup | N | Amount for fixed price adjustment type
markupPercent | N | Percent for percent price adjustment type
customPrice | N | Custom price for custom price adjustment type
platform | N | Platform, required for platform price type
software | N | Software, required for software price type
volumeType.id | N | Volume type ID, required for storage price type
datastore.id | N | Datastore ID, required for datastore price type
crossCloudApply | N | Apply price across clouds, optional true/false flag for datastore price type

#### Price Types
Type | Code
---- | ----
Everything | fixed
Memory + CPU | compute
Memory Only | memory
Cores Only | cores
Disk Only | storage
Datastore | datastore
Platform | platform
Software | software


## Update a Price

```shell
curl -XPUT "$MORPHEUS_API_URL/api/prices/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
        "price": {
          "name": "dan",
          "code": "dan",
          "account": {
            "id": 1
          },
          "priceType": "fixed",
          "priceUnit": "month",
          "incurCharges": "running",
          "currency": "USD",
          "cost": 10.5,
          "markupType": "fixed",
          "markup": 1.25
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

`PUT https://api.gomorpheus.com/api/prices/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the price 

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | Y | Price name
priceType | Y | Price type **code**, see [Price Types](#price-types)
priceUnit | Y | Price unit: minute, hour, day, month, year, two year, three year, four year, five year
incurCharges | Y | Indicates when to incur charges: running, stopped, always
currency | Y | ISO Currency code
cost | Y | Cost
markupType | N | Price adjustment type: fixed, percent, custom
markup | N | Amount for fixed price adjustment type
markupPercent | N | Percent for percent price adjustment type
customPrice | N | Custom price for custom price adjustment type
platform | N | Platform, required for platform price type
software | N | Software, required for software price type
volumeType.id | N | Volume type ID, required for storage price type
datastore.id | N | Datastore ID, required for datastore price type
crossCloudApply | N | Apply price across clouds, optional true, false flag for datastore price type
restartUsage | N | Apply changes to usage
 

## Deactivate a Price

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/prices/1/deactivate" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will deactivate a price 

### HTTP Request

`PUT https://api.gomorpheus.com/api/prices/:id/deactivate`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the price