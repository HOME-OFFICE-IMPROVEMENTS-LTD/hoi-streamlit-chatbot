# 🎈 Starter AI Chatbot for Azure

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FHOME-OFFICE-IMPROVEMENTS-LTD%2Fhoi-streamlit-chatbot%2Fmain%2Farm-templates%2FmainTemplate.json)






Starter example for building an OpenAI chatbot app using Streamlit and deploying it to Azure.

---

## 🌟 Overview of the App

This app demonstrates how to integrate OpenAI's GPT models with Streamlit to build a simple chatbot interface.

It’s designed for:
- Quick deployment 🧪  
- Easy testing 🧠  
- Zero-hassle hosting 🚀  

### ✅ Features
- Chatbot powered by OpenAI API
- Secure key handling via environment variables
- Simple UI with Streamlit
- One-click deploy to Azure via Marketplace

---

## ⚙️ Setup Instructions

### 1️⃣ Get an OpenAI API Key
Go to 👉 https://platform.openai.com/account/api-keys

- Click **+ Create new secret key**
- Save your key securely

---

### 2️⃣ Set the API Key in Azure
If deploying through Azure, the key will be set via the Azure portal (securely stored as an environment variable).

Running locally? Just set it manually:

```bash
export OPENAI_API_KEY='your-key-here'
```

---

### 3️⃣ Run the Chatbot Locally

```bash
# Create and activate a virtual environment
python -m venv .venv
source .venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Run the app
streamlit run Chatbot.py
```

---

## 💻 Run in Visual Studio Code (Dev Container)

If you're using [Visual Studio Code](https://code.visualstudio.com/) and have **Docker** installed, you can run this app instantly using a **Dev Container**.

### 🚀 Quick Start

1. **Clone the repo**

```bash
git clone https://github.com/HOME-OFFICE-IMPROVEMENTS-LTD/hoi-streamlit-chatbot.git
cd hoi-streamlit-chatbot
```

2. **Open the folder in VS Code**

3. If prompted, **"Reopen in Container"**, accept it.

> This will build the container with all dependencies automatically.

4. Once inside the container:

```bash
streamlit run Chatbot.py
```

💡 The `OPENAI_API_KEY` can be added to your `.env` file or exported in the terminal.

---

## 📄 License

Apache-2.0 License

---

## 🏢 Maintained by

**Home & Office Improvements Ltd.**  
🔗 https://hoiltd.com
