# Description

This role configures [The Hive](https://thehive-project.org/) - an Open Source security incident response solution.

# Configuration

The most basic configuration would include:
```yaml
# Application HTTP secret
the_hive_app_http_secret: 'very-long-random-string'

# Dirst admin user auth
the_hive_admin_pass: 'secret-admin-password'

# Cassandra cluster details
the_hive_db_user: 'thehive'
the_hive_db_pass: 'super-secret-password'
the_hive_db_name: 'thp'
the_hive_db_keyspace: 'thehive'
the_hive_db_hosts:
  - { name: "node-01", addr: "10.1.2.1", port: 1234 }
  - { name: "node-02", addr: "10.1.2.2", port: 1234 }
  - { name: "node-03", addr: "10.1.2.3", port: 1234 }
```

# Details

The service depends on a [Cassandra](https://cassandra.apache.org/) cluster for state storage.

It also uses the local filesystem to store any files uploaded by the users.
