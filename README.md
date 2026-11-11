### 🚀 Enterprise Automated Linux Patching & AWS Infrastructure Pipeline

An end-to-end DevOps portfolio showcase demonstrating infrastructure provisioning on AWS, automated Linux systems lifecycle administration, configuration management orchestration, and environment
telemetry tracking.

![AWS](https://img.shields.io/badge/AWS_Cloud-%23FF9900.svg?style=for-the-badge&logo=aws-cloud&logoColor=white)
![Alpine Linux](https://img.shields.io/badge/Alpine_Linux-%230D597F.svg?style=for-the-badge&logo=alpine-linux&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![Ansible](https://img.shields.io/badge/ansible-%231A1918.svg?style=for-the-badge&logo=ansible&logoColor=white)
![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)
![Grafana](https://img.shields.io/badge/grafana-%23F46800.svg?style=for-the-badge&logo=grafana&logoColor=white)
![Prometheus](https://img.shields.io/badge/Prometheus-%23E6522C.svg?style=for-the-badge&logo=Prometheus&logoColor=white)
### 🏗️ Architecture Blueprint

1. **Infrastructure as Code (Terraform):** Standardizes cloud network environments by declaring target AWS EC2 computing resources and restrictive security groups.
2. **Configuration Orchestration (Ansible):** Executes host checking, verifies target OS structures, manages root user security contexts, and automates dist-upgrades.
3. **CI/CD Pipeline Automation (GitHub Actions):** Schedules structural cron routines that pull infrastructure code, elevate script executing permissions, and run secure server patching binaries.
4. **Isolated Telemetry (Docker Stack):** Provisions a decoupled multi-container monitoring solution using Prometheus for metrics storage and Grafana for visual environment health tracking

### 📂 Repository Workspace Blueprint
text

├── .github/workflows/          # Continuous Integration / Execution pipelines
│   └── linux-auto-patch.yml    # Automated scheduled patching cron orchestration
├── terraform/                  # Declarative Cloud Architecture configurations
│   └── main.tf                 # Elastic EC2 structures & security controls
├── ansible/                    # Configuration management modules
│   └── playbooks/
│       └── patch-servers.yml   # Multi-host validation & update engine
├── docker/                     # Isolated container environments
│   └── monitoring/
│       ├── docker-compose.yml  # Multi-node visual telemetry stack
│       └── prometheus.yml      # Metrics monitoring baseline targets
└── scripts/                    # Core Linux system utilities
    └── server-patch.sh         # Security privilege checking shell binary

Use code with caution.

### 🛠️ Engineering Core Skills Demonstrated

### 🐧 Linux Systems Internals & Automation

* **Privilege Guardrails:** Script execution explicitly halts unless security context parameters match (EUID == 0), safeguarding mission-critical processes.
* **Environment Auditing:** Uses modular queries across configuration nodes (/etc/os-release) and architecture checks (uname -a) to gather environment insights.
* **Package Analytics:** Employs systematic package filters (apt list --installed) to generate environment baselines.

### ☁️ Infrastructure Engineering (AWS & Terraform)

* **Resource Modeling:** Uses Terraform to create structured AWS definitions that handle cloud computing lifecycle phases.
* **Network Access Isolation:** Implements granular Security Group models that close unnecessary ports while keeping port 22 available for configuration automation tools.

### ⚙️ Configuration Management & Deployment Orchestration (Ansible & Docker)

* **Idempotent Operations:** Implements remote package updating parameters using Ansible playbook definitions to achieve uniform server environments.
* **Service Orchestration:** Uses Docker Compose to construct multi-container service configurations, maintaining separation between storage nodes (Prometheus) and presentation panels (Grafana).
