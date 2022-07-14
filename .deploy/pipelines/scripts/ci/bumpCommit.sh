#!/bin/sh
release-it --patch --ci
head package.json
cat service.yaml
.deploy/pipelines/scripts/ci/name-version.sh > ./service.yaml
git commit -m "bump" && git push
