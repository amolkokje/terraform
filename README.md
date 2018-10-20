# Terraform

This project has basic samples for deploying resources in AWS and vSphere using Terraform configuration files. 

This repo supports the content described in a post https://medium.com/@amolkokje/infrastructure-as-a-code-using-terraform-aws-vsphere-8878ef127205.

Please specify the values for following variables in **terraform.tfvars** file in the same folder as **.tf** files. 
Ther description for the variables is given in the variables.tf file. If not specified, then Terraform will prompt you to enter the values when applying your changes. 

## vSphere

### Credentials for vSphere
vsphere_user = <>
vsphere_password = <> 
vsphere_vcenter = <>
vsphere_unverified_ssl = <>

### VM Specifications
vsphere_datacenter = <>
vsphere_vm_name = <>
vsphere_vm_template = <>
vsphere_vcpu_number = <>
vsphere_memory_size = <>
vsphere_datastore = <>
vsphere_ipv4_address = <>
vsphere_dns_servers = <>
vsphere_domain = <>
vsphere_time_zone = <>
vsphere_port_group = <>

## AWS

### Credentials for AWS
AWS_ACCESS_KEY = <>
AWS_SECRET_KEY = <>
AWS_REGION = <>
    
### VM Specifications
ec2_instance_type = <>
