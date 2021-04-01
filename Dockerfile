FROM python:3-slim-buster AS build-stage

RUN apt-get update && apt-get install -y git gcc
WORKDIR /
RUN git clone https://github.com/AdaptiveScale/lxdui
WORKDIR /lxdui
RUN python3 setup.py install

FROM python:3-slim-buster

COPY --from=build-stage /usr/local/lib/python3.9/site-packages /usr/local/lib/python3.9/site-packages
COPY --from=build-stage /lxdui/app /app

WORKDIR /app

EXPOSE 15151

CMD [ "python3", "run.py", "start" ]