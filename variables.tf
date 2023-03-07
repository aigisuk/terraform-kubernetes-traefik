variable "namespace" {
  description = "Namespace to install traefik chart into"
  type        = string
  default     = "traefik"
}

variable "traefik_chart_version" {
  description = "Version of Traefik chart to install"
  type        = string
  default     = "21.1.0" # See https://artifacthub.io/packages/helm/traefik/traefik for latest version(s)
}

# Helm chart deployment can sometimes take longer than the default 5 minutes
variable "timeout_seconds" {
  type        = number
  description = "Helm chart deployment can sometimes take longer than the default 5 minutes. Set a custom timeout here."
  default     = 800 # 10 minutes
}

variable "replica_count" {
  description = "Number of replica pods to create"
  type        = number
  default     = 1
}

variable "values_file" {
  description = "The name of the traefik helmchart values file to use"
  type        = string
  default     = "values.yaml"
}