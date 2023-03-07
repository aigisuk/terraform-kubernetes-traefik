# Terraform Kubernetes Traefik Module
A Terraform module to provision [Traefik](https://traefik.io/traefik/) (v2.x) on a Kubernetes cluster via the [helm terraform provider](https://registry.terraform.io/providers/hashicorp/helm/latest).

![Traefik Dashboard](https://res.cloudinary.com/qunux/image/upload/v1658329325/Screenshot_2022-07-20_at_15-59-24_Traefik_cropped_ve9kyu.webp)

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| namespace | Namespace to install traefik chart into (created if non-existent on target cluster) | string | `traefik` | no |
| traefik_chart_version | Version of Traefik chart to install | string | `21.1.0` | no |
| timeout_seconds | Helm chart deployment can sometimes take longer than the default 5 minutes. Set a custom timeout (secs) | number | `800` | no |
| replica_count | Number of replica pods to create | number | `1` | no |
| values_file | Name of the traefik helm chart values file to use | string | `values.yaml` | no |