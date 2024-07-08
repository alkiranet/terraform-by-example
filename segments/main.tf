# Segments

# Standard Segments

resource "alkira_segment" "Production" {
  name  = "Production"
  asn   = "65501"
  cidrs = ["10.50.1.0/24"]
}

resource "alkira_segment" "Pre-Production" {
  name  = "Pre-Production"
  asn   = "65502"
  cidrs = ["10.50.2.0/24"]
}

resource "alkira_segment" "EaaS" {
  name  = "EaaS"
  asn   = "65503"
  cidrs = ["10.50.3.0/24"]
}

resource "alkira_segment" "Management" {
  name  = "Management"
  asn   = "65504"
  cidrs = ["10.50.4.0/24"]
}

resource "alkira_segment" "WWW" {
  name  = "WWW"
  asn   = "65505"
  cidrs = ["10.92.5.0/24"]
}
