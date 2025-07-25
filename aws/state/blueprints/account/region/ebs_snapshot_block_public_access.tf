resource "aws_ebs_snapshot_block_public_access" "this" {
  state = var.flags.ebs_snapshot_block_public_access ? "block-all-sharing" : "unblocked"
}
