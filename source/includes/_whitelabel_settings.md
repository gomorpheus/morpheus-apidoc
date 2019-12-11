# Whitelabel Settings

Provides API interfaces for managing whitelabel settings within Morpheus

## Get Whitelabel Settings

```shell
curl "https://api.gomorpheus.com/api/whitelabel-settings" \
  -H "Authorization: BEARER access_token"
```

> The above command returns JSON structured like this:

```json
{
  "whitelabelSettings": {
    "enabled": true,
    "applianceName": "My Appliance",
    "disableSupportMenu": false,
    "headerLogo": "http://localhost:8080/storage/uploads/uploads/ApplianceInstance/1/headerLogo/header_logo_original.png",
    "footerLogo": "http://localhost:8080/storage/uploads/uploads/ApplianceInstance/1/footerLogo/footer_logo_original.png",
    "loginLogo": "http://localhost:8080/storage/uploads/uploads/ApplianceInstance/1/loginLogo/login_logo_original.png",
    "favicon": "http://localhost:8080/storage/uploads/uploads/ApplianceInstance/1/favicon/favicon_original.ico",
    "headerBgColor": "#ffffff",
    "headerFgColor": "black",
    "navBgColor": "#ffffff",
    "navFgColor": "pink",
    "navHoverColor": "green",
    "primaryButtonBgColor": "red",
    "primaryButtonFgColor": "blue",
    "primaryButtonHoverBgColor": "orange",
    "primaryButtonHoverFgColor": "gray",
    "footerBgColor": "brown",
    "footerFgColor": "yellow",
    "loginBgColor": "aqua",
    "overrideCss": "div {\r\n    font-size: 16px;\r\n}",
    "copyrightString": "My copywriter",
    "termsOfUse": "These are my terms of use.",
    "privacyPolicy": "Here is my privacy policy.",
    "supportMenuLinks": [
      {
        "url": "http://helpmenu.com",
        "label": "Help",
        "labelCode": "help"
      }
    ]
  }
}    
```

This endpoint retrieves whitelabel settings.

### HTTP Request

`GET https://api.gomorpheus.com/api/whitelabel-settings`


## Update Whitelabel Settings

```shell
curl -XPUT "https://api.gomorpheus.com/api/whitelabel-settings" \
  -H "Authorization: BEARER access_token" \
  -H "Content-Type: application/json" \
  -d '{"whitelabelSettings": {
        "navBgColor": "#fff",
        "enabled": true,
        "applianceName": "My Appliance",
        "disableSupportMenu": false,
        "resetHeaderLogo": true,
        "resetFooterLogo": true,
        "resetLoginLogo": true,
        "resetFavicon": true,
        "headerBgColor": "#fff",
        "headerFgColor": "black",
        "navFgColor": "pink",
        "navHoverColor": "green",
        "primaryButtonBgColor": "red",
        "primaryButtonFgColor": "blue",
        "primaryButtonHoverBgColor": "orange",
        "primaryButtonHoverFgColor": "gray",
        "footerBgColor": "brown",
        "footerFgColor": "yellow",
        "loginBgColor": "cyan",
        "copyrightString": "My copywriter",
        "overrideCss": "div {\n    font-size: 16px;\n}",
        "termsOfUse": "These are my terms of use.",
        "privacyPolicy": "Here is my privacy policy.",
        "supportMenuLinks": [
          {
            "url": "http://helpme.com",
            "label": "Help Label",
            "labelCode": "help-code"
          },
          {
            "url": "http://helpmemore.com",
            "label": "Help More Label",
            "labelCode": "help-more-code"
          }
        ]
      }}'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`PUT https://api.gomorpheus.com/api/whitelabel-settings`

### JSON Parameters

Parameter | Description
--------- | -----------
active | Can be used to enable / disable whitelabel feature [on&#124;off]
applianceName | Appliance name. Master account only
disableSupportMenu | Can be used to disable support menu [on&#124;off]
resetHeaderLogo | Resets header logo to default header logo
resetFooterLogo | Resets footer logo to default footer logo
resetLoginLogo | Resets login logo to default login logo
resetFavicon | Resets favicon to default favicon
headerBgColor | Header background color
headerFgColor | Header foreground color
navBgColor | Nav background color
navFgColor | Nav foreground color
navHoverColor | Nav hover color
primaryButtonBgColor | Primary button background color
primaryButtonFgColor | Primary button foreground color
primaryButtonHoverBgColor | Primary button hover background color
primaryButtonHoverFgColor | Primary button hover foreground color
footerBgColor | Footer background color
footerFgColor | Footer foreground color
loginBgColor | Login background color
copyrightString | Copyright String
overrideCss | Override CSS
termsOfUse | Terms of use content
privacyPolicy | Privacy policy content
supportMenuLinks | Support menu links. See [Support Menu Links](#support-menu-links)
        
#### Support Menu Links

Parameter | Description
--------- | -----------
url | URL to support menu link
label | Label for support menu link
labelCode | Label code for support menu link


## Update Images

```shell
curl -XPOST "https://api.gomorpheus.com/api/whitelabel-settings/images" \
  -H "Authorization: BEARER access_token" \
  -F 'headerLogo.file=@filename' \
  -F 'footerLogo.file=@filename' \
  -F 'loginLogo.file=@filename' \
  -F 'favicon.file=@filename'
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`POST https://api.gomorpheus.com/api/whitelabel-settings/images`

### Parameters

Parameter | Required | Description
--------- | -------- | -----------
headerLogo.file | N | Header logo image file, valid image types png,jpg,svg) 
resetHeaderLogo | N | Resets header logo to default
footerLogo.file | N | Footer logo image file, valid image types png,jpg,svg)
resetFooterLogo | N | Resets footer logo to default
loginLogo.file | N | Login logo image file, valid image types png,jpg,svg)
resetLoginLogo | N | Resets login logo to default
favicon.file | N | Favicon image file, valid image type ico
resetFavicon | N | Resets favicon logo to default

Uploads whitelabel images.  Expects multipart form data as the request format, not JSON.


## Reset Image

```shell
curl -XDELETE "https://api.gomorpheus.com/api/whitelabel-settings/images/:imageType" \
  -H "Authorization: BEARER access_token" 
```

> The above command returns JSON Structured like this:

```json
{
  "success": true
}
```

### HTTP Request

`DELETE https://api.gomorpheus.com/api/whitelabel-settings/images/:imageType`

Resets the specified image to the morpheus default. See [Valid Image Types](#valid-image-types)

#### Valid Image Types
* headerLogo
* footerLogo 
* loginLogo 
* favicon


## Download Image

```shell
curl -XGET "https://api.gomorpheus.com/api/whitelabel-settings/images/:imageType" \
  -H "Authorization: BEARER access_token" 
```

> The above command returns binary output of the specified image

### HTTP Request

`GET https://api.gomorpheus.com/api/whitelabel-settings/images/:imageType`

Downloads the specified image. See [Valid Image Types](#valid-image-types)