resource "routeros_interface_ethernet" "interfaces" {
  for_each = var.interfaces

  factory_name = each.key
  name         = each.key
  comment      = each.value.comment
  l2mtu        = each.value.l2mtu
  mtu          = each.value.mtu
}
