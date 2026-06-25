module "mlm_migration_host" {
  source = "../host"

  base_configuration            = var.base_configuration
  name                          = var.name
  roles                         = ["migration_host"]
  use_os_released_updates       = var.use_os_released_updates
  install_salt_bundle           = var.install_salt_bundle
  additional_repos              = var.additional_repos
  additional_repos_only         = var.additional_repos_only
  additional_packages           = var.additional_packages
  quantity                      = var.quantity
  swap_file_size                = var.swap_file_size
  ssh_key_path                  = var.ssh_key_path
  ipv6                          = var.ipv6
  connect_to_base_network       = var.connect_to_base_network
  connect_to_additional_network = var.connect_to_additional_network
  image                         = var.image
  provision                     = var.provision
  provider_settings             = var.provider_settings
  main_disk_size                = var.main_disk_size
  additional_disk_size          = var.additional_disk_size
  second_additional_disk_size   = var.second_additional_disk_size
  volume_provider_settings      = var.volume_provider_settings

  grains = merge({
    prerelease_repo = var.prerelease_repo
  }, var.grains)
}

output "configuration" {
  value = module.mlm_migration_host.configuration
}
