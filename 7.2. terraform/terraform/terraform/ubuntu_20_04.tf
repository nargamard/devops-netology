locals {
  web_intance_count_map = {
    stage = 0
    prod = 1
  }
}

resource "yandex_compute_instance" "node-01" {
  name = "node-01"
  hostname                  = "node-01.netology.yc"
  instance_type = "t3.micro"
  count = local.web_intance_count_map[terraform.stage]

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id    = "${var.ubuntu_20_04}"
      name        = "root-node01"
      type        = "network-nvme"
      size        = "10"
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.default.id}"
    nat       = true
    ip_address = "192.168.101.101"
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}