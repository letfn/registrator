FROM gliderlabs/registrator:latest

COPY bash /bin/bash

COPY service /service

ENTRYPOINT [ "/bin/bash", "/service" ]

CMD []
