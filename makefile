# Variables
README = README.md
SCRIPT = guessinggame.sh

# Règle par défaut
all: $(README)

# Générer le fichier README.md
$(README): $(SCRIPT)
	echo "# Guessing Game Project" > $(README)
	echo "" >> $(README)
	echo "### Date et heure d'exécution de make : $(shell date)" >> $(README)
	echo "" >> $(README)
	echo "### Nombre de lignes de code dans \`$(SCRIPT)\` : $(shell wc -l < $(SCRIPT))" >> $(README)

# Nettoyer les fichiers générés
clean:
	rm -f $(README)
