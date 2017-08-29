# Build Stage
FROM marekkacprzak/dotnet:2-preview1-sdk AS build-env
WORKDIR /integration

COPY integration.csproj .
RUN dotnet restore

COPY . .
RUN dotnet build
ENTRYPOINT ["dotnet", "test"]