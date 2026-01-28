#!/bin/bash
set -e

# Simple deploy script for EC2
APP_DIR="/var/www/html"

echo "Creating app directory: $APP_DIR"
sudo mkdir -p "$APP_DIR"

echo "Copying new files to $APP_DIR"
sudo cp -r * "$APP_DIR"

echo "Setting permissions"
sudo chown -R apache:apache "$APP_DIR" 2>/dev/null || true
sudo chown -R www-www-data "$APP_DIR" 2>/dev/null || true

echo "Deployment complete - $(date)"
