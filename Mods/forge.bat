@echo off
:menu
cls
color C
echo Ceci est pour setup votre espace de travail pour Forge 1.7.10
echo Choisissez une option:

echo 1. Eclipse (Conseiller)
echo 2. IDEA


set /p choix=Entrez votre choix (1/2):

if "%choix%"=="1" (
    rem Remplacez la commande ci-dessous par la commande réelle que vous souhaitez exécuter pour l'option 1
    gradlew clean setDecompWorkspace eclipse
    pause
) else if "%choix%"=="2" (
    rem Remplacez la commande ci-dessous par la commande réelle que vous souhaitez exécuter pour l'option 2
    gradlew clean setDecompWorkspace idea
    pause
) else (
    echo Choix invalide. Veuillez entrer 1 ou 2.
    goto menu
)

echo Lancement de la première commande...
start gradlew setupDecompWorkspace

echo Lancement de la 2eme commande...
start gradlew build


set /p continuer=Voulez-vous continuer ? (oui):
if /i "%continuer%"=="oui" (
echo Vous avez fini !
)
