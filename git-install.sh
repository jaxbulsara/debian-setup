# Configures git and installs the git prompt

# Install git
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update
sudo apt install git

# Configure git
git config --global user.email jaybulsara@proton.me
git config --global user.name "Jay Bulsara"
git config --global credential.helper store
git config --global init.defaultBranch main
git config --global core.editor "vim"

# Download git-prompt.sh
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
mv git-prompt.sh ~/.git-prompt.sh

# Add git-prompt to bashrc
source .git-prompt.sh && echo "source ~/.git-prompt.sh" >> ~/.bashrc
source ~/.bashrc

# Add custom prompt to bashrc
cat files/prompt.bashrc >> ~/.bashrc

# Activate the new prompt
source ~/.bashrc

