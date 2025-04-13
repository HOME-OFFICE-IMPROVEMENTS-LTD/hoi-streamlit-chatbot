#!/bin/bash

echo "🚀 Starting Streamlit App..."

python3 --version
pip3 --version

echo "📦 Installing dependencies"
pip3 install --upgrade pip
pip3 install -r requirements.txt

PORT=${PORT:-8000}
echo "🌍 Binding to PORT: $PORT"

echo "💬 Launching Chatbot..."
streamlit run Chatbot.py \
    --server.port $PORT \
    --server.address 0.0.0.0 \
    --server.enableCORS false \
    --server.enableXsrfProtection false






