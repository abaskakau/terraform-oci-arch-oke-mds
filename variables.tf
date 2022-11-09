## Copyright (c) 2022, Oracle and/or its affiliates.
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "compartment_ocid" {}
variable "region" {}

variable "availability_domain_name" {
  default = ""
}

variable "availablity_domain_number" {
  default = 0
}

variable "ssh_public_key" {
  default = ""
}

variable "release" {
  description = "Reference Architecture Release (OCI Architecture Center)"
  default     = "1.0"
}

variable "VCN-CIDR" {
  default = "10.0.0.0/16"
}

variable "OKE_LB_Subnet-CIDR" {
  default = "10.0.10.0/24"
}

variable "OKE_API_EndPoint_Subnet-CIDR" {
  default = "10.0.20.0/24"
}

variable "OKE_NodePool_Subnet-CIDR" {
  default = "10.0.30.0/24"
}

variable "Bastion_Subnet-CIDR" {
  default = "10.0.40.0/24"
}

variable "MDS_Subnet-CIDR" {
  default = "10.0.50.0/24"
}

variable "BastionShape" {
  default = "VM.Standard.E4.Flex"
}

variable "BastionFlexShapeOCPUS" {
  default = 1
}

variable "BastionFlexShapeMemory" {
  default = 1
}

variable "cluster_kube_config_token_version" {
  default = "2.0.0"
}

variable "cluster_options_kubernetes_network_config_pods_cidr" {
  default = "10.244.0.0/16"
}

variable "cluster_options_kubernetes_network_config_services_cidr" {
  default = "10.96.0.0/16"
}

variable "node_pool_size" {
  default = 3
}

variable "node_pool_name" {
  default = "OKEMDS_Pool"
}

variable "node_pool_shape" {
  default = "VM.Standard.E4.Flex"
}

variable "instance_os" {
  default = "Oracle Linux"
}

variable "linux_os_version" {
  default = "7.9"
}

variable "node_pool_flex_shape_memory" {
  default = 6
}

variable "node_pool_flex_shape_ocpus" {
  default = 1
}

variable "cluster_name" {
  default = "okemdscluster"
}

# Dictionary Locals
locals {
  compute_flexible_shapes = [
    "VM.Standard.E3.Flex",
    "VM.Standard.E4.Flex",
    "VM.Standard.A1.Flex",
    "VM.Optimized3.Flex"
  ]
}

# Checks if is using Flexible Compute Shapes
locals {
  is_flexible_node_shape = contains(local.compute_flexible_shapes, var.node_pool_shape)
}
