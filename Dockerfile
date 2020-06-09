FROM ubuntu:18.04
ADD . /app
WORKDIR /app
RUN apt-get update
RUN apt-get install -y curl
CMD ["./wait_for_it.sh", "keystonejs:3000"}


FROM ppodgorsek/robot-framework:3.5.0

WORKDIR /opt/robotframework/temp

CMD ["run-tests-in-virtual-screen.sh"]
