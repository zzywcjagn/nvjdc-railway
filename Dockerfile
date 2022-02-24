FROM cheche/nvjdc
RUN apt-get update && apt-get install -y git wget && rm -rf /app/* \
  && git clone https://github.com/AkashiCoin/nvjdc.git /app \
  && mkdir /app/Config \
  && wget https://raw.githubusercontent.com/zzywcjagn/nvjdc-railway/master/Config.json -O /app/Config/Config.json 
WORKDIR /app
EXPOSE 80 443
CMD cat /app/Config/Config.json
ENTRYPOINT ["dotnet","NETJDC.dll"]
