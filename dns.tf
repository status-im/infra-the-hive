resource "cloudflare_record" "thehive_es_hq" {
  zone_id = lookup(local.zones, "status.im")
  type    = "A"
  name    = "thehive-es"
  value   = module.hive_slave.public_ips[count.index]
  count   = length(module.hive_slave.public_ips)
  proxied = true
}
