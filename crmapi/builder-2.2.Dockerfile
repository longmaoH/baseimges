FROM mcr.microsoft.com/dotnet/core/sdk:2.2
ARG CSPROJ=Saas.CRM.Web/Saas.CRM.Web.csproj

WORKDIR /src
COPY csproj /src
RUN set -eux \
  ; cat /etc/hosts \
  ; dotnet restore ${CSPROJ}
