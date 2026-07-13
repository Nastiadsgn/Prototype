#!/bin/sh
cd "$(dirname "$0")"
echo ""
echo "  Databao is running at:  http://localhost:5173"
echo ""
echo "  Press Ctrl+C to stop."
echo ""
python3 -m http.server 5173
