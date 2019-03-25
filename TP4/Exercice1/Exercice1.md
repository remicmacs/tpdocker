# Exercice1

## Lancement d'un container

```bash
docker run --name=tp-centos1 -it centos:latest
```

Quand le container est lancé, on peut vérifier qu'on a bien un shell bash :

```bash
echo "$SHELL" # Affiche : "/bin/bash"
```

## Installation de `wget` et `nc`

```bash
yum install wget nc
```

## Deuxième container avec la même image

```bash
docker container run --name=tp-centos2 -it centos:latest
```

On teste si les commandes installées dans le premier container sont présentes :

```bash
type wget
type nc
```

Les deux retournent "bash: type: *commande*: not found"

C'est tout à fait normale parce qu'on s'est basé sur une **image** Docker CentOS qui n'a pas les logiciels `wget` et `nc` installés de base (vu qu'on a dû les installer dans le premier container). Les logiciels n'ont été installés que dans le premier container, et pas sur l'image initiale : on n'a pas reconstruit d'image entre les deux étapes. Les logiciels ne sont installés que dans la surcouche rajoutée pour le premier container.

## Lister les containers

```bash
docker container ls --all
```

## Renommer un container

```bash
docker rename tp-centos1 centos-shell-01
```

Ce qui fonctionne parce que je lui avait donné un nom à la base.

Sinon il faut utiliser la référence ou le nom aléatoire donné par Docker.

## Redémarrer et vérifier

```bash
docker container start centos-shell-01
docker exec -it centos-shell-01 bash
```

Les logiciels installés sont toujours présents. Il le seront tant qu'on ne supprime pas le container entre deux démarrage, ou qu'on ne les désinstalle pas manuellement.