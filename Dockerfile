FROM python:3-slim

RUN apt-get update
RUN apt-get install -y gcc imagemagick
RUN useradd -m calibre
USER calibre

RUN pip install calibreweb calibreweb[goodreads] calibreweb[metadata]


ENV PATH="$PATH:/home/calibre/.local/bin"
EXPOSE 8083
CMD ["cps"]
