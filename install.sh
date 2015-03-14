# install xcode

# install Prezto
zsh
git clone --recursive https://github.com/aaronz8/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
chsh -s /bin/zsh

# copy zpreztorc (symlink them)
cp ./.vimrc ~/

# set homebrew env (already set in my prezto fork)
#echo 'export HOMEBREW_CASK_OPTS="--appdir=/Applications"' >> ~/.zshenv

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Homebrew packages
brew bundle Brewfile

# Link `subl` to Sublime
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

# install node and npm (maybe with brew)
