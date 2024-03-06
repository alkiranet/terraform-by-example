resource "alkira_group" "east_www" {
  name        = format("grp-%s", local.name)
  description = local.description
}

resource "alkira_connector_internet_exit" "training" {
  name            = format("conn-%s", local.name)
  billing_tag_ids = [data.alkira_billing_tag.shared_services.id]
  cxp             = local.cxp
  group           = alkira_group.east_www.name
  segment_id      = data.alkira_segment.training.id
}

resource "alkira_service_pan" "service" {

  billing_tag_ids         = [data.alkira_billing_tag.shared_services.id]
  bundle                  = local.bundle
  cxp                     = local.cxp
  license_type            = local.license_type
  management_segment_id   = data.alkira_segment.training.id
  max_instance_count      = local.max_instance_count
  name                    = format("svc-pan-%s", local.name)
  pan_username            = var.pan_username
  pan_password            = var.pan_password
  registration_pin_expiry = var.registration_pin_expiry
  registration_pin_id     = var.registration_pin_id
  registration_pin_value  = var.registration_pin_value
  segment_ids             = [data.alkira_segment.training.id]
  size                    = local.size
  type                    = local.type
  version                 = local.version

  instance {
    name  = format("int-pan-%s", local.name)
  }

  segment_options {
    segment_id = data.alkira_segment.training.id
    zone_name  = "www"
    groups     = [alkira_group.east_www.name]
  }

}