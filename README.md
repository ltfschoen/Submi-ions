# Submißions

The judging tool for EthBerlin04 (and hopefully some other events)


This is a typical Rails application; it assumes Postgres is the database (making use of Postgres-provided enum typess and pubsub).

When in development mode, it's useful to run it via `bundle exec guard`, which will take care of autoreloading the codebase as needed, and refreshing the browser pages.





https://gorails.com/setup/macos/14-sonoma

# on macOS M2 add below to ~/.zshrc file
vim ~/.zshrc
source ~/.zshrc

```
alias x86="$env /usr/bin/arch -x86_64 /bin/zsh ---login"
alias arm="$env /usr/bin/arch -arm64 /bin/zsh ---login"
alias brew='arch -arm64 brew'
```

# switch to arm
arm
# check below outputs arm64, so installing homebrew installs it in /opt/homebrew for arm64 instead of /usr/local for x86
/usr/bin/uname -m

# uninstall homebrew if necessary https://github.com/homebrew/install?tab=readme-ov-file#uninstall-homebrew
# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/luke/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

exec $SHELL

brew upgrade
brew update

brew install rbenv ruby-build openssl
# add to ~/.zshrc `eval "$(rbenv init -)"`
rbenv init
rbenv versions
which openssl
RUBY_CONFIGURE_OPTS=--with-openssl-dir=/opt/homebrew/Cellar/openssl@3/3.3.1 rbenv install 3.3.0

# if you get error `__rvm_make -j 12` it is because you have brew installed in /usr/local for x86 instead of /opt/homebrew for arm https://stackoverflow.com/questions/48973268/error-running-rvm-make-j-1/72687225#72687225

rbenv global 3.3.0
rbenv local 3.3.0

gem update --system
which ruby
ruby -v

nvm install 20.16.0
nvm use 20.16.0

which node
node -v

npm install -g yarn

# configure github ssh keys

gem install rails -v 7.2.0
rbenv rehash
rails -v

brew install postgresql

# run postgresql commands it suggests to run
# https://www.postgresql.org/docs/14/app-initdb.html

# start postgresql@14 now and restart at login:
brew services start postgresql
brew services restart postgresql
rake db:drop
# or can just run:
/opt/homebrew/opt/postgresql@14/bin/postgres -D /opt/homebrew/var/postgresql@14

# by default the postgresql user is your current macOS username with no password

# try running postgresql
psql postgres
\l
\du

CREATE USER postgres SUPERUSER;

ALTER ROLE postgres WITH SUPERUSER;
ALTER ROLE postgres WITH CREATEDB;
ALTER USER postgres WITH PASSWORD 'abcde';

\c submissions_development
\d

# IGNORE
```
su - postgres 
psql template1
GRANT ALL PRIVILEGES ON DATABASE "submissions_development" to postgres;
GRANT ALL PRIVILEGES ON DATABASE "submissions_test" to postgres;
\q
```

# changed the location of header files necessary for compiling C extensions if required

sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /

# install dependencies if rbsecp256k1
brew install automake openssl libtool pkg-config gmp libffi
export LDFLAGS="-L/opt/homebrew/opt/libffi/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libffi/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libffi/lib/pkgconfig"

bundle install

# modify user/pass in database.yml

rake db:drop
rake db:create
rake db:migrate
rake db:seed

# run with `rails server` or:
bundle exec guard


# configure VSCode Cmd+Shift+P and select "Install 'code' command in PATH"
# configure VSCode as editor to allow edit Rails credentials in your terminal.

echo 'export EDITOR="code --wait"' >> ~/.zshrc
exec $SHELL