# SimpleLogin DNS Entries for CloudFlare

Terraform module that will create the necessary DNS entries in an existing [CloudFlare](https://cloudflare.com) account to enable [SimpleLogin](https://simplelogin.io) to work on a custom domain.

## Pre-requisites

1. A domain configured to use CloudFlare as it's DNS Provider
2. A SimpleLogin account with you domain added on the [Custom Domains](https://app.simplelogin.io/dashboard/custom_domain) tab in the dashboard

## Variables

| Name                            | Description                                                                                                       |
|---------------------------------|-------------------------------------------------------------------------------------------------------------------|
| cloudflare_zone_id              | Zone ID on CloudFlare for domain                                                                                  |
| domain_name                     | Domain name to configure                                                                                          |
| simplelogin_verification_string | The string provided by SimpleLogin when setting up a custom domain (usually in the format `sl-verification=-...`) |
| enable_spf                      | Whether to add SimpleLogin-specific DNS record for SPF support                                                    |
| enable_dkim                     | Whether to add SimpleLogin-specific DNS record for DKIM support                                                   |
| enable_dmarc                    | Whether to add SimpleLogin-specific DNS record for DMARC support                                                  |