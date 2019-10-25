# Introduction

Welcome to the Morpheus API Documentation. 

[Morpheus](https://www.morpheusdata.com/) is a powerful cloud management tool that provides provisioning, monitoring, logging, backups, and application deployment strategies.

The Morpheus API uses an OAUTH 2.0 based authentication model.  See [Authentication](#authentication).

For convenience, the curl examples in this document use environment variables in place of the Morpheus appliance URL and access token. This allows the examples to be copied and executed without any modification.

To get this working, set up [Environment Variables](#environment-variables).

Alternatively, just be sure to replace <code>$MORPHEUS_API_URL</code> and <code>$MORPHEUS_API_TOKEN</code> in the curl examples with your own Morpheus URL and access token.

<aside class="info">
Be sure to keep your access token a secret. Anyone with the token can interact with the API as your morpheus user.
</aside>

If you are looking to use the API to setup a fresh installation of the morpheus appliance, see [Setup](#setup).

## Version

This document is for the Morpheus API version **4.1.0**.

You can determine your appliance version using [Check Appliance](#check-appliance).

## Environment Variables

The following environment variables are used throughout the examples in this document.

Environment Variable | Description
--------- | ------- | -----------
MORPHEUS_API_URL | The URL of your morpheus data appliance. Example: <code>https://morpheus.yourcompany.com</code>
MORPHEUS_API_TOKEN | Your access token. Example: <code>e1d62c34-f7f5-4713-a874-31491e7707de</code>

```bash
export MORPHEUS_API_URL="https://morpheus.yourcompany.com"
export MORPHEUS_API_TOKEN="e1d62c34-f7f5-4713-a874-31491e7707de"
```

<aside class="info">
As always, be careful not to copy and execute request examples in sensitive environments, such as production.
</aside>

## Client Languages

The Morpheus API has clients in a variety of programming languages.

Language | Description
--------- | ------- | -----------
Ruby | The [Morpheus CLI](https://github.com/gomorpheus/morpheus-cli/) is written in ruby and provides the `Morpheus::APIClient` driver.
Python | The Morpheus Python](#morpheus-python) client is under development.
Java | The Morpheus Java client is under development.
Go | The Morpheus Go client is under development.
Terraform (Go) | The Morpheus Terraform Provider is under development.
