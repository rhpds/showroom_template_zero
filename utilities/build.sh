#!/usr/bin/env bash
#

echo "Starting build process..."
echo "Removing old site..."
rm -rf ./www/*
echo "Building new site..."
podman run --rm --name showroom-builder --platform linux/amd64 -v "./:/antora" docker.io/antora/antora zero-touch-site.yml
#podman run --rm --name showroom-builder --platform linux/amd64 -v "./:/antora" docker.io/antora/antora site.yml
echo "Build process complete. Check the ./www folder for the generated site."
echo "To view the site locally, run the following command: utilities/serve.sh"