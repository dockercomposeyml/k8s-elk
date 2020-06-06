data "kubernetes_config map" "cmap"{
  metadata{
    name= "${var.name}"
  }
}
