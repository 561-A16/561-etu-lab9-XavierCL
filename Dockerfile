FROM ymazieres/dotnet:compile

COPY /scripts/init.sh /src/init.sh
RUN chmod +x /src/init.sh

EXPOSE 5000
ENTRYPOINT ["sh", "./init.sh"]

ENV ASPNETCORE_URLS http://+:5000

COPY src /src

WORKDIR /src
