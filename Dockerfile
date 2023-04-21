FROM alpine:latest

RUN apk update && apk add bash

USER root
SHELL ["/bin/bash", "-c"]

RUN echo -e '#!/bin/bash\n echo "bonjour"' > /usr/local/bin/hello.sh && \
  chmod +x /usr/local/bin/hello.sh

CMD ["/usr/local/bin/hello.sh"]