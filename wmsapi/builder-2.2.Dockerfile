FROM mcr.microsoft.com/dotnet/core/sdk:2.2
ARG CSPROJ=SAAS_WMS.Web/SAAS_WMS.Web.csproj

WORKDIR /src
COPY csproj /src
RUN set -eux \
  ; cat /etc/hosts \
  ; dotnet restore ${CSPROJ}
