function site::decrypt_certs(String $encrypted_cert) >> String {
  exec { 'decrypt cert via eyaml':
    command  => 'eyaml decrypt -s $encrypted_cert',
    provider => shell,
  }
}
