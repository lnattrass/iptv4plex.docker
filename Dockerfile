FROM python:3-alpine

RUN pip3 install requests flask 
RUN mkdir -p /app \
    && wget -O /app/iptv4plex.py https://raw.githubusercontent.com/vorghahn/iptv4plex/master/iptv4plex.py \
    && chmod +x /app/iptv4plex.py

ADD proxysettings.json /app
WORKDIR /app
CMD ./iptv4plex.py -hl
