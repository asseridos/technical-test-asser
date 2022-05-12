bundle install
yarn install

sudo service sqlite3 start

bin/rails db:migrate
rake db:seed