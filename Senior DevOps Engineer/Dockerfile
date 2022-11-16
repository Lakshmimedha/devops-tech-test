FROM ubuntu

RUN apt-get update -y
RUN apt-get install python3-pip -y
RUN pip3 install flask
COPY ./hello.py /root/hello.py
WORKDIR /root
EXPOSE 8000
ENTRYPOINT ["python3"]
CMD ["hello.py"]


