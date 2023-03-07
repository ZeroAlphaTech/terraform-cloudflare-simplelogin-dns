variable "domain_name" {
  description = "Domain name to add DNS entries for"
  type        = string
}

variable "cloudflare_zone_id" {
  description = "Cloudflare Zone to add DNS entries to"
  type        = string
}

variable "simplelogin_verification_string" {
  description = "The string provided by SimpleLogin to verify domain ownership. Should include any prefix (e.g. sl-verification=...)"
  type = string
}