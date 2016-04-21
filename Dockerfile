# Jenkins.
FROM nginx:1.8.1

MAINTAINER Michal @ Revolution Generation <michal@revolutiongeneration.co.uk>

# Install dependencies
RUN apt-get update && apt-get install -y vim-nox git


# Start
EXPOSE 80
#RUN service nginx start

CMD ["/bin/bash"]
