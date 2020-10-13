resource "cloudflare_record" "hive_ui" {
  zone_id = lookup(local.zones, "status.im")
  type    = "A"
  name    = "hive"
  value   = module.hive_master.public_ips[count.index]
  count   = length(module.hive_master.public_ips)
  proxied = true
}

resource "cloudflare_record" "cortex_ui" {
  zone_id = lookup(local.zones, "status.im")
  type    = "A"
  name    = "cortex"
  value   = module.hive_master.public_ips[count.index]
  count   = length(module.hive_master.public_ips)
  proxied = true
}

resource "cloudflare_record" "hive_es_hq" {
  zone_id = lookup(local.zones, "status.im")
  type    = "A"
  name    = "thehive-es"
  value   = module.hive_slave.public_ips[count.index]
  count   = length(module.hive_slave.public_ips)
  proxied = true
}
