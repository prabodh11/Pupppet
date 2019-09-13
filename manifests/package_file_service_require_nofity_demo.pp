#Demo of Notify and Require
package { 'httpd':
  ensure => installed,

}

file { '/var/www/html/index.html':
  source	=> '/var/tmp/index.html',
  notify 	=> Service['httpd'],
  require 	=> Package['httpd'],
}

service { 'httpd':
  enable	=> 'true',
  ensure    => 'running',
  require   => [Package['httpd'], File['/var/www/html/index.html']],
}
