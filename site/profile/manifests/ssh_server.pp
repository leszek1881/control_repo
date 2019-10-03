class profile::ssh_server {
    package {'openssh-server':
      ensure => present,
    }
    service {'sshd':
      ensure => 'running',
      enable => 'true',
    }
    ssh_authorized_key {'root@master.puppet.vm':
      ensure => 'present',
      user => 'root',
      type => 'ssh-rsa',
      key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC7/pWA44MDkyIJoCbpkkBhoWg9H5hIx1FKMb89V2ExV4LIRxvGlxCy0M8dqX7EoHpPCzx20oRko7DSXYuq8dflnOKTeRsP/CL6Th9Awi9GVsZmtvnw5b98MJydmQrc4nyuJOqHQ5kb8ojeI443ud5r6/sLiVkWR9JvHfQW87+vecIRlTpAR4vEu6aJ+VsL+4OYYFf0TNkjloIk4sO558GBz05FVTbaRQmB9FSIlZf2s1TxuPoMp1a7+nqXzgNZ1sTdjsITgYT73MT9ixmbTlsVd8U/EuYherAIT8Xxvfkk4UfVcdgB/kdaNIt9OsPB29/b991Jfj60IS14laVVpqmN',
    }
}
