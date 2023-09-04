if exist .\db\pgadmin\ (
    rmdir /s /q .\db\pgadmin\
)
if exist .\db\pgdata\ (
    rmdir /s /q .\db\pgdata\
)
cd .\db\
docker-compose --env-file ./config/.env.dev up -d
cd ..\cmd\
go run main.go