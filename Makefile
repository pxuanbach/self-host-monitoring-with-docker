COMPOSE_CMD := $(shell if command -v docker-compose > /dev/null; then echo "docker-compose"; \
                elif docker compose version > /dev/null 2>&1; then echo "docker compose"; \
                else echo "none"; fi)

up:
	$(COMPOSE_CMD) up -d

down:
	$(COMPOSE_CMD) down

downv:
	$(COMPOSE_CMD) down -v

up-sub:
	$(COMPOSE_CMD) -f docker-compose.sub-node.yml up -d

down-sub:
	$(COMPOSE_CMD) -f docker-compose.sub-node.yml down

downv-sub:
	$(COMPOSE_CMD) -f docker-compose.sub-node.yml down
