# FortiGate Firewall
resource "alkira_service_fortinet" "FW1" {
  auto_scale                   = var.local_auto_scale 
  billing_tag_ids              = var.local_billing_tag_ids.0
  cxp                          = var.local_cxp
  license_type                 = var.local_license_type
  management_server_ip         = var.local_management_server_ip
  management_server_segment_id = var.local_management_server_segment_id
  max_instance_count           = var.local_max_instance_count
  min_instance_count           = var.local_min_instance_count
  name                         = var.local_name
  password                     = var.local_password
  segment_ids                  = var.local_segment_ids.0
  size                         = var.local_size
  tunnel_protocol              = var.local_tunnel_protocol
  username                     = var.local_username
  version                      =var.local_version
  instances {
    name                  = var.local_instance_name
  }
  segment_options {
    segment_id = var.local_instance_segment_id
    zone_name  = var.local_instance_zone_name
    groups     = var.local_instance_groups.0
  }
}
