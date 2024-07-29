set -o errexit

bundle install
yarn install
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate

bundle exec rails console

categories_to_keep = Category.limit(14)

Category.where.not(id: categories_to_keep.pluck(:id)).destroy_all