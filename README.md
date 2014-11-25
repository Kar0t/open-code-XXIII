open-code-XXIII
===============

Présentation pour l'open code du 25 novembre 2014.  Le projet montre étape par étape l'utilisation des gems Devise, CanCanCan et Rolify.

Command utilisé
---------------

Devise
------

Installation de devise
```console
rails generate devise:install
rails generate devise User
```

Génération de la base de Post
```console
rails g scaffold Post
```

Installation de CanCanCan et Rolify
```console
rails g cancan:ability
rails g rolify Role User
```



