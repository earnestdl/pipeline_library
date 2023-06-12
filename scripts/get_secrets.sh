#!/bin/bash
ARTIFACTORY_TOKEN=$(cat /run/secrets/ARTIFACTORY_TOKEN)
echo ARTIFACTORY_TOKEN=$ARTIFACTORY_TOKEN > /tmp/secrets
echo ARTIFACTORY_USR="${ARTIFACTORY_TOKEN%%:*}" >> /tmp/secrets
echo ARTIFACTORY_PWD="${ARTIFACTORY_TOKEN##*:}" >> /tmp/secrets
