# AlloFine
C'est un peu comme un AlloCiné mais avec le F de Flutter... ;)

- [AlloFine](#allofine)
- [Architecture](#architecture)
- [Lancer le projet](#lancer-le-projet)
- [Dépendances](#dépendances)
- [Choix de state management](#choix-de-state-management)
- [Commentaires divers](#commentaires-divers)
  - [Api OMDB](#api-omdb)
  - [FrontEnd mobile](#frontend-mobile)


# Architecture
L'architecture que j'ai choisi repose sur de la clean architecture afin de respecter un certain nombre de bonnes pratiques, les principes SOLID notamment.

Cette architecture a l'avantage de réduire la duplication de code en mutualisant/rendant généric un bon nombre de classes tout en respecant la séparation des responsabilités.

Elle permet également un bonne lisibilité du projet,une unité du code sur l'ensemble des features, la modularité des dépendances...

# Lancer le projet
>Prérequis : 
>
> Installer Flutter et ses dépendances
> Réccupérer ce code source

1. À la racine du projet, créez un fichier `.config.json` contenant votre API key. [CF ici pour plus d'information](./.config.example.json)

2. Lancez la commande 
```bash
flutter run --dart-define-from-file=./.config.json
```

# Dépendances
Ce projet contient plusieurs dépendances dont les majeurs sont énumérés ici :

|Dépendance|Utilité|
|---	|---	|
|**dio**|Librairie complète permettant de gérer les appels API REST|
|**get_it**|Librairie d'injection de dépendances|
|**dartz**|Librairie simplifiant la gestion des erreurs en utilisant les principes de monad (programmation fonctionnelle)|
|**go_router**|Simplifie la navigation dans l'app et la gestion de la stack|
|**cached_network_image**|gère la mise en cache des images pour gagner en performances|
|**provider**|Une des deux librairie de gestion d'état proposé dans le brief. Elle est la base de plusieurs autres superbes libraires tels que Bloc|
|**infinite_scroll_pagination**|Librairie particulièrement utile pour faire des paginations infinies. gain de temps assuré !|

# Choix de state management
Le choix n'a pas été "simple" car les deux propositions ont leurs avantages que je peux résumer ainsi :

**Provider** : Provider repose sur la base de Flutter quand au State management **ET** sur la structure profonde de Flutter à savoir l'arbre de widget.
En effet, les InheritedWidget utilise le plus grand principe de Flutter : L'héritage, la notion de parent-enfant.

**MobX** : MobX est aussi super intéressant car on retrouve ce principe dans beaucoup de langage. Sur leur documentation ils parlent de MobX et Javascript mais j'ai plus eu l'occasion de voir ce principe en Java. Tout l'interêt repose sur la gestion de variable "reactive" qui peuvent être plus ou moins considérés comme des streams ! C'est particulièrement simple à manier "by design".

> **Alors, pourquoi Provider ?** Je pense que MobX peut être un piège si on l'utilise mal. Il est très simple, en utilisant des variables reactives, de se passer de la notion de controller et donc de mixer logique métier et UI. On retrouve ce "penchant" notamment en utilisant GetX qui repose sur ce principe de variable "RX". Si on ne prends pas garde, on peut facilement se retrouver dans du code qui ne respecte plus les principes SOLID.
>J'ai également choisi Provider car j'utilise relativement souvent BLOC, et BLOC repose lui-même sur Provider !

# Commentaires divers
## Api OMDB
Cette API, gratuite et plutôt pratique, lève quelques problématiques intéressantes. Voici en format bullet point, les "pains point" que j'y ai trouvé :

1. La documentation n'est pas exhaustive et ne permet pas tout à fait de comprendre la structure de données retournée par les endpoint. => Un swagger conventionnel aurait été plutôt pratique :)

2. L'API ne semble pas tout à fait respecter certains standards des API REST comme
   1. Les paginations ne contiennent que le maximum d'élément, mais pas la page actuelle ni la taille du retour paginé

   2. L'API key est envoyé en queryParameters. Un header serait probablement bienvenue soit avec un Authorization soit avec un autre header custom
   
   3. Certains champs retournent "N/A" quand non spécifiés tandisque d'autres ne sont pas retournés quand non spécifiés, crééant des problèmes de nullité et montrant une certaine inconsistance dans le modèle de donnée


   4. Certains champs devrais probablement être décomposés en modèles dédiés comme les listes d'Acteurs / Autheurs afin de réduire la responsabilité du front-end quand au traitement des données

   5. Même remarque sur les Dates qui pouraient respecter les normes ISO propresaux dates ainsi que les entiers et décimaux qui poraient être envoyé comme tels

## FrontEnd mobile

**Gestion des ressources**

Afin degérer au maximum la performance de l'application, les résultats de recherche ont étés paginé. De la même manière, les images sont mises en cache pour éviter une sur-consommation des datas.

> Ce point à quand même son importance que ce soit pour l'UserExperience, les couts de structures et la planète ! En effet, moins de consommation de ressources est bénéfique pour tous et je serai enchanté de discuter de ce qu'on peut faire petit à petit à l'échelle d'un développeur
