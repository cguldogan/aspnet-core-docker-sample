FROM microsoft/dotnet:2.2-aspnetcore-runtime AS base
WORKDIR /app
EXPOSE 80

FROM microsoft/dotnet:2.2-sdk AS build
WORKDIR /src
COPY ["docker-app.csproj", "./"]
RUN dotnet restore "./docker-app.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "docker-app.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "docker-app.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "docker-app.dll"]
