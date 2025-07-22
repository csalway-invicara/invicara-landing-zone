resource "aws_ebs_snapshot_block_public_access" "this" {
  count = var.flags.ebs_snapshot_block_public_access ? 1 : 0

  state = "block-all-sharing"
}