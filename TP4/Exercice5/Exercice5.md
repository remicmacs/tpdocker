# Exercice 5

## Dockerfile

La plupart du `Dockerfile` s'explique assez bien sans trop d'explication.

Il reste la subtilité entre `ENTRYPOINT` et `CMD`. Toute image a par défaut un `ENTRYPOINT` correspondant à `["/bin/sh", "-c"]`, qui exécute les arguments passés à la commande `docker run` ou `docker exec`.

En changeant l'entrypoint à `["tail", "-f"]` on s'assure que la commande utilisée est `tail` et pas un shell, et `CMD` permet de spécifier un argument par défaut à cette commande. Cet argument sera ignoré si un autre argument est passé à `docker run` ou `docker exec`.

## Construire l'image

Une fois le `Dockerfile` écrit, on construit l'image avec

```bash
docker image build --tag my-log-tailer .
```

## Utilisation

En mode normal

```bash
docker container run --rm --name=log-tailer -v nginx-logs:/var/log/nginx:nocopy -it my-log-tailer:latest
```

Pour observer un autre fichier

```bash
docker container run --rm --name=log-tailer -v nginx-logs:/var/log/nginx:nocopy -it my-log-tailer:latest /var/log/nginx/error.log
```