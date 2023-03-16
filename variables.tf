variable "kube_config" {
  # type    = string
  default = "~/.kube/config"
}

variable "namespace" {
  # type    = string
  default = "monitoring"
}

variable "charts-prometheus" {
  # type = string
  default = "https://prometheus-community.github.io/helm-charts"
}

variable "version-prometheus" {
  # type = string
  default = "19.7.2"
}
