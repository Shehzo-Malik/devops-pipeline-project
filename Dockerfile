# Python ka chhota image use karein
FROM python:3.9-slim

# Working directory set karein
WORKDIR /app

# Dependencies copy karke install karein
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Baaki saara code copy karein
COPY . .

# Port open karein
EXPOSE 5000

# App run karein
CMD ["python", "app.py"]