file {'/tmp/hello.txt':
  ensure	=> "file",
  content   	=> "Hello, World\n",
  owner 	=> "demouser",
  group 	=> "demouser",
  mode 		=> "0755",
}
