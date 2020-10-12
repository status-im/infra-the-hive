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
