#!/bin/bash

echo "✅ Installing Python packages"
pip install --upgrade pip
pip install -r requirements.txt

echo "🚀 Starting Streamlit App"
streamlit run Chatbot.py --server.enableCORS false --server.enableXsrfProtection false --server.port 8000 --server.headless true


