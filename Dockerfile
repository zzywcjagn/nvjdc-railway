FROM cheche/nvjdc
RUN apt-get update && apt-get install git wget && rm -rf /app/* \
  && git clone https://github.com/shiunke/nvjdcdocker.git /app \
  && mkdir /app/Config \
  && wget https://pan.yropo.workers.dev/source/configs/nvjdc_Config.json -O /app/Config/Config.json 
WORKDIR /app
EXPOSE 80 443
CMD cat /app/Config/Config.json
ENTRYPOINT ["dotnet","NETJDC.dll"]
