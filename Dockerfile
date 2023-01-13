FROM python:3.8.2

ADD /requirments.txt /project/requirments.txt
ADD /app/api/config.txt /project/app/api/config.txt
ADD /app/api/server.py /project/app/api/server.py
ADD /app/api/utils.py /project/app/api/utils.py
ADD /app/db/client/client.py /project/app/db/client/client.py 
ADD /app/db/interaction/interaction.py /project/app/db/interaction/interaction.py
ADD /app/db/models/models.py /project/app/db/models/models.py
ADD /app/db/exception.py /project/app/db/exception.py

RUN pip3.8 install -r /project/requirments.txt

ENV PYTHONPATH=${PYTHONPATH}:/project/app
WORKDIR /project

EXPOSE 5005

CMD ["python","./app/api/server.py","--config=./app/api/config.txt"]

