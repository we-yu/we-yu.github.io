FROM python:3.8
# net-tools (which contains netstat) をインストール
RUN apt-get update && apt-get install -y net-tools
RUN pip install pelican Markdown
WORKDIR /site
CMD ["pelican", "--listen"]
