# Tinyssh

tinyssh is a little ruby script to batch execute command, upload/download file or directory with ssh

## Installation

Add this line to your application's Gemfile:

    gem 'tinyssh'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tinyssh

## Usage

```
Usage: ruby tinyssh.rb run|upload|download <position parameters> [option]

Specific options:
    -u, --user [user]                Specify a user for accessing remote hosts.(default: root)
    -p, --port [port]                Port to connect to on the remote host(default: 22)
    -t, --timeout [time]             Set the command timeout to seconds(default: 0)
    -l, --list-file [file]           File containing a list of hosts' IP Address
    -o, --output-file [file]         Output result to log file
    -i, --identity-key [key]         identity (private) key for authentication(default: /root/.ssh/id_rsa)
    -n, --number-of-thread [number]  Specify the number of concurrent jobs for each execution
    -h, --help                       Show this message
```

- Run command

```
ruby tinyssh.rb run "command" -l my_host.txt -u root -p 22 -t 10 -i my_keys -n 10
```

- Upload file or directory

```
ruby tinyssh.rb upload src_file_or_directory dst_directory -l my_host.txt -u root -p 22 -t 10 -i my_keys -n 10
```

- Download file or directory

```
ruby tinyssh.rb download src_file_or_directory dst_directory -l my_host.txt -u root -p 22 -t 10 -i my_keys -n 10
```

Note: `run`, `upload`, `download`, can be `r`, `u`, `d`
Note: if you use key to authorize and your key is `/root/.ssh/id_rsa`, you don't need to specify `-i /root/.ssh/id_rsa`, but it will ask for password, just press enter


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
