# Build Stage
FROM microsoft/aspnetcore-build:2.0.0-preview1 AS build-env
WORKDIR /api

COPY api.csproj .
RUN dotnet restore

COPY . .
RUN dotnet build
RUN dotnet publish -o /publish

# Runtime Image Stage
FROM microsoft/aspnetcore:2.0.0-preview1-jessie
WORKDIR /publish
COPY --from=build-env /publish .
COPY --from=build-env /api /api
ENTRYPOINT ["dotnet", "api.dll"]