# --------------------------------
# vCenter Connection - Private
# --------------------------------

variable "vsphere_user" {
  description = "vSphere user name"
}

variable "vsphere_password" {
  description = "vSphere password"
}

variable "vsphere_vcenter" {
  description = "vCenter server FQDN or IP"
}

variable "vsphere_unverified_ssl" {
  description = "Is the vCenter using a self signed certificate (true/false)"
}

# --------------------------------
# VM specifications
# --------------------------------

variable "vsphere_datacenter" {
  description = "datacenter where the VM will be deployed"
}

variable "vsphere_vm_name" {
  description = "VM Name"
}

variable "vsphere_vm_template" {
  description = "Location of VM Template"
}

variable "vsphere_vcpu_number" {
  description = "vCPU for the VM"
}

variable "vsphere_memory_size" {
  description = "RAM for the VM"
}

variable "vsphere_datastore" {
  description = "VM datastore"  
}

variable "vsphere_ipv4_address" {
  description = "VM IPv4 address"
}

variable "vsphere_dns_servers" {
  description = "- Separated List of DNS servers for the VM"  
}

variable "vsphere_domain" {
  description = "VM domain"
}

variable "vsphere_time_zone" {
  description = "VM timezone"
}

variable "vsphere_port_group" {
  description = "VM NIC Port Group"
}