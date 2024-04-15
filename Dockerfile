FROM mcr.microsoft.com/dotnet/runtime:6.0
LABEL maintainer="EvilSquirrelGuy"
# create user
RUN adduser --disabled-password --home /home/container container
# switch user
USER container
ENV USER=container HOME=/home/container
# set workdir
WORKDIR /home/container
# copy entrypoint into the image
COPY entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
