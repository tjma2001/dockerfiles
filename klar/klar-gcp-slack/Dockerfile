FROM tensaibankai/klar-gcp

RUN apt-get update
RUN apt-get install -y jq

COPY slack.sh .

CMD [ "./slack.sh" ]