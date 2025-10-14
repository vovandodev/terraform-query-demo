
import {
  to       = aws_instance.all_0
  provider = aws
  identity = {
    account_id = "533284743133"
    id         = "i-0cc773dc5a61c03db"
    region     = "us-west-2"
  }
}

resource "aws_instance" "all_0" {
  provider                             = aws
  ami                                  = "ami-00d0233324b9a246c"
  associate_public_ip_address          = true
  disable_api_stop                     = false
  disable_api_termination              = false
  ebs_optimized                        = false
  force_destroy                        = null
  get_password_data                    = false
  hibernation                          = false
  host_id                              = ""
  iam_instance_profile                 = ""
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  key_name                             = "terraform-query-demo-key"
  monitoring                           = false
  placement_partition_number           = 0
  region                               = "us-west-2"
  secondary_private_ips                = []
  security_groups                      = ["terraform-query-demo-sg"]
  source_dest_check                    = true
  subnet_id                            = "subnet-083ac074087f33c3b"
  tags = {
    Name    = "terraform-query-demo-fedora-4c599674"
    OS      = "Fedora"
    Project = "terraform-query-demo"
    managed = "terraform"
  }
  tags_all = {
    Name    = "terraform-query-demo-fedora-4c599674"
    OS      = "Fedora"
    Project = "terraform-query-demo"
    managed = "terraform"
  }
  tenancy                     = "default"
  user_data                   = null
  user_data_replace_on_change = null
  volume_tags                 = null
  vpc_security_group_ids      = ["sg-0c33d66b287387c28"]
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }
  cpu_options {
    core_count       = 1
    threads_per_core = 1
  }
  credit_specification {
    cpu_credits = "standard"
  }
  enclave_options {
    enabled = false
  }
  maintenance_options {
    auto_recovery = "default"
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }
  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }
  root_block_device {
    delete_on_termination = true
    encrypted             = false
    iops                  = 3000
    kms_key_id            = ""
    tags                  = {}
    tags_all              = {}
    throughput            = 125
    volume_size           = 5
    volume_type           = "gp3"
  }
  timeouts {
    create = null
    delete = null
    read   = null
    update = null
  }
}

import {
  to       = aws_instance.all_1
  provider = aws
  identity = {
    account_id = "533284743133"
    id         = "i-09478fd0b99179754"
    region     = "us-west-2"
  }
}

resource "aws_instance" "all_1" {
  provider                             = aws
  ami                                  = "ami-0b2c0821853f5c7be"
  associate_public_ip_address          = true
  disable_api_stop                     = false
  disable_api_termination              = false
  ebs_optimized                        = false
  force_destroy                        = null
  get_password_data                    = false
  hibernation                          = false
  host_id                              = ""
  iam_instance_profile                 = ""
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  key_name                             = "terraform-query-demo-key"
  monitoring                           = false
  placement_partition_number           = 0
  region                               = "us-west-2"
  secondary_private_ips                = []
  security_groups                      = ["terraform-query-demo-sg"]
  source_dest_check                    = true
  subnet_id                            = "subnet-083ac074087f33c3b"
  tags = {
    Managed = "terraform"
    Name    = "terraform-query-demo-amazon-linux-9e8964c6"
    OS      = "Amazon Linux 2"
    Project = "terraform-query-demo"
  }
  tags_all = {
    Managed = "terraform"
    Name    = "terraform-query-demo-amazon-linux-9e8964c6"
    OS      = "Amazon Linux 2"
    Project = "terraform-query-demo"
  }
  tenancy                     = "default"
  user_data                   = null
  user_data_replace_on_change = null
  volume_tags                 = null
  vpc_security_group_ids      = ["sg-0c33d66b287387c28"]
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }
  cpu_options {
    core_count       = 1
    threads_per_core = 1
  }
  credit_specification {
    cpu_credits = "standard"
  }
  enclave_options {
    enabled = false
  }
  maintenance_options {
    auto_recovery = "default"
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }
  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }
  root_block_device {
    delete_on_termination = true
    encrypted             = false
    iops                  = 100
    kms_key_id            = ""
    tags                  = {}
    tags_all              = {}
    throughput            = 0
    volume_size           = 8
    volume_type           = "gp2"
  }
  timeouts {
    create = null
    delete = null
    read   = null
    update = null
  }
}
