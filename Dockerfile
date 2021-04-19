FROM jjanzic/docker-python3-opencv
MAINTAINER Silvester


ENV HTTP_PROXY http://196.35.119.55:8080
ENV HTTPS_PROXY http://196.35.119.55:8080

RUN pip install --upgrade pip

RUN pip install cffi==1.14.5 click==7.1.2 Flask==1.1.2 gevent==21.1.2 greenlet==1.0.0 itsdangerous==1.1.0 Jinja2==2.11.3 joblib==1.0.1 MarkupSafe==1.1.1 numpy==1.20.2 pandas==1.2.4 pycparser==2.20 python-dateutil==2.8.1 pytz==2021.1 scikit-learn==0.24.1 scipy==1.6.2 six==1.15.0 sklearn==0.0 threadpoolctl==2.1.0 Werkzeug==1.0.1 xgboost==1.4.0 zope.event==4.5.0 zope.interface==5.4.0

WORKDIR /notebook/flask

ADD . /notebook/flask

# Expose management port
EXPOSE 5000

CMD ["python", "server.py"]
