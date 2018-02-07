#!/bin/bash
if puppet config print server | grep -v -q `puppet config print certname`; then
  echo "This task can only be run on the master node."; 
  exit 1
fi
puppet module install beersy-cert_sign --target-dir /etc/puppetlabs/code/modules/
puppet module install beersy-hiera_lookup --target-dir /etc/puppetlabs/code/modules/
puppet module install beersy-pql_query --target-dir /etc/puppetlabs/code/modules/
puppet module install zack-exports --target-dir /etc/puppetlabs/code/modules/
puppet module install nate-purge_node --target-dir /etc/puppetlabs/code/modules/
puppet module install tspy-code_deploy --target-dir /etc/puppetlabs/code/modules/
echo 'Task completed'