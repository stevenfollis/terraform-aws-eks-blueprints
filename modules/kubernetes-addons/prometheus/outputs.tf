output "argocd_gitops_config" {
  description = "Configuration used for managing the add-on with ArgoCD"
  value = var.manage_via_gitops ? merge(
    { enable = true },
    local.amp_gitops_config
  ) : null
}