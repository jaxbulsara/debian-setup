# Installs the git prompt

# Download git-prompt.sh
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
mv git-prompt.sh ~/.git-prompt.sh

# Add git-prompt to bashrc
source .git-prompt.sh && echo "source ~/.git-prompt.sh" >> ~/.bashrc

# Add custom prompt to bashrc
cat files/prompt.bashrc >> ~/.bashrc

# Activate the new prompt
source ~/.bashrc

