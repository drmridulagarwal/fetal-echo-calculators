#!/bin/bash
cd "$(dirname "$0")"
echo "Deploying to Firebase Hosting..."
firebase deploy --only hosting
echo ""
echo "Done! Live at:"
echo "https://fetal-echo-calculators.web.app"
