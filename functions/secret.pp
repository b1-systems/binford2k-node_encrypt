function node_encrypt::secret(
  Variant[String, Sensitive[String]] $data,
  Optional[String] $destination = undef,
) >> Deferred {
  if $destination {
    Deferred('node_decrypt', [node_encrypt($data, $destination)])
  } else {
    Deferred('node_decrypt', [node_encrypt($data)])
  }
}
