#!/bin/sh

vagrant up

echo "############Linking java dependencies to local dev environment"
sudo rm -rf /opt/microsoft/sdk/servicefabric/java/packages/lib/
sudo mkdir -p /opt/microsoft/sdk/servicefabric/java/packages/lib/
sudo cp -r tmp/lib/ /opt/microsoft/sdk/servicefabric/java/packages/lib/