# Translating needs into CloudXray filters

Always confirm exact values with `list_capabilities` (values change as the taxonomy evolves). This table covers the most common requests.

## What they say → FinOps capability (`capability`)

| The user says | Capability values |
|---|---|
| "Who's spending what", showback, cost allocation, tagging gaps | `Allocation` |
| Dashboards, reporting, cost visibility | `Reporting & Analytics` |
| Getting bills/usage from several clouds or SaaS into one place | `Data Ingestion` |
| Surprise spikes, cost alerts | `Anomaly Management` |
| Forecasts, budgets, budget vs actual | `Forecasting`, `Budgeting` |
| Cost per customer / transaction / feature | `Unit Economics` |
| KPIs, benchmarking | `KPIs & Benchmarking` |
| Reserved Instances, Savings Plans, CUDs, commitment management | `Rate Optimization` |
| Rightsizing, idle resources, scheduling, waste | `Usage Optimization` |
| Where to run workloads, architecture cost | `Architecting & Workload Placement` |
| Software licences, SaaS subscriptions | `Licensing & SaaS` |
| Carbon, sustainability | `Sustainability` |
| Chargeback, internal invoicing | `Invoicing & Chargeback` |
| Policies, guardrails, governance | `Governance, Policy & Risk` |
| Automated fixes / automation | `Automation, Tools & Services` |
| Starting or running a FinOps practice, operating model | `FinOps Practice Operations`, `FinOps Assessment` |
| Training the team | `FinOps Education & Enablement` |
| Aligning cost with business strategy | `Executive Strategy Alignment` |

## Scope of spend → technology scope (`technology`)

| The user's spend | Value |
|---|---|
| AWS / Azure / GCP etc. | `FinOps for Public Cloud` |
| SaaS applications | `FinOps for SaaS` |
| On-premises data centers and private cloud (VMware, OpenStack, Nutanix) | `FinOps for Data Center` |
| Snowflake, Databricks, BigQuery | `FinOps for Data Cloud Platforms` |
| LLM / AI APIs and GPUs | `FinOps for AI` |

## Kind of product → solution category (`category`)

`Full-Stack Platform` (broad FinOps platform), `Cost Intelligence & Visibility`, `Automation & Optimization`, `Data, AI & SaaS Spend`, `Governance & Controls`, `Managed Services & Consulting` (people rather than software).

## Environment

- **Clouds (`cloud`):** `AWS`, `Azure`, `GCP`, `Oracle Cloud (OCI)`, `Alibaba Cloud`, `Tencent Cloud`, `IBM Cloud`, `Huawei Cloud`.
- **Kubernetes (`kubernetes`):** `EKS`, `AKS`, `GKE`, `OpenShift`, `Kubernetes (Self-managed)`.
- **Integrations (`integration`):** data platforms (`Snowflake`, `Databricks`, `BigQuery`, `MongoDB`), observability (`Datadog`, `New Relic`, `Dynatrace`, `Grafana`, `Splunk`), AI providers (`OpenAI`, `Anthropic`, `Azure OpenAI`), ITSM (`Jira`, `ServiceNow`, `Zendesk`), and more via `list_capabilities`.
- **FOCUS (`focus`):** `FOCUS Ingestion` (reads FOCUS-format billing data), `FOCUS Reporting & Invoicing` (produces it).

## Buying constraints

- **Segment (`segment`):** `SMB`, `Mid-Market`, `Enterprise`, `Cloud-Native / Kubernetes-Heavy`, `Public Sector`, `Managed Service Providers (MSPs)`.
- **Deployment (`deployment`):** `SaaS`, `Self-Hosted`, `Hybrid`, `GovCloud / Sovereign Cloud`. For sovereign or government clouds, use `GovCloud / Sovereign Cloud` (the tool can run in, or cover, those environments) and consider the `Public Sector` segment.
- **Pricing (`pricing`, any of):** `Percentage of Cloud Spend`, `Percentage of Savings`, `Flat SaaS Subscription`, `Usage-Based Pricing`, `Per-Resource / Per-Cluster`, `Per-Agent / Per-User`, `Hybrid (Mixed Model)`.
- **FinOps Foundation member:** `finops_foundation_member: true`.

## Picking must-haves

Use at most 2–3 filters for the first search, usually: the capability (or category) behind the top-priority problem, the environment (cloud(s) or `FinOps for Data Center` for on-prem/private cloud), and one hard constraint (deployment, sovereign cloud, a key integration, or FOCUS). Rank the remaining problems from the comparison. When priorities differ a lot, search once per priority.
