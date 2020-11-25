FROM python:2.7.14-alpine3.6
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code
RUN pip install -r requirements.txt -i https://pypi.douban.com/simple/
ADD . /code
EXPOSE 80 
CMD python ynm3k.py --port=80
