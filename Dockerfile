FROM ubuntu:latest
RUN apt-get update && apt-get install python3-pip -y
RUN apt-get install libmariadbclient-dev -y

#ENV STATIC_URL /static
#ENV STATIC_PATH /var/www/app/static
#RUN apt-get install python-setuptools* -y
RUN mkdir code
WORKDIR code
COPY . .
RUN pip3 install --upgrade pip
RUN pip3 install -r reqr.txt
#EXPOSE 5000
#RUN /usr/bin/sqlite3 /root/database.db \
#	.table \
#	.exit

#RUN  cd /root && python -c "from app import db; db.create_all();exit()"

CMD ["python3","app.py"]

                                                                                                                                             
                                                                                                                                                
