# Life Insurance Claim Risk Modeling using GLMs in R

This project uses logistic regression (GLM) to predict whether a policyholder will make a high insurance claim based on variables like age, BMI, and smoking status.

## Tools Used
- R (`glm`, `ggplot2`)
- Excel (data cleaning)
- Basic SQL (simulated using `sqldf` in R)

## Dataset
- Source: Kaggle Medical Cost Personal Dataset
- Size: 1338 rows

## Key Findings
- Model Accuracy: ~78%
- AUC: ~0.85
- Smoker status and age were most significant
- Visualized claim risk for better pricing strategies

## Files
- `life_claim_model.R`: R script for model
- `insurance_cleaned_final.csv`: Cleaned data
- `Project_Summary.pdf`: Final report
- `claim_risk_plot.png`: Visualization
