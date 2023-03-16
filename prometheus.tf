data "template_file" "prometheus_values" {
  template = "${file("files/templates/prometheus-values.tpl")}"
}

resource "helm_release" "prometheus" {
  chart      = "prometheus"
  name       = "prometheus"
  namespace  = var.namespace
  repository = var.charts-prometheus
  version    = var.version-prometheus

  values     = [
    data.template_file.prometheus_values.rendered
  ]
}