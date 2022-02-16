FROM cheche/nvjdc
RUN apt-get update && apt-get install git wget \
  && git clone https://github.com/shiunke/nvjdcdocker.git /root/nvjdc \
  && mv /root/nvjdc /app \
  && mkdir /app/Config \
  && wget https://pan.yropo.workers.dev/source/configs/nvjdc_Config.json -O /app/Config/Config.json
WORKDIR /app
EXPOSE 80 443
ENTRYPOINT ["dotnet" "NETJDC.dll"]
