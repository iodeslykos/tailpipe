FROM alpine:3.10
LABEL maintainer="Nate Wilken <wilken@asu.edu>"

RUN apk update && apk --no-cache add bash

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod 555 /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

USER nobody
