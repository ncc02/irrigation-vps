# Sử dụng image Python chính thức
FROM python:3.11-slim

# Cài đặt thư viện yêu cầu
WORKDIR /app
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Sao chép mã nguồn vào Docker container
COPY . /app/

# Chạy FastAPI bằng Uvicorn
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
