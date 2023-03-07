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

variable "enable_spf" {
  description = "Whether to include SPF DNS entry"
  type = bool
  default = true
}

variable "enable_dkim" {
  description = "Whether to include DKIM DNS entries"
  type = bool
  default = true
}

variable "enable_dmarc" {
  description = "Whether to include DMARC DNS entry"
  type = bool
  default = true
}
