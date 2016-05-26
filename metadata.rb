name             'raven-proxy'
maintainer       'Raven Tools'
maintainer_email 'phil@raventools.com'
license          'BSD'
description      'Installs/Configures raven-proxy'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe "raven-proxy::default", "Install nginx and remove default config"
recipe "raven-proxy::elasticsearch", "Configure ElasticSearch proxy"

attribute "raven_proxy",
    :display_name => "Raven Proxy",
    :type => "hash"

attribute "raven_proxy/elasticsearch/endpoint",
    :display_name => "ElasticSearch Endpoint",
    :description => "ElasticSearch Endpoint",
    :required => "recommended",
    :type => "string",
    :recipes => ["raven-proxy::elasticsearch"]

attribute "raven_proxy/elasticsearch/port",
    :display_name => "Proxy Listen Port",
    :description => "Proxy Listen Port",
    :required => "recommended",
    :type => "string",
    :recipes => ["raven-proxy::elasticsearch"]
