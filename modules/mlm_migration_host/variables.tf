variable "base_configuration" {
  description = "use module.base.configuration, see the main.tf example file"
}

variable "name" {
  description = "hostname, without the domain part"
  type        = string
}

variable "image" {
  description = "OS image (slemicro55o, sles15sp6o, etc.)"
  type        = string
}

variable "use_os_released_updates" {
  description = "Apply all updates from OS repos"
  default     = false
}

variable "install_salt_bundle" {
  description = "use true to install the venv-salt-minion package"
  default     = true
}

variable "additional_repos" {
  description = "extra repositories in the form {label = url}"
  default     = {}
}

variable "additional_repos_only" {
  description = "whether to exclusively use additional repos"
  default     = false
}

variable "additional_packages" {
  description = "extra packages to install"
  default     = []
}

variable "quantity" {
  description = "number of hosts like this one"
  default     = 1
}

variable "grains" {
  description = "custom grain map to be added to this host's configuration"
  default     = {}
}

variable "swap_file_size" {
  description = "Swap file size in MiB, or 0 for none"
  default     = 0
}

variable "ssh_key_path" {
  description = "path of additional pub ssh key you want to use to access VMs"
  default     = null
}

variable "ipv6" {
  description = "IPv6 tuning: enable it, accept the RAs"
  default = {
    enable    = true
    accept_ra = true
  }
}

variable "connect_to_base_network" {
  description = "true if you want a card connected to the main network"
  default     = true
}

variable "connect_to_additional_network" {
  description = "true if you want a card connected to the additional network (if any)"
  default     = false
}

variable "provision" {
  description = "Indicates whether servers should be provisioned or not"
  type        = bool
  default     = true
}

variable "provider_settings" {
  description = "Map of provider-specific settings"
  default     = {}
}

variable "main_disk_size" {
  description = "Size of main disk, defined in GiB"
  default     = 200
}

variable "additional_disk_size" {
  description = "Size of an additional disk, defined in GiB (repository disk for server)"
  default     = 0
}

variable "second_additional_disk_size" {
  description = "Size of a second additional disk, defined in GiB (database disk for server)"
  default     = 0
}

variable "volume_provider_settings" {
  description = "Map of volume-provider-specific settings"
  default     = {}
}

variable "prerelease_repo" {
  description = "Optional URL to pre-release RPM repository for testing unreleased versions"
  type        = string
  default     = ""
}
