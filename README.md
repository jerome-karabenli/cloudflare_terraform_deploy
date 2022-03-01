# Proteger son infrastructure grace a CloudFlare avec Terraform

<div id="top"></div>


<!-- ABOUT THE PROJECT -->
## A propos
C'est un ensemble de modules [Terraform](https://www.terraform.io/) permettant de proteger son infrastructure derriere un proxy.
Certains modules sont obligatoires d'autres optionnels.

Pour en savoir plus vous pouvez consulter [l'article que j'ai rédigé ici](https://jkarabenli.dev/posts/manage-dns-cloudflare-terraform/). 

## Stack utilisée
* [Terraform](https://www.terraform.io/) 

## Prérequis
* [Terraform](https://www.terraform.io/downloads)
```sh
$ curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
$ sudo apt-add-repository "deb [arch=amd64] https://apt.      releases.hashicorp.com $(lsb_release -cs) main"
$ sudo apt-get update && sudo apt-get install terraform
```
<!-- ROADMAP -->
## Roadmap

- [x] Configurer le script principal.
- [x] Faire du SOC et avoir un fichier par module.
- [x] Ajouter le module `firewall`.
- [x] Ajouter le module `certificats ssl`.
- [x] Ajouter le module `email dns`.

Voir les [issues en cours](https://github.com/jerome-karabenli/cloudflare_terraform_deploy/issues) pour voir la liste complete des fonctionalités proposées et les bugs existants.


<!-- CONTRIBUTING -->
## Contribuer

Les contributions sont ce qui fait de la communauté open source un endroit incroyable pour apprendre, s'inspirer et créer. Toutes les contributions que vous apportez serront __grandement appréciées__.

Si vous avez une suggestion qui améliorerait le projet, vous pouvez `fork` le repo et créer une `pull request`. Vous pouvez aussi simplement ouvrir une `issue` avec le tag "amélioration".
N'oubliez pas de mettre une étoile au projet ! Merci encore!


1. Fork le projet
2. Créez votre branche (`git checkout -b feature/AmazingFeature`)
3. Commit vos changements (`git commit -m 'Add some AmazingFeature'`)
4. Push sur votre branche (`git push origin feature/AmazingFeature`)
5. Ouvrir une __Pull Request__


<!-- CONTACT -->
## Contact

mail: __contact@jkarabenli.dev__

Lien du projet: [github.com/jerome-karabenli/cloudflare_terraform_deploy](https://github.com/jerome-karabenli/cloudflare_terraform_deploy)

Lien vers mon blog: [jkarabenli.dev](https://jkarabenli.dev/posts/)