echo "cole-------------------------------------test"

echo "reinstall ruby"
brew reinstall ruby@2.7

echo "brew install ruby@2.7.4"
brew install rbenv ruby-build
rbenv init
eval "$(rbenv init - zsh)"
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | zsh
brew unlink ruby-build # remove STABLE version
brew install --HEAD ruby-build 
rbenv install -l | grep '2.7.4'