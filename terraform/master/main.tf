data "kubernetes_config map" "cmap"{
  metadata{
    name= "${var.name}"
  }
  data={
    "elasticsearch.yml" = <<EOF
    cluster.name= "${var.cluster-name}"
    bootstrap.memory_lock: False
    network.host: "0.0.0.0"
    discovery.zen.ping.unicast.hosts: "${var.esdiscovery}"
    discovery.zen.minimum_master_nodes: 
    action.destructive_requires_name: true
    node.master: true
    node.data: false
    node.ingest: false
    cluster.remote.connect: false
  ES_JAVA_OPTS: -Xms512m -Xmx512m

  }
}
