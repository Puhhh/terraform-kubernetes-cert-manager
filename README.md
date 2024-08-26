<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.14.0 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.31.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.cert-manager](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [kubernetes_namespace.cert-manager-namespace](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cert-manager-namespace"></a> [cert-manager-namespace](#input\_cert-manager-namespace) | Cert Manager Namespace | `string` | `"cert-manager"` | no |
| <a name="input_helm-chart-name"></a> [helm-chart-name](#input\_helm-chart-name) | Helm Chart Name | `string` | `"cert-manager"` | no |
| <a name="input_helm-chart-repo"></a> [helm-chart-repo](#input\_helm-chart-repo) | Helm Chart Repo | `string` | `"https://charts.jetstack.io/"` | no |
| <a name="input_helm-chart-version"></a> [helm-chart-version](#input\_helm-chart-version) | Helm Chart Version | `string` | `"1.15.1"` | no |
| <a name="input_helm-custom-values"></a> [helm-custom-values](#input\_helm-custom-values) | Use Helm Custom Values | `bool` | `false` | no |
| <a name="input_helm-custom-values-path"></a> [helm-custom-values-path](#input\_helm-custom-values-path) | Helm Custom Values Path | `string` | `"values.yaml"` | no |
| <a name="input_helm-name"></a> [helm-name](#input\_helm-name) | Helm Release Name | `string` | `"cert-manager"` | no |
| <a name="input_kubeconfig-path"></a> [kubeconfig-path](#input\_kubeconfig-path) | Kubeconfig Path | `string` | `"~/.kube/config"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## How to use

Change S3 values 

## Optional 

If you need to change the default values of variables, add them to the *terraform.tfvars* file.

If the value of *helm-custom-values* is *true*, *values.yaml* will be used. You can modify *values.yaml*.
