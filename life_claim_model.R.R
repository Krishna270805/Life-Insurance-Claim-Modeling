# Load libraries
library(ggplot2)
library(dplyr)
library(pROC)

# Load data
insurance <- read.csv("insurance_cleaned_final.csv")

# Convert character variables to factors
insurance$smoker <- as.factor(insurance$smoker)
insurance$claim_made <- as.factor(insurance$claim_made)

# Fit logistic regression model
model <- glm(claim_made ~ age + bmi + smoker, data = insurance, family = "binomial")

# Summary
summary(model)
# Predict probabilities
insurance$predicted_prob <- predict(model, type = "response")

# Classify
insurance$predicted_class <- ifelse(insurance$predicted_prob > 0.5, 1, 0)

# Accuracy
accuracy <- mean(insurance$predicted_class == insurance$claim_made)
print(paste("Model Accuracy:", round(accuracy * 100, 2), "%"))

# ROC Curve
roc_obj <- roc(insurance$claim_made, insurance$predicted_prob)
plot(roc_obj, col = "blue")
auc(roc_obj)
ggplot(insurance, aes(x = age, y = predicted_prob, color = smoker)) +
  geom_point(alpha = 0.6) +
  labs(title = "Predicted Claim Risk by Age and Smoker Status",
       x = "Age", y = "Predicted Claim Probability")


