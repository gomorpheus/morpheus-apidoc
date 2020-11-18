# Service Catalog

Provides API endpoints for the Service Catalog persona.  This includes viewing the available types, viewing items in the inventory, and placing orders for new items to added to the inventory.

<aside class="info">
This feature is only available in Morpheus API version <b>5.x</b>
</aside>

## List Catalog Types

```shell
curl "$MORPHEUS_API_URL/api/catalog/types" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "catalogItemTypes": [
    {
      "id": 1,
      "name": "apache",
      "description": "Example apache instance",
      "type": "instance",
      "featured": true,
      "imagePath": "/assets/containers-png/apache.png"
    },
    {
      "id": 2,
      "name": "example",
      "description": "Example catalog item",
      "type": "instance",
      "featured": true,
      "imagePath": "/assets/containers-png/apache.png"
    },
    {
      "id": 3,
      "name": "example",
      "description": null,
      "type": "workflow",
      "context": "instance",
      "featured": false,
      "imagePath": "/assets/containers-png/morph-resource2.png"
    }
  ],
  "meta": {
    "offset": 0,
    "max": 25,
    "size": 3,
    "total": 3
  }
}
```

This endpoint retrieves the types available for ordering.

### HTTP Request

`GET https://api.gomorpheus.com/api/catalog/types`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Filter by wildcard search of name and description
name |  | Filter by name, wildcard may be specified as **%**, eg. `example-%`
description |  | Filter by description, wildcard may be specified as **%**. eg. `example-%`
featured |  | Filter by featured, eg. `true` or `false`

## Get a Specific Catalog Type

```shell
curl "$MORPHEUS_API_URL/api/catalog/types/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "catalogItemType": {
    "id": 1,
    "name": "example",
    "description": "Example catalog item",
    "type": "blueprint",
    "featured": true,
    "imagePath": "/assets/containers-png/morph-resource2.png",
    "optionTypes": [
      {
        "id": 1717,
        "name": "App Name",
        "description": "Name of your app",
        "code": null,
        "fieldName": "appName",
        "fieldLabel": "App Name",
        "fieldCode": null,
        "fieldContext": "config.customOptions",
        "fieldGroup": null,
        "fieldClass": null,
        "fieldAddOn": null,
        "fieldComponent": null,
        "fieldInput": null,
        "placeHolder": null,
        "verifyPattern": null,
        "helpBlock": null,
        "defaultValue": null,
        "optionSource": null,
        "optionList": null,
        "type": "text",
        "advanced": false,
        "required": true,
        "exportMeta": false,
        "editable": false,
        "creatable": true,
        "config": {
        },
        "displayOrder": 0,
        "wrapperClass": null,
        "enabled": true,
        "noBlank": false,
        "dependsOnCode": null,
        "visibleOnCode": null,
        "contextualDefault": false,
        "displayValueOnDetails": false
      }
    ]
  }
}
```

This endpoint retrieves a specific catalog item type. This also returns an array of associated `optionTypes` that are used to configure the catalog item.

### HTTP Request

`GET https://api.gomorpheus.com/api/catalog/types/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the Catalog Item Type


## List Catalog Inventory Items

```shell
curl "$MORPHEUS_API_URL/api/catalog/items" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "items": [
    {
      "id": 1,
      "name": "apache-1",
      "type": {
        "id": 1,
        "name": "apache",
        "type": "instance"
      },
      "quantity": 1,
      "status": "ORDERED",
      "statusMessage": null,
      "refType": "Instance",
      "instance": {
        "id": 403,
        "name": "apache-1",
        "status": "running",
        "locations": [
          "Http: 10.200.12.44:80"
        ],
        "virtualMachines": 1,
        "version": "2.4"
      },
      "orderDate": "2020-11-06T01:47:05Z",
      "dateCreated": "2020-11-06T01:47:00Z",
      "lastUpdated": "2020-11-06T01:47:06Z"
    },
    {
      "id": 2,
      "name": "example-1",
      "type": {
        "id": 2,
        "name": "example",
        "type": "blueprint"
      },
      "quantity": 1,
      "status": "ORDERED",
      "statusMessage": null,
      "refType": "App",
      "app": {
        "id": 88,
        "name": "example-1",
        "status": "running",
        "instances": [
          {
            "id": 402,
            "name": "example-1",
            "status": "running",
            "locations": [
              "Http: 54.183.8.230:80"
            ],
            "virtualMachines": 1,
            "version": "1.9"
          }
        ]
      },
      "orderDate": "2020-11-06T01:46:42Z",
      "dateCreated": "2020-11-06T01:46:42Z",
      "lastUpdated": "2020-11-06T01:46:44Z"
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

This endpoint retrieves a list of the catalog inventory items.

### HTTP Request

`GET https://api.gomorpheus.com/api/catalog/items`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
max | 25 | Max number of results to return
offset | 0 | Offset of records you want to load
sort | name | Sort order
direction | asc | Sort direction, use 'desc' to reverse sort
phrase |  | Filter by wildcard search of name and description
name |  | Filter by name, wildcard may be specified as **%**, eg. `example-%`

## Get a Specific Catalog Inventory Item

```shell
curl "$MORPHEUS_API_URL/api/catalog/items/1" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "item": {
    "id": 1,
    "name": "apache-1",
    "type": {
      "id": 27,
      "name": "apache",
      "type": "instance"
    },
    "quantity": 1,
    "status": "ORDERED",
    "statusMessage": null,
    "refType": "Instance",
    "instance": {
      "id": 403,
      "name": "apache-1",
      "status": "running",
      "locations": [
        "Http: 10.200.12.44:80"
      ],
      "virtualMachines": 1,
      "version": "2.4"
    },
    "orderDate": "2020-11-06T01:47:05Z",
    "dateCreated": "2020-11-06T01:47:00Z",
    "lastUpdated": "2020-11-06T01:47:06Z"
  }
}
```

This endpoint retrieves a specific catalog inventory item.

### HTTP Request

`GET https://api.gomorpheus.com/api/catalog/items/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | ID of the Catalog Item


## Get Catalog Cart

```shell
curl "$MORPHEUS_API_URL/api/catalog/cart" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "cart": {
    "id": 1,
    "name": null,
    "items": [
      {
        "id": 27,
        "type": {
          "id": 2,
          "name": "apache",
          "type": "instance"
        },
        "quantity": 1,
        "price": 6.2508,
        "currency": "USD",
        "unit": "month",
        "valid": true,
        "status": "IN_CART",
        "dateCreated": "2020-11-06T20:33:39Z",
        "lastUpdated": "2020-11-06T20:33:39Z"
      }
    ],
    "stats": {
      "price": 6.2508,
      "currency": "USD",
      "unit": "month"
    }
  }
}
```

This endpoint retrieves the current catalog cart and all the items in it.

### HTTP Request

`GET https://api.gomorpheus.com/api/catalog/cart`

## Add Catalog Item to Cart

```shell
curl -XPOST "$MORPHEUS_API_URL/api/catalog/cart/items" \
  -H "Authorization: Bearer $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
  "item": {
    "type": {
      "name": "example"
    },
    "config": {
      "appName": "My App"
    },
  }
}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "item": {
    "id": 34,
    "type": {
      "id": 2,
      "name": "example",
      "type": "blueprint"
    },
    "quantity": 1,
    "price": 6.2508,
    "currency": "USD",
    "unit": "month",
    "valid": true,
    "status": "IN_CART",
    "dateCreated": "2020-11-06T20:14:29Z",
    "lastUpdated": "2020-11-06T20:14:29Z"
  }
}
```

Use this command to add an item to your service catalog cart.

### HTTP Request

`POST https://api.gomorpheus.com/api/catalog/cart/items`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
validate | false | Validate Only. Use `true`  to validate the configuration without actually adding the item to the cart.

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
config | Y | Config Object, required options depend on the catalog item type's associated option types. The values passed in here are injected into the instance config or app spec or workflow script(s) defined by the type.
context | N | Context Type for running the workflow, determines if a target resource must be selected. `instance`,`server`, or `appliance`. This may only be passed if the type allows it, usually the type determines the context for the user. Only applies to type `workflow`.
target | N | Resource ([Instance](#instances) or [Server](#hosts)) ID for context when running the workflow. Only applies to type `workflow` and only required when context is instance or server. 

## Remove a Catalog Item From Cart

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/catalog/cart/items/:id" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will remove a catalog item that is currently in the cart.

### HTTP Request

`DELETE https://api.gomorpheus.com/api/catalog/cart/items/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the catalog item

## Clear Catalog Cart

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/catalog/cart" \
  -H "Authorization: Bearer $MORPHEUS_API_TOKEN"
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

Use this command to empty your cart, deleting all the items in it.

### HTTP Request

`DELETE https://api.gomorpheus.com/api/catalog/cart`

## Checkout Catalog Cart

```shell
curl -XPOST "$MORPHEUS_API_URL/api/catalog/checkout" \
  -H "Authorization: Bearer $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "msg": "Order created"
}
```

Use this command to checkout, finalizing your cart and placing an order. This converts each item in the cart to an inventory item, changing the status from IN_CART to ORDERED and potentially starts the provisioning process for each item.

### HTTP Request

`POST https://api.gomorpheus.com/api/catalog/checkout`


## Place Catalog Order

```shell
curl -XPOST "$MORPHEUS_API_URL/api/catalog/orders" \
  -H "Authorization: Bearer $MORPHEUS_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
  "order": {
    "items": [
      {
        "type": {
          "name": "example"
        },
        "config": {
          "appName": "woot"
        }
      }
    ]
  }
}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true,
  "item": {
    "id": 34,
    "type": {
      "id": 2,
      "name": "example",
      "type": "blueprint"
    },
    "quantity": 1,
    "price": 6.2508,
    "currency": "USD",
    "unit": "month",
    "valid": true,
    "status": "IN_CART",
    "dateCreated": "2020-11-06T20:14:29Z",
    "lastUpdated": "2020-11-06T20:14:29Z"
  }
}
```

This will place an order for the specified items, adding items to the inventory right away, without using the cart.

### HTTP Request

`POST https://api.gomorpheus.com/api/catalog/orders`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
validate | false | Validate Only. Use `true`  to validate the configuration without actually placing the order or adding items to your inventory

### JSON Parameters

Parameter | Required | Description
--------- | -------- | -----------
name | N | Order Name as a way to identify the order.
items | N | Array of Item objects, each item in the order can be configured individually, see [Add Catalog Item to Cart](#add-catalog-item-to-cart).

## Delete a Catalog Inventory Item

```shell
curl -XDELETE "$MORPHEUS_API_URL/api/catalog/items/:id" \
  -H "Authorization: BEARER $MORPHEUS_API_TOKEN"
```

> The above command returns JSON structure like this:

```json
{
  "success": true
}
```

Will delete a catalog inventory item, which by default will deprovision any associated any instances and servers.

### HTTP Request

`DELETE https://api.gomorpheus.com/api/catalog/items/:id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The ID of the catalog item

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
preserveVolumes | off | Preserve Volumes
keepBackups | off | Preserve copy of backups
releaseEIPs | on | Release EIPs
removeInstances | on | Remove Instances. Only applies to type `blueprint` (Apps)
force | off | Force Delete
