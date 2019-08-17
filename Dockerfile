FROM python:3-alpine

RUN pip3 install requests flask 
ADD tree /

WORKDIR /app
CMD ./iptv4plex.py -hl
