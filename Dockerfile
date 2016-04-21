# Jenkins.
FROM nginx:1.8.1

MAINTAINER Michal @ Revolution Generation <michal@revolutiongeneration.co.uk>

# Install dependencies
RUN apt-get update && apt-get install -y vim-nox git

# Install kazoo ui
WORKDIR /usr/share/nginx/html/
RUN rm *
RUN git clone https://github.com/2600hz/kazoo-ui.git -b 3.22 ./

# Start
COPY start.sh /usr/local/bin/
RUN  chmod +x /usr/local/bin/start.sh

EXPOSE 80

CMD ["/bin/bash"]
