FROM mysterysd/wzmlx:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

# 🛠️ Fix: setuptools, wheel और pip को पहले update करें
RUN pip3 install --upgrade pip setuptools wheel

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
