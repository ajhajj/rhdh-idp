#!/bin/bash

GUID=4m6mp
sed -i -e "s/<GUID>/${GUID}/g" 5-app-config-rhdh.yaml
sed -i -e "s/<GUID>/${GUID}/g" 6-backstage.yaml
