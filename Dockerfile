# Use a lightweight official Python image
FROM python:3.11-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Create working directory
WORKDIR /app

# Copy dependency files first
COPY requirements.txt .

# Install Python dependencies
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Copy everything else
COPY . .

# Set startup command (can be overridden)
CMD ["streamlit", "run", "Chatbot.py", "--server.enableCORS=false", "--server.enableXsrfProtection=false"]
