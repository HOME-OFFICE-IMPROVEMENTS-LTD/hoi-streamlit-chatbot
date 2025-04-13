#!/bin/bash

echo "🚀 Starting Streamlit App..."

# Show Python and pip versions
python3 --version
pip3 --version

# Upgrade pip and install dependencies
echo "📦 Installing dependencies"
pip3 install --upgrade pip
pip3 install -r requirements.txt

# Use PORT from environment or default to 8000 (Azure expects 8000)
PORT=${PORT:-8000}
echo "🌍 Binding to PORT: $PORT"

# Run Streamlit
echo "💬 Launching Chatbot..."
exec streamlit run Chatbot.py \
    --server.port $PORT \
    --server.address 0.0.0.0 \
    --server.enableCORS false \
    --server.enableXsrfProtection false







