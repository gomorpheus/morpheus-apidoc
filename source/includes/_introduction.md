# Introduction

Welcome to the Morpheus API Documentation. 

[Morpheus](https://www.morpheusdata.com/) is a powerful cloud management tool that provides provisioning, monitoring, logging, backups, and application deployment strategies.

This document describes the Morpheus [API](#api) protocol and the endpoints it provides.  Sections are organized in the same manner as they appear in the Morpheus UI.

### Sections

Section |  Description
--------- | -------
[Authentication](#authentication) | [Get Access Token](#get-access-token), [Refresh Access Token](#refresh-access-token), [Whoami](#whoami)
[Operations](#operations) | [Dashboard](#dashboard), [Reports](#reports), [Wiki](#wiki), [Budgets](#budgets), [Approvals](#approvals), [Activity](#activity), [Billing](#billing), [Invoices](#invoices), [History](#history), [Health](#health), [Guidance](#guidance)
[Provisioning](#provisioning) | [Instances](#instances), [Apps](#apps), [Blueprints](#blueprints), [Jobs](#jobs), [Automation](#automation), [Virtual Images](#virtual-images), [Library](#library), [Deployments](#deployments)
[Infrastructure](#infrastructure) | [Groups](#groups), [Clouds](#clouds), [Clusters](#clusters), [Hosts](#hosts), [Networks](#networks), [Storage](#storage), [Keys](#key-pairs) & [Certs](#ssl-certificates)
[Logs](#logs) | View logs for your hosts and containers.
[Monitoring](#monitoring) | [Checks](#checks), [Incidents](#checks), [Alerts](#alerts), [Contacts](#contacts)
[Tools](#tools) | [Cypher](#cypher), [Archives](#archives), [Image Builder](#image-builds)
[Administration](#administration) | [Tenants](#tenants), [Roles](#roles), [Users](#users), [Plans](#service-plans) & [Pricing](#prices), [Policies](#policies), [Settings](#appliance-settings), [License](#license), [Ping](#ping), [Setup](#setup)

To initialize a freshly installed Morpheus appliance, see [Setup](#setup).


