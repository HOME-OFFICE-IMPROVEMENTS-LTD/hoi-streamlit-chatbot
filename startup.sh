#!/bin/bash

echo "🚀 Activating Python runtime"

python3 --version
pip3 --version

echo "📦 Installing dependencies"
pip3 install --upgrade pip
pip3 install -r requirements.txt

echo "💬 Launching Streamlit Chatbot..."
streamlit run Chatbot.py --server.enableCORS false --server.enableXsrfProtection false

