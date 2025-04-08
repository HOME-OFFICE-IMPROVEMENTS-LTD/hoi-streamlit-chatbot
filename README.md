# 🎈 Starter AI Chatbot for Azure

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/data:application/json,%7B%22%24schema%22%3A%20%22https%3A//schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json%23%22%2C%20%22contentVersion%22%3A%20%221.0.0.0%22%2C%20%22parameters%22%3A%20%7B%22siteName%22%3A%20%7B%22type%22%3A%20%22string%22%2C%20%22metadata%22%3A%20%7B%22description%22%3A%20%22Name%20of%20the%20Web%20App.%22%7D%7D%2C%20%22hostingPlanName%22%3A%20%7B%22type%22%3A%20%22string%22%2C%20%22metadata%22%3A%20%7B%22description%22%3A%20%22Name%20of%20the%20App%20Service%20Plan.%22%7D%7D%2C%20%22location%22%3A%20%7B%22type%22%3A%20%22string%22%2C%20%22defaultValue%22%3A%20%22%5BresourceGroup%28%29.location%5D%22%2C%20%22metadata%22%3A%20%7B%22description%22%3A%20%22Azure%20region.%22%7D%7D%2C%20%22openaiKey%22%3A%20%7B%22type%22%3A%20%22securestring%22%2C%20%22metadata%22%3A%20%7B%22description%22%3A%20%22Your%20OpenAI%20API%20key.%22%7D%7D%2C%20%22sku%22%3A%20%7B%22type%22%3A%20%22object%22%2C%20%22defaultValue%22%3A%20%7B%22name%22%3A%20%22B1%22%2C%20%22tier%22%3A%20%22Basic%22%7D%2C%20%22metadata%22%3A%20%7B%22description%22%3A%20%22Select%20the%20SKU%20for%20the%20App%20Service%20Plan.%22%7D%7D%7D%2C%20%22resources%22%3A%20%5B%7B%22type%22%3A%20%22Microsoft.Web/serverfarms%22%2C%20%22apiVersion%22%3A%20%222022-03-01%22%2C%20%22name%22%3A%20%22%5Bparameters%28%27hostingPlanName%27%29%5D%22%2C%20%22location%22%3A%20%22%5Bparameters%28%27location%27%29%5D%22%2C%20%22sku%22%3A%20%7B%22name%22%3A%20%22%5Bparameters%28%27sku%27%29.name%5D%22%2C%20%22tier%22%3A%20%22%5Bparameters%28%27sku%27%29.tier%5D%22%7D%2C%20%22properties%22%3A%20%7B%7D%7D%2C%20%7B%22type%22%3A%20%22Microsoft.Web/sites%22%2C%20%22apiVersion%22%3A%20%222022-03-01%22%2C%20%22name%22%3A%20%22%5Bparameters%28%27siteName%27%29%5D%22%2C%20%22location%22%3A%20%22%5Bparameters%28%27location%27%29%5D%22%2C%20%22dependsOn%22%3A%20%5B%22%5BresourceId%28%27Microsoft.Web/serverfarms%27%2C%20parameters%28%27hostingPlanName%27%29%29%5D%22%5D%2C%20%22properties%22%3A%20%7B%22serverFarmId%22%3A%20%22%5BresourceId%28%27Microsoft.Web/serverfarms%27%2C%20parameters%28%27hostingPlanName%27%29%29%5D%22%2C%20%22siteConfig%22%3A%20%7B%22appSettings%22%3A%20%5B%7B%22name%22%3A%20%22OPENAI_API_KEY%22%2C%20%22value%22%3A%20%22%5Bparameters%28%27openaiKey%27%29%5D%22%7D%5D%7D%7D%7D%5D%2C%20%22outputs%22%3A%20%7B%22siteUrl%22%3A%20%7B%22type%22%3A%20%22string%22%2C%20%22value%22%3A%20%22%5Bconcat%28%27https%3A//%27%2C%20parameters%28%27siteName%27%29%2C%20%27.azurewebsites.net%27%29%5D%22%7D%7D%7D)


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
