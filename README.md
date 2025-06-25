# shell_create_repo

Étapes complètes pour créer un dépôt GitHub et le configurer localement

Créer un dossier pour votre dépôt local :

    mkdir -p <repo_name> && cd <repo_name>/

Initialiser un dépôt Git local :

git init : Cette commande est essentielle car elle initialise un nouveau dépôt Git dans votre répertoire local. Elle crée un sous-répertoire .git qui contient tous les fichiers nécessaires pour le suivi des versions avec Git. Sans cette étape, Git ne saura pas que ce répertoire est un dépôt Git et vous ne pourrez pas utiliser les commandes Git comme git add, git commit, etc.

    git init

Créer un dépôt sur GitHub :

Utilisez le shell script pour créer un dépôt sur GitHub via le terminal. Assurez-vous de noter l'URL du dépôt distant qui est affichée après la création du dépôt.

Ajouter un fichier README.md :

    echo "# <repo_name>" >> README.md

Ajouter le fichier à l'index Git :

    git add README.md

Commiter les modifications :

    git commit -m "first commit"

Lier le dépôt local au dépôt distant :

Utilisez l'URL SSH ou HTTPS de votre dépôt GitHub pour lier votre dépôt local au dépôt distant. Vous pouvez récupérer cette URL depuis l'interface web de GitHub si vous avez perdu l'affichage dans le terminal.

    git remote add origin git@github.com:<user>/<repo_name>.git

Pousser les modifications vers le dépôt distant :

    git push -u origin main
