FROM python:3.9-alpine3.15
LABEL maintainer=adam.mchugh@mchughsecurity.com

WORKDIR /analyzer

COPY DefenderQuarantine.py template.json requirements.txt ./

RUN pip install --no-cache-dir --requirement requirements.txt

ENTRYPOINT ["template.py"]
