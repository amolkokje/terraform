# --------------------------------
# Data
# --------------------------------

data "vsphere_datacenter" "dc" {
    name = "${var.vsphere_datacenter}"
}

data "vsphere_datastore" "datastore" {
    name          = "${var.vsphere_datastore}"
    datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

data "vsphere_virtual_machine" "template" {
    name          = "${var.vsphere_vm_template}"
    datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

data "vsphere_network" "network" {
    name          = "${var.vsphere_port_group}"
    datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

data "vsphere_resource_pool" "pool" {
    name            = "spwin7x64embed"
    datacenter_id   = "${data.vsphere_datacenter.dc.id}" 
}

# --------------------------------
# Resources
# --------------------------------

# Create a vSphere VM#
resource "vsphere_virtual_machine" "amol-vm" {
    # VM placement #
    name             = "amol-vm"
    resource_pool_id = "${data.vsphere_resource_pool.pool.id}"
    datastore_id     = "${data.vsphere_datastore.datastore.id}"

    # Guest OS #
    guest_id = "${data.vsphere_virtual_machine.template.guest_id}"

    # VM storage #
    disk {
        label            = "amol-vm.vmdk"
        size             = "${data.vsphere_virtual_machine.template.disks.0.size}"
        thin_provisioned = "${data.vsphere_virtual_machine.template.disks.0.thin_provisioned}"
        eagerly_scrub    = "${data.vsphere_virtual_machine.template.disks.0.eagerly_scrub}"
    }

    # VM networking #
    network_interface {
        network_id   = "${data.vsphere_network.network.id}"
        adapter_type = "${data.vsphere_virtual_machine.template.network_interface_types[0]}"
    }

    # Customization of the VM #
    clone {
        template_uuid = "${data.vsphere_virtual_machine.template.id}"

        customize {
            linux_options {
                host_name = "amol-vm"
                time_zone = "${var.vsphere_time_zone}"
                domain    = "${var.vsphere_domain}"
            }
            
            network_interface {
                ipv4_address = "${var.vsphere_ipv4_address}"        
            }
            
            # this will to allow to specify multiple values for dns servers
            dns_server_list = "${split("-", var.vsphere_dns_servers)}"
            dns_suffix_list = ["${var.vsphere_domain}"]
        }
    }
}

