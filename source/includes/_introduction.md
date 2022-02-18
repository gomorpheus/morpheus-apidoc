# Introduction

Welcome to the <%= application_name %> API Documentation. 

[<%= application_name %>](<%= company_website %>) is a powerful cloud management tool that provides provisioning, monitoring, logging, backups, and application deployment strategies.

This document describes the <%= application_name %> API protocol and the available endpoints.  Sections are organized in the same manner as they appear in the <%= application_name %> UI.

### Sections

Section |  Description
--------- | -------
[Authentication](#authentication) | [Get Access Token](#get-access-token), [Refresh Access Token](#refresh-access-token), [Whoami](#whoami), [Forgot Password](#forgot-password)
[Operations](#operations) | [Dashboard](#dashboard), [Reports](#reports), [Guidance](#guidance), [Wiki](#wiki), [Budgets](#budgets), [Invoices](#invoices), [Usage](#usage), [Billing](#billing), [Approvals](#approvals), [Activity](#activity), [History](#history)
[Provisioning](#provisioning) | [Instances](#instances), [Apps](#apps), [Jobs](#jobs), [Deployments](#deployments), [Deploys](#deploys)
[Library](#library) | [Automation](#automation), [Instance Types](#instance-types), [Layouts](#layouts), [Node Types](#node-types), [App Blueprints](#blueprints), [Catalog Items](#catalog-items), [Cluster Layouts](#cluster-layouts), [Virtual Images](#virtual-images), [Inputs](#inputs), [Option Lists](#option-lists), [Spec Templates](#spec-templates), [File Templates](#file-templates), [Script Templates](#script-templates)
[Infrastructure](#infrastructure) | [Groups](#groups), [Clouds](#clouds), [Clusters](#clusters), [Hosts](#hosts), [Networks](#networks), [Security Groups](#security-groups), [Load Balancers](#load-balancers), [Storage](#storage), [Credentials](#credentials), [Certificates](#ssl-certificates), [Key Pairs](#key-pairs)
[Monitoring](#monitoring) | [Logs](#logs), [Apps](#monitoring-apps), [Checks](#checks), [Incidents](#incidents), [Contacts](#contacts), [Alerts](#alerts)
[Tools](#tools) | [Cypher](#cypher), [Archives](#archives), [Image Builder](#image-builds), [VDI Pools](#vdi-pools)
[Administration](#administration) | [Tenants](#tenants), [Plans](#service-plans) & [Pricing](#prices), [Roles](#roles), [Users](#users), [Identity Sources](#identity-sources), [Integrations](#integrations), [Policies](#policies), [Health](#health), [Settings](#appliance-settings), [License](#license)
[Personas](#personas) | [Service Catalog](#service-catalog), [Virtual Desktop](#virtual-desktop)
[Utility](#utility) | [Ping](#ping), [Search](#search), [Setup](#setup)

To initialize a freshly installed <%= application_name %> appliance, see [Setup](#setup).


