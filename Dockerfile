FROM microsoft/dotnet
WORKDIR /app

COPY . .
RUN dotnet restore Store.csproj

RUN dotnet publish -c Release -o out
WORKDIR /app/out
ENTRYPOINT [ "dotnet", "Store.dll" ]



