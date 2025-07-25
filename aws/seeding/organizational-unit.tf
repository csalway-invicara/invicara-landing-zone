resource "aws_organizations_organizational_unit" "infrastructure" {
  name      = "Infrastructure"
  parent_id = aws_organizations_organization.this.roots[0].id
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_organizations_organizational_unit" "security" {
  name      = "Security"
  parent_id = aws_organizations_organization.this.roots[0].id
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_organizations_organizational_unit" "workloads" {
  name      = "Workloads"
  parent_id = aws_organizations_organization.this.roots[0].id
  lifecycle {
    prevent_destroy = true
  }
}
