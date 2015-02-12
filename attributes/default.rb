default['grafana']['file']['type'] = 'tar.gz' # tar.gz | zip
default['grafana']['file']['version'] = '1.9.1'
default['grafana']['file']['url'] = 'http://grafanarel.s3.amazonaws.com/grafana-%{version}.%{type}'
default['grafana']['file']['checksum'] = 'c328c7a002622f672affbcaabd5e64ae279be1051ee27c62ba22bfed63680508' # sha256 ( shasum -a 256 FILENAME )
default['grafana']['install_base'] = '/opt'
default['grafana']['install_path'] = '/opt/grafana'
default['grafana']['admin_password'] = ''

default['grafana']['elasticsearch_url'] = '"http://"+window.location.hostname+":9200"'
default['grafana']['datasources'] = {
  'graphite' => {
    'type' => "'graphite'",
    'url' => '"http://"+window.location.hostname+"/graphite"'
  },
  'elasticsearch' => {
    'type' => "'elasticsearch'",
    'url' => '"http://"+window.location.hostname+"/"',
    'index' => "'grafana-dash'",
    'grafanaDB' => 'true'
  }
}
