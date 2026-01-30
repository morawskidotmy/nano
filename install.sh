#!/bin/bash
set -e

cd "$(dirname "$0")"

echo "Building nano..."
cd src
make -j$(nproc) 2>&1

echo "Installing to /usr/local/bin/nano..."
sudo cp nano /usr/local/bin/nano

echo "Done! Installed: $(which nano)"
nano --version | head -1
