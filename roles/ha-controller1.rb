name "ha-controller1"
description "Nova Controller 1 (HA)"
run_list(
  "role[base]",
  "role[mysql-master]",
  "role[rabbitmq-server]",
  "role[keystone]",
  "role[glance-setup]",
  "role[glance-registry]",
  "role[glance-api]",
  "role[nova-setup]",
  "role[nova-network-controller]",
  "role[nova-scheduler]",
  "role[nova-api-ec2]",
  "role[nova-api-os-compute]",
  "role[cinder-setup]",
  "role[cinder-api]",
  "role[cinder-scheduler]",
  "role[nova-cert]",
  "role[nova-vncproxy]",
  "role[horizon-server]",
  "role[openstack-ha]"
)

override_attributes "keepalived" => { "shared_address" => "true" }
