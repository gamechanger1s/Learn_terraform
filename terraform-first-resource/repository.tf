resource "github_repository" "terraform-first-repo" {
  name       = "Gitttttttttttttttttttttttttttttttttdddttt"
  visibility = "public"
  auto_init  = true
}

output "terraform-first-repo-rl" {
  value = github_repository.terraform-first-repo.html_url
}

