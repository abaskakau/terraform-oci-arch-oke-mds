## Copyright (c) 2022, Oracle and/or its affiliates.
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

# module "mds-instance" {
#   source                                        = "github.com/oracle-devrel/terraform-oci-cloudbricks-mysql-database?ref=v1.0.4.1"
#   tenancy_ocid                                  = var.tenancy_ocid
#   region                                        = var.region
#   mysql_instance_compartment_ocid               = var.compartment_ocid
#   mysql_network_compartment_ocid                = var.compartment_ocid
#   subnet_id                                     = oci_core_subnet.OKE_MDS_mds_subnet.id
#   mysql_db_system_admin_username                = var.admin_username
#   mysql_db_system_admin_password                = var.admin_password
#   mysql_db_system_availability_domain           = var.availability_domain_name == "" ? data.oci_identity_availability_domains.ADs.availability_domains[var.availablity_domain_number]["name"] : var.availability_domain_name
#   mysql_shape_name                              = var.mysql_shape
#   mysql_db_system_data_storage_size_in_gb       = var.mysql_db_system_data_storage_size_in_gb
#   mysql_db_system_defined_tags                  = local.defined_tags
#   mysql_db_system_description                   = var.mysql_db_system_description
#   mysql_db_system_display_name                  = var.mysql_db_system_display_name
#   mysql_db_system_fault_domain                  = var.mysql_db_system_fault_domain
#   mysql_db_system_hostname_label                = var.mysql_db_system_hostname_label
#   mysql_db_system_is_highly_available           = var.mysql_is_highly_available
#   mysql_db_system_maintenance_window_start_time = var.mysql_db_system_maintenance_window_start_time
# }
