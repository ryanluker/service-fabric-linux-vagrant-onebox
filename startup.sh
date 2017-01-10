#!/bin/sh

echo "############Setup folders for vagrant syncing"
sudo rm -rf ../service_fabric_data
sudo mkdir -p ../service_fabric_data
echo "############Setup folders for vagrant syncing - DONE"

vagrant up

echo "############Linking java dependencies to local dev environment"
sudo rm -rf /opt/microsoft/sdk/servicefabric/java/packages/lib/
sudo mkdir -p /opt/microsoft/sdk/servicefabric/java/packages/lib/
sudo cp -r tmp/lib/ /opt/microsoft/sdk/servicefabric/java/packages/lib/
echo "############Linking java dependencies to local dev environment - DONE"