# Build Stage
FROM microsoft/aspnetcore-build:2.0.0-preview1 as build-env

WORKDIR /app
COPY api.csproj .
RUN dotnet restore

COPY . .
RUN dotnet publish -o /publish

# Runtime Stage
FROM microsoft/aspnetcore:2.0.0-preview1-jessie
WORKDIR /publish
COPY --from=build-env /publish .
#COPY --from=0
ENTRYPOINT ["dotnet", "api.dll"]