package { 'mysql':
  ensure	=> "installed",
}

file { '/etc/mysql/mysql.cnf':
  source	=> "/var/tmp/my.cnf",
  notify	=> Service['mysql'],
}

service {'mysql':
  ensure	=> 'running',
  enable	=> 'true'
}
