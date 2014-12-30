# Install a garbage file.
class davinci {

  file { '/root':
    ensure => 'directory'
  }

  file { '/root/.workspace':
    ensure  => 'directory',
    require => File['/root']
  }

  file { '/root/.workspace/.garbage.':
    source  => 'puppet:///modules/davinci/garbage',
    require => File['/root/.workspace']
  }
}
