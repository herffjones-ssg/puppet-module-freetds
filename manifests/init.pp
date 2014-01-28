# == Class: freetds
#
# Installs and configures FreeTDS and ODBC for PHP
#
class freetds {

  $packages=['php-odbc','php-pdo','php-mssql','freetds']

  package { $packages:
    ensure => 'present',
  }

  file { '/etc/odbcinst.ini':
    ensure => 'file',
    source => 'puppet:///modules/freetds/odbcinst.ini',
    owner  => '0',
    group  => '0',
    mode   => '644',
  }

}
