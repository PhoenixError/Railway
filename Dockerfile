

FROM ryoishin/alphonse:debian

RUN set -ex \
    && git clone -b master https://github.com/TeamAlphonse/Alphonse /root/userbot \
    && chmod 777 /root/START

COPY . .

RUN ./Beauty
WORKDIR /root/userbot/

CMD ./START
