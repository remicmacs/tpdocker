# Docker

[Pierre Malherbe](mailto:pierre.malherbe@zenika.com)

## Sujets

* Images
* Containers
* Registry
* Daemon

## Utilisation basique

C'était vraiment basique.

---

Séance du Lundi 2019-03-04

## Volumes

Persistence de la donnée stockée sur le système hôte.

## Registry

Permettent de faire de versionner les images avec des tags.

## TP

1 - Exercice 1. Vous allez réaliser un Dockerfile qui permette la construction automatique d’une Debian Jessie », avec un Bash comme point d’entrée.

 2 - 
Exercice 1. Vous allez réaliser un Dockerfile qui permette la construction automatique de l’exercice précédent,
 2. Le port utilisé sera 80,
 3. Le service « apache » sera démarré automatiquement,
 4. Vous ajouterez de manière automatique le fichier « index.php » dans cette image, 
5. Testez la construction et l’exécution de cette image de manière automatique, 

.3 -
 Exercice 1. Vous créerez maintenant comme point d’entrée un script shell nommé « start.sh » : ◦ Si aucun argument n’est donné, exécutera « apache », ◦ Sinon, exécutera la commande passé en argument au conteneur
2. Ce script sera recopié lors de la construction à la racine du conteneur
 3. Testez la construction et l’exécution de cette image de manière automatique
4. Testez également en passant un argument au conteneur

---

Séance du Jeudi 2019-03-14

Circle CI

On décrit ce qu'on veut faire.
Toutes les étapes jusqu'à la release sont prises en charge (clean, pull dependancies, build, push, docker build)

Attention à docker. Même si on a précisé le `latest`, on garde la    dernière image pull. Ne compare pas automatiquement les hash local/registry

---

Séance du Lundi 2019-03-18

## Options avancées de Docker

### Variables d'environnement

Facile de transférer ses vars d'env aux containers.

## Docker-compose

Orchestration de containers

---

Séance du Lundi 2019-03-25

Séance de TP