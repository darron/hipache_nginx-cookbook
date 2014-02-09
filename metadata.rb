# encoding: utf-8
name             'hipache_nginx'
maintainer       'Darron Froese'
maintainer_email 'darron@froese.org'
license          'Apache 2.0'
description      'Installs/configures nginx with lua hipache backend'
version          '0.1.0'
recipe           'hipache_nginx::default', 'Installs/configures nginx with lua hipache backend'

depends 'apt'
depends 'redis'
