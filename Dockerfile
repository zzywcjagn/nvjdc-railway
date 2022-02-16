FROM cheche/nvjdc
RUN apt-get update && apt-get install git wget && mkdir /app /app/Config \
  && git clone https://github.com/shiunke/nvjdcdocker.git /app \
  && wget https://pan.yropo.workers.dev/source/configs/nvjdc_Config.json -O /app/Config/Config.json
WORKDIR /app
EXPOSE 80 443
ENTRYPOINT ["dotnet" "NETJDC.dll"]
