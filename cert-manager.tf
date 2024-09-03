resource "kubernetes_namespace" "cert-manager-namespace" {
  metadata {
    name = var.cert-manager-namespace
  }
}

resource "helm_release" "cert-manager" {
  namespace  = kubernetes_namespace.cert-manager-namespace.metadata[0].name
  name       = var.helm-name
  chart      = var.helm-chart-name
  repository = var.helm-chart-repo
  version    = var.helm-chart-version

  values = var.helm-custom-values ? [file(var.helm-custom-values-path)] : []
}
