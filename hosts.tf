/* Frontend application */
module "hive_master" {
  source        = "github.com/status-im/infra-tf-google-cloud"
  host_count    = 1
  name          = "master"
  env           = "thehive"
  group         = "thehive-master"
  type          = "n1-standard-2"
  root_vol_size = 30
  data_vol_size = 30
  domain        = var.hosts_domain

  /* Application Web UI */
  open_tcp_ports = ["80", "443"]
}

/* Backend storage */
module "hive_slave" {
  source        = "github.com/status-im/infra-tf-google-cloud"
  host_count    = 3
  name          = "slave"
  env           = "thehive"
  group         = "thehive-slave"
  type          = "n1-standard-4"
  root_vol_size = 30
  data_vol_size = 30
  domain        = var.hosts_domain

  /* ElasticSearch HQ Web UI */
  open_tcp_ports = ["80", "443"]
}
