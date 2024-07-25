FROM dawn001/z_mirror:main

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY test.txt .
RUN pip3 install --break-system-packages --no-cache-dir -r test.txt

COPY . .

CMD ["bash", "start.sh"]
