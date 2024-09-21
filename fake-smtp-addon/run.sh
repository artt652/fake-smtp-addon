#!/bin/bash

# Read environment variables from Home Assistant Add-on configuration
export TELEGRAM_BOT_TOKEN="$TELEGRAM_BOT_TOKEN"
export TELEGRAM_CHAT_ID="$TELEGRAM_CHAT_ID"

# Check if the required environment variables are set
if [ -z "$TELEGRAM_BOT_TOKEN" ] || [ -z "$TELEGRAM_CHAT_ID" ]; then
  echo "Error: Missing TELEGRAM_BOT_TOKEN or TELEGRAM_CHAT_ID environment variables."
  exit 1
fi

# Start the fake SMTP server
python3 /usr/src/app/smtp_server.py