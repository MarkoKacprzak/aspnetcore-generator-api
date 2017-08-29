#Build Stage
FROM microsoft/aspnetcore-build:2.0.0-preview1 as build-env

WORKDIR /generator

#restore
COPY api/api.csproj ./api/
RUN dotnet restore api/api.csproj
COPY tests/tests.csproj ./tests/
RUN dotnet restore tests/tests.csproj
#copy src
COPY . .

#test
RUN dotnet test tests/tests.csproj

#publish
RUN dotnet publish api/api.csproj -o /publish
#ENTRYPOINT ["bash"]
#Runtime Stage
FROM microsoft/aspnetcore:2.0.0-preview1-jessie
COPY --from=build-env /publish /publish
WORKDIR /publish
#COPY --from=0
ENTRYPOINT ["dotnet", "api.dll"]