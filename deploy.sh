#!/usr/bin/env bash

docker run quay.io/ukhomeofficedigital/drone-trigger:latest \
  --drone-server "https://drone.acp.homeoffice.gov.uk" \
  --drone-token "$1" \
  --repo "UKHomeOffice/droning-on" \
  --number "$2" \
  --deploy-to "${target_env}" \
  --param "PROMOTE_FROM=dev"
