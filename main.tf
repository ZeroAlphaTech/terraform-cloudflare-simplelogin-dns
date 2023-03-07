resource "cloudflare_record" "simplelogin_varification_txt" {
  name    = var.domain_name
  value   = var.simplelogin_verification_string
  type    = "TXT"
  zone_id = var.cloudflare_zone_id
}
