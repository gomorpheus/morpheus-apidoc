# Provisioning

The Provisioning API endpoints provide management of Instances, Apps, Automation and Deployments.

Morpheus supports a diverse set of cloud APIS for provisioning compute and services. In order to facilitate some of these capabilities and preserve some of the diverse sets of feature sets across these plaforms it is necessary to provide a means to dynamicaly specifying provisioning options depending on what is being provisioned. Morpheus calls these `ProvisionType`. Each `InstanceTypeLayout` that can be provisioned has a correlating `ProvisionType` and each `CloudType` (aka `ZoneType`) has a list of supported provision types it is capable of provisioning. This record contains optionTypes (see section on `optionTypes` for specifics on how to parse this data) as well as information for building out network parameters and storage parameters by listing different storage type information.


