FROM rasa/rasa:2.1.2

COPY app /app
COPY server.sh /app/server.sh

USER root
RUN chmod -R 777 /app
USER 1001

RUN rasa train nlu

ENTRYPOINT ["/app/server.sh"]