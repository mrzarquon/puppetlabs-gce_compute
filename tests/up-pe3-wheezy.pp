gce_instance { 'pe3-wheezy':
    ensure       => present,
    description  => 'web server',
    machine_type => 'n1-standard-1',
    zone         => 'us-central1-a',
    network      => 'default',
    image        => 'projects/debian-cloud/global/images/debian-7-wheezy-v20130926',
    tags         => ['web'],
    service_account_scopes => ['https://www.googleapis.com/auth/bigquery',
                    'https://www.googleapis.com/auth/devstorage.read_write',
                    'https://www.googleapis.com/auth/compute'],
    modules      => ['puppetlabs-mysql', 'puppetlabs-apache', 'puppetlabs-stdlib', 'puppetlabs-concat'],
    enc_classes  => {'mysql::server' => { 'config_hash' => { 'bind_address' => '127.0.0.1' }},
                     'apache' => nil,
                     'mysql::python' => nil
                    },
}
