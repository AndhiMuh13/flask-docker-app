# Gunakan Python versi ringan sebagai image dasar
FROM python:3.9-slim

# Set direktori kerja di dalam Docker
WORKDIR /app

# Salin semua file ke dalam Docker container
COPY . /app

# Instal dependensi Python
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 untuk Flask
EXPOSE 5000

# Perintah untuk menjalankan aplikasi
CMD ["python", "app.py"]
