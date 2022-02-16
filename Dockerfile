FROM cheche/nvjdc
RUN apt-get update && apt-get install git wget && rm -rf /app \
  && git clone https://github.com/shiunke/nvjdcdocker.git /app \
  && mkdir /app/Config \
  && wget https://pan.yropo.workers.dev/source/configs/nvjdc_Config.json -O /app/Config/Config.json \
  && chmod 777 /app/NETJDC.dll /usr/bin/dotnet
WORKDIR /app
EXPOSE 80 443
ENTRYPOINT ["dotnet" "NETJDC.dll"]
