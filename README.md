# Terraform

This project has basic samples for deploying resources in AWS and vSphere using Terraform configuration files. 

This repo supports the content described in a [Post](https://medium.com/@amolkokje/infrastructure-as-a-code-using-terraform-aws-vsphere-8878ef127205).

Please specify the values for following variables in **terraform.tfvars** file in the same folder as **.tf** files. 
Ther description for the variables is given in the variables.tf file. If not specified, then Terraform will prompt you to enter the values when applying your changes. 

## vSphere

### Credentials for vSphere
vsphere_user = <> <br />
vsphere_password = <> <br />
vsphere_vcenter = <> <br />
vsphere_unverified_ssl = <> <br />

### VM Specifications
vsphere_datacenter = <> <br />
vsphere_vm_name = <> <br />
vsphere_vm_template = <> <br />
vsphere_vcpu_number = <> <br />
vsphere_memory_size = <> <br />
vsphere_datastore = <> <br />
vsphere_ipv4_address = <> <br />
vsphere_dns_servers = <> <br />
vsphere_domain = <> <br />
vsphere_time_zone = <> <br />
vsphere_port_group = <> <br />

## AWS

### Credentials for AWS
AWS_ACCESS_KEY = <> <br />
AWS_SECRET_KEY = <> <br />
AWS_REGION = <> <br />
    
### VM Specifications
ec2_instance_type = <> <br />
