FROM ubuntu:16.04

RUN apt update \ 
 && apt upgrade -y \
 && apt install git gcc g++ make unzip python -y

RUN git clone https://github.com/ossrs/srs.git

WORKDIR srs/trunk

RUN unzip 3rdparty/CherryPy-3.2.4.zip -d ./objs \
 && cd objs/CherryPy-3.2.4 \ 
 && python setup.py install \ 
 && cd ../..

RUN ./configure && make

EXPOSE 1935

CMD ./objs/srs -c conf/srs.conf
