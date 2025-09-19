# 🚀 End-to-End Data Engineering Project: dbt, Snowflake & Apache Airflow  

## 📌 Overview  
This project is a **complete data engineering pipeline** built with modern tools. It covers **data ingestion, transformation, and orchestration** in a scalable and production-like setup.  

- **dbt (Data Build Tool)** → Data modeling & transformation  
- **Snowflake** → Cloud-based data warehouse  
- **Apache Airflow** → Workflow scheduling & orchestration  
- **Python** → Scripting & automation  

---

## 🛠️ Tech Stack  
- **dbt Core** – Transformations, testing, and data modeling  
- **Snowflake** – Cloud-native data warehouse  
- **Apache Airflow** – Orchestration & automation  
- **Python** – Scripting and environment setup  
- **Git/GitHub** – Version control  

---

## 📂 Project Structure  
```bash
snowflake_data_project/
│── models/          # dbt models (staging, marts)
│── dags/            # Airflow DAGs (for scheduling dbt runs/tests)
│── logs/            # Airflow logs
│── seeds/           # Sample seed data for dbt
│── macros/          # dbt macros
│── dbt_project.yml  # dbt project config file
│── README.md        # Project documentation
```

---

## ⚙️ Setup & Installation  

### 1️⃣ Clone the Repository  
```bash
git clone https://github.com/your-username/dbt_snowflake_project.git
cd dbt_snowflake_project
```

### 2️⃣ Set Up a Virtual Environment  
```bash
# Create venv
python -m venv venv

# Activate (Mac/Linux)
source venv/bin/activate  

# Activate (Windows)
venv\Scripts\activate
```

### 3️⃣ Configure dbt Connection to Snowflake  
Update your **`profiles.yml`** located in `~/.dbt/` with your Snowflake credentials:  

```yaml
snowflake_project:
  outputs:
    dev:
      type: snowflake
      account: <your_snowflake_account>
      user: <dbt_user>
      password: <your_password>
      role: ACCOUNTADMIN
      database: finance_db
      warehouse: finance_wh
      schema: raw
  target: dev
```

⚠️ **Note:** Never commit credentials. Use environment variables or a `.env` file (add to `.gitignore`).  

---

## ▶️ Running the Pipeline  

### Run dbt Models  
```bash
dbt run
```

### Run dbt Tests (Validate Data)  
```bash
dbt test
```

### Start Apache Airflow  
```bash
airflow standalone
```
- Access the Airflow UI at **http://localhost:8080**  
- Trigger the `dbt_snowflake_pipeline` DAG  

---

## 📊 Example Workflow  
✅ Load raw data →  
✅ Transform with dbt models →  
✅ Validate with dbt tests →  
✅ Orchestrate daily runs via Airflow  


## 📬 Contact  
👤 **Ziad Abdelraouf**  
- 💼 [LinkedIn](www.linkedin.com/in/ziad-abdelraouf)  
- 📂 [GitHub](https://github.com/Ziadabdelraouf)  
