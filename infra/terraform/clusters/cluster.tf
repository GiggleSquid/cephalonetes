module "digital-ocean-nemo" {
  source = "git::https://github.com/poseidon/typhoon//digital-ocean/container-linux/kubernetes?ref=v1.13.2"

  providers = {
    digitalocean = "digitalocean.default"
    local = "local.default"
    null = "null.default"
    template = "template.default"
    tls = "tls.default"
  }

  # Digital Ocean
  cluster_name = "accl-server-v1"
  region       = "lon1"
  dns_zone     = "cluster-ops-v1.network-data-cabling.co.uk"

  # configuration
  ssh_fingerprints = ["c4:36:82:3b:15:9d:40:32:7b:f1:af:ae:89:59:12:61"]
  asset_dir        = "/home/squid/Projects/Kubernetes/ACCL_Server/repo/infra/.secrets/clusters"

  # optional
  worker_count = 2
  worker_type  = "s-2vcpu-2gb"
}
