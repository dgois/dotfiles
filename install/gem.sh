brew install gpg2

gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable

rvm install 2.3.3
rvm use 2.3.3 --default

#gem install lunchy
#gem install pygmentize
gem install i2cssh
gem install rotp