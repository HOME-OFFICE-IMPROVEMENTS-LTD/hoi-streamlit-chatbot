#!/bin/bash

echo "🚀 Activating Python runtime"
python --version
pip install --upgrade pip

echo "📦 Installing dependencies"
pip install -r requirements.txt

echo "💬 Launching Streamlit Chatbot..."
PORT=${PORT:-8000}
streamlit run Chatbot.py \
    --server.port $PORT \
    --server.address 0.0.0.0 \
    --server.enableCORS false \
    --server.enableXsrfProtection false





