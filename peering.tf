resource "aws_vpc_peering_connection" "default" {
    count = var.is_peering_required ? 0 : 1
  peer_vpc_id   = data.aws_vpc.default # acceptor 
  vpc_id        = aws_vpc.main.id

   accepter {
    allow_remote_vpc_dns_resolution = true
  }

  requester {
    allow_remote_vpc_dns_resolution = true
  }
}
