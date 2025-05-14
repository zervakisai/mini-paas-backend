# 1. Πάρε τη slim έκδοση της Python (ελαφριά)
FROM python:3.9-slim

# 2. Ορίσε τον φάκελο όπου θα "μπει" ο κώδικας
WORKDIR /app

# 3. Αντέγραψε το requirements.txt και κάνε εγκατάσταση
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Αντέγραψε ΟΛΟ τον υπόλοιπο φάκελο
COPY . .

# 5. Όταν τρέξει, να ξεκινήσει το backend
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

