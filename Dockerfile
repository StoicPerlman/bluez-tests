FROM python:3.6
RUN apt-get update && apt-get install -y bluez libbluetooth-dev
RUN mkdir /bluez
COPY . /bluez
WORKDIR /bluez/pybluez
RUN python setup.py install
CMD python examples/simple/rfcomm-server.py
