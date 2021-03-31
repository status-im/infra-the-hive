# Description

This role configures [Cortex](https://github.com/TheHive-Project/Cortex/) which is the service used by [TheHive](https://github.com/TheHive-Project/TheHive) to analyze data and trigger actions in multiple managed systems.

# Configuration

```yml
cortex_port: 9001
cortex_http_secret: 'super-long-secret'
cortex_search_cluster_name: 'cortex'
cortex_search_nodes:
  - { name: "node-01", addr: "10.1.2.1", port: 1234 }
  - { name: "node-02", addr: "10.1.2.2", port: 1234 }
  - { name: "node-03", addr: "10.1.2.3", port: 1234 }
```

# Known Issues

Based on investigation in [#2](https://github.com/status-im/infra-the-hive/issues/2) Cortex does not handle well [our Docker configuration]() which forces us to [remove it completely](./tasks/docker.yml) on the host running Cortex.

The issue with this fix is that it will be reversed if someone ever runs the bootstrap role again this fix __will be undone__.
