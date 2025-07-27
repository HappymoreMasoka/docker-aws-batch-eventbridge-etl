# 🎯 Serverless ETL Pipeline with AWS Batch + Fargate + Docker + S3

This project demonstrates a serverless, containerized **ETL (Extract, Transform, Load)** data pipeline using:

- **AWS Batch with Fargate** for job execution
- **Docker** to package the ETL script
- **Amazon S3** for input/output data
- **Python + Pandas** for processing

Ideal for learning AWS Batch architecture, running scheduled data jobs, and showing practical DevOps/Cloud engineering skills.

---

## 🔧 Tech Stack

| Service         | Purpose                          |
|----------------|----------------------------------|
| **AWS Batch**   | Manages compute resources & job scheduling |
| **Fargate**     | Serverless container compute     |
| **Docker**      | Packages ETL logic               |
| **Amazon S3**   | Stores input and output data     |
| **Python**      | Data processing (with Pandas)    |

---

## 🚀 Project Architecture

```text
┌────────────┐      ┌──────────────────┐
│   S3       │◄────►│  Python ETL Code │
│ (CSV Files)│      └──────────────────┘
└─────┬──────┘               │
      │                     ▼
      │        ┌───────────────────────────┐
      └───────►│ Docker Container (ETL)    │
               └───────────────────────────┘
                        │
                        ▼
              ┌────────────────────┐
              │ AWS Batch (Fargate)│
              └────────────────────┘
