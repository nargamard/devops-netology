locals {
#  node_cores = {
#    stage = 2
#    prod = 2
#  }
#  node_disk_size = {
#    stage = 20
#    prod = 40
#  }
#  node_instance_count = {
#    stage = 1
#    prod = 2
#  }
   workspaces = {
     "stage" = {node_cores = 2, node_disk_size = 20, node_instance_count = 1}
     "prod" = {node_cores = 2, node_disk_size = 40, node_instance_count = 2}
   }
}
resource "yandex_compute_instance" "node" {
  for_each = local.workspaces
  name = "${each.key}"
  hostname = "node_name.netology.yc - ${each.key}"

  resources {
    cores  = each.value.node_cores
    memory = 2
    disk_size = each.value.node_disk_size
  }

  boot_disk {
    initialize_params {
      image_id    = "${var.ubuntu_20_04}"
      name        = "root-node"
      type        = "network-nvme"
      size        = "10"
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.default.id}"
  }
}