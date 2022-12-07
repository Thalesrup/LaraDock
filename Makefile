# Colors
Color_Off='\033[0m'       # Text Reset
Purple='\033[0;35m'       # Purple
Yellow='\033[0;33m'       # Yellow

up:
	@# up - Sobe Container API - Laravel .
	@echo ${Color_Off}${Purple}"Iniciando Serviços - Laravel Workspace"${Color_Off}
	@echo ${Yellow}"Start At: $$(date '+%Y-%m-%d %H:%M:%S')"${Color_Off} && \
	docker-compose up -d && \
	echo "Finish At: $$(date '+%Y-%m-%d %H:%M:%S')"

up-build:
	@# up - Builda e Sobe Container API - Laravel Workspace.
	@echo ${Color_Off}${Purple}"Buildando e Iniciando Serviços - Laravel Workspace"${Color_Off}
	@echo ${Yellow}"Start At: $$(date '+%Y-%m-%d %H:%M:%S')"${Color_Off} && \
	docker-compose up --build -d && \
	echo "Finish At: $$(date '+%Y-%m-%d %H:%M:%S')"	

build:
	@echo "Start Build Images from API - Laravel Workspace..."
	docker-compose up --build	

down:
	@# down - Remove todos os containeres.
	@docker-compose down

restart:
	@# restart - Reinicia todos os containeres.
	@docker-compose down && docker-compose up -d

stop:
	@# stop - Para container API - Laravel Workspace.
	@echo ${Yellow}"Parando Serviços Laravel Workspace"${Color_Off} && \
	docker-compose stop

in:
	@# in - Entrar no Bash do container API - Laravel Workspace
	docker container exec -it laravelDock-api bash	

help:
	@sh MakefileHelp
