FROM nginx:latest
LABEL maintainer=tromanovskiy@dataart.com
RUN apt-get update -y && apt-get install -y
ARG TEST=value1
RUN echo "The ARG variable value is $TEST"
ENV ADMIN="Tromanovskiy"
ENTRYPOINT ping www.google.com
