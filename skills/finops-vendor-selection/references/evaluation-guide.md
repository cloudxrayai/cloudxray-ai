# Evaluating FinOps vendors

## Pricing models: what they mean for the buyer

| Model | Works well when | Watch for |
|---|---|---|
| Percentage of Cloud Spend | Spend is moderate and the tool covers broad needs | Cost grows with spend even when value doesn't; negotiate caps or tiers at large spend |
| Percentage of Savings | The goal is commitment or usage savings and savings are measurable | How "savings" is calculated and baselined; who owns savings after the contract ends; double-counting with native discounts |
| Flat SaaS Subscription | Predictable budgets, large or growing spend | What's included per tier (users, accounts, data retention, connectors) |
| Usage-Based Pricing | Variable or early-stage usage | Hard-to-forecast bills; ask for a usage estimate at their scale |
| Per-Resource / Per-Cluster | Kubernetes or specific-resource tools | Cluster or node growth; dev/test environments counted |
| Per-Agent / Per-User | Small teams, collaboration tools | Licensing everyone who needs read access |

Marketplace listings (AWS, Azure, GCP) can let the buyer pay through an existing cloud commitment; check the CloudXray profile's `marketplaces`.

## Red flags
- Write access that can't be scoped. Acting on optimizations (rightsizing, scheduling, commitment purchases, cleanup) legitimately needs write access, but it should be limited to specific accounts, resources, services, users or roles, with approvals, an audit trail and a way to undo, so the "blast radius" of any automated action stays small. Broad, account-wide write access, or write access when the buyer only needs visibility, is a red flag.
- Savings-based pricing without a clear, auditable baseline.
- No support for a cloud, platform or billing format the buyer already depends on.
- The product was recently acquired (CloudXray `ownership`): check roadmap, pricing and support commitments.
- Claims that the CloudXray profile can't confirm; ask the vendor for evidence.

## Questions for demos
1. Show allocation of *our* shared costs (Kubernetes, data platforms, shared services); how are untagged costs handled?
2. How is data ingested (billing exports, APIs, FOCUS)? How fresh is it and how far back?
3. What access does the product need in our accounts? For any write actions: can permissions be scoped to specific accounts, services, resources, users or roles; can actions require approval (or run in recommend-only mode first); and how are changes logged and rolled back?
4. How are recommendations prioritized, and can engineers act on them in their own tools (Jira, ServiceNow, Slack)?
5. What does a forecast or budget workflow look like for a finance user?
6. What will this cost at our spend and growth over three years, under your pricing model?
7. Which customers like us (size, clouds, industry) can we speak to?
8. What's on the roadmap for our gaps, and when?

## Proof of value
For larger purchases, suggest a time-boxed pilot (4–8 weeks) with agreed success measures. Measure two things:
- **The tool works for us:** data coverage, allocation accuracy, savings identified versus realized, and engineer adoption.
- **It shows the business the value of technology:** can the tool connect spend to products, customers, teams and business outcomes (unit costs, cost per customer or transaction, investment versus return) in reports that finance and executives will use? FinOps is about getting more value from technology spend, not only spending less, so the pilot should prove the tool helps leadership see and decide on that value.

## Structured evaluations (RFP)
For formal selections: list requirements by category (capabilities, clouds and integrations, billing model, security and compliance, vendor profile), weight each 1–5, ask vendors to answer Yes / Partial / No with evidence, then combine the vendor's answer with an evaluator's score. CloudXray data can pre-screen most "does it support X" requirements before the RFP goes out.
