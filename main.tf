resource "cloudflare_record" "simplelogin_varification_txt" {
  name    = var.domain_name
  value   = var.simplelogin_verification_string
  type    = "TXT"
  zone_id = var.cloudflare_zone_id
}

resource "cloudflare_record" "mx_1" {
  zone_id  = var.cloudflare_zone_id
  name     = var.domain_name
  value    = "mx1.simplelogin.co"
  type     = "MX"
  priority = 10
}

resource "cloudflare_record" "mx_2" {
  zone_id  = var.cloudflare_zone_id
  name     = var.domain_name
  value    = "mx2.simplelogin.co"
  type     = "MX"
  priority = 20
}

resource "cloudflare_record" "txt_spf" {
  count = (var.enable_spf ? 1 : 0)

  name    = var.domain_name
  value   = "v=spf1 include:simplelogin.co ~all"
  type    = "TXT"
  zone_id = var.cloudflare_zone_id
}

resource "cloudflare_record" "cname_dkim_1" {
  count = (var.enable_dkim ? 1 : 0)

  name    = "dkim._domainkey"
  value   = "dkim._domainkey.simplelogin.co"
  type    = "CNAME"
  proxied = false
  zone_id = var.cloudflare_zone_id
}

resource "cloudflare_record" "cname_dkim_2" {
  count = (var.enable_dkim ? 1 : 0)

  name    = "dkim02._domainkey"
  value   = "dkim02._domainkey.simplelogin.co"
  type    = "CNAME"
  proxied = false
  zone_id = var.cloudflare_zone_id
}

resource "cloudflare_record" "cname_dkim_3" {
  count = (var.enable_dkim ? 1 : 0)

  name    = "dkim03._domainkey"
  value   = "dkim03._domainkey.simplelogin.co"
  type    = "CNAME"
  proxied = false
  zone_id = var.cloudflare_zone_id
}

resource "cloudflare_record" "txt_dmarc" {
  count = (var.enable_dmarc ? 1 : 0)

  name    = "_dmarc"
  value   = "v=DMARC1; p=quarantine; pct=100; adkim=s; aspf=s"
  type    = "TXT"
  zone_id = var.cloudflare_zone_id
}
