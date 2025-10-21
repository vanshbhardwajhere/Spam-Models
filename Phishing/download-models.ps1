# Ensure models folder exists
New-Item -ItemType Directory -Force -Path "Phishing/models"

Write-Host "Downloading phishing models from Hugging Face..."

# Download the files
Invoke-WebRequest -Uri "https://huggingface.co/vansh-here/spam-phishing-models/resolve/main/best_model.pt" -OutFile "Phishing/models/best_model.pt"
Invoke-WebRequest -Uri "https://huggingface.co/vansh-here/spam-phishing-models/resolve/main/phish_model.joblib" -OutFile "Phishing/models/phish_model.joblib"

Write-Host "✅ Download complete! Files saved to Phishing/models/"
