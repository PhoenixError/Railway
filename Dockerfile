

FROM ryoishin/alphonse:debian

ENV TZ=Asia/Kolkata
RUN set -ex \
    && git clone -b master https://github.com/TeamAlphonse/Alphonse /root/userbot \
    && chmod 777 /root/userbot

COPY . .

RUN ./Beauty
WORKDIR /root/userbot/

CMD ./START
