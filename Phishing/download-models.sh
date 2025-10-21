#!/usr/bin/env bash
# Make sure the models folder exists
mkdir -p Phishing/models

echo "Downloading phishing models from Hugging Face..."

# Download the files
curl -L -o Phishing/models/best_model.pt "https://huggingface.co/vansh-here/spam-phishing-models/resolve/main/best_model.pt"
curl -L -o Phishing/models/phish_model.joblib "https://huggingface.co/vansh-here/spam-phishing-models/resolve/main/phish_model.joblib"

echo "✅ Download complete! Files saved to Phishing/models/"
