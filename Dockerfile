FROM python:3.11-slim
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

LABEL maintainer="Jager <im@zhang.ge>"
LABEL description="Docker Image of Grass-mining"

WORKDIR /grass

COPY requirements.txt /tmp/requirements.txt
RUN pip3 install --upgrade pip -i https://pypi.tuna.tsinghua.edu.cn/simple && \
    pip install \
    --no-cache-dir \
    -r /tmp/requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

COPY . .

CMD ["python", "main.py"]

