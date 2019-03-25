# Exercice 4

## Création d'un container NGINX avec partage des logs

```bash
docker container run --rm --name=mynginx -v $(pwd)/nginx-logs:/var/log/nginx  -p 7999:80 -d nginx:latest
```

On utilise un dossier local car on a pu constater que les volumes gérés par le Docker daemon répercutent les liens symboliques vers `/dev/stderr` et `/dev/stdout` et donc ne captent pas les sorties et erreurs du serveur NGINX mais celles du système hôte.

On peut voir l'arrivée des logs en continu de cette manière :

```bash
tail -f nginx-logs/access.log
```

## Création d'un container "log-tailer"

```bash
docker container run --rm --name=log-tailer -v $(pwd)/nginx-logs:/var/log/nginx -it alpine:latest
```