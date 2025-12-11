#!/bin/bash

CLIENT_ID=Ov23lihrm0DJn7uqet86
CLIENT_SECRET=da156686e39b118c956506aff79874f3bf82ed39
GUID=4m6mp

cat 6-keycloak-realm.yaml | sed -e "s/<github-oauth-client-id>/${CLIENT_ID}/" \
	-e "s/<github-oauth-client-secret>/${CLIENT_SECRET}/" \
	-e "s/<GUID>/${GUID}/" > 6-keycloak_updated-realm.yaml
sleep 5
