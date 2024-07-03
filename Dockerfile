# 베이스 이미지로 Python 3.9을 사용
FROM python:3.9

# 작업 디렉토리를 설정
WORKDIR /app

# 필요한 패키지들을 설치
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# FastAPI 애플리케이션 파일들을 복사
COPY . .

# Uvicorn을 사용하여 FastAPI 애플리케이션을 실행
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]