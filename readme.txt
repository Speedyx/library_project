mkdir library_project
cd library_project
gem install rspec

Crear:
|- book.rb
|- library.rb
|- spec
	|- book_spec.rb
	|- library_spec.rb
	|- spec_helper.rb

En el Gemfile tenemos que poner:
group :development, :test do
  gem 'rspec-rails'
end

Como ayuda se puede generar con:
rails generate rspec:install

Como ayuda se puede usar en la carpeta principal:
rspec --init

Y puede que necesite un:
rake db:migrate RAILS_ENV = test

Para probar los tests de la carpeta spec:
rspec  spec

Para probar los tests library_spec de la carpeta spec:
rspec  spec/library_spec.rb

Si queremos ver lo que lanzamos:
rspec spec --format nested

Y si lo juntamos todo:
rspec  spec/library_spec.rb --format nested
