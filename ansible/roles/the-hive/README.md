# Description

This role configures [The Hive](https://thehive-project.org/) - an Open Source security incident response solution.

# Configuration

The most basic configuration would include:
```yaml
the_hive_domain: 'the-hive.example.org'

# Application HTTP secret
the_hive_app_http_secret: 'very-long-random-string'

# Cassandra cluster details
the_hive_db_user: 'thehive'
the_hive_db_pass: 'super-secret-password'
the_hive_db_name: 'thp'
the_hive_db_keyspace: 'thehive'
the_hive_db_hosts:
  - { name: "node-01", addr: "10.1.2.1", port: 1234 }
  - { name: "node-02", addr: "10.1.2.2", port: 1234 }
  - { name: "node-03", addr: "10.1.2.3", port: 1234 }

# Cortex connection
the_hive_cortex_host: 'localhost'
the_hive_cortex_port: 9001
the_hive_cortex_user: 'thehive'
the_hive_cortex_pass: 'super-secret-password'
```

# OAuth

Optionally you can enable user autnetication via GitHub OAuth:
```yaml
# GitHub OAuth details
the_hive_oauth_client_id: 'asdasdasdasdasdasdasda'
the_hive_oauth_client_secret: '1231231231231231231231232131231'
the_hive_oauth_org_name: 'my-org'
```

# Details

The service depends on a [Cassandra](https://cassandra.apache.org/) cluster for state storage.

It also uses the local filesystem to store any files uploaded by the users.

# Login

After installation you can login using the default account: `admin@thehive.local`/`secret`
