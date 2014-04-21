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

Para probar los tests de la carpeta spec:
rspec  spec

Para probar los tests library_spec de la carpeta spec:
rspec  spec/library_spec.rb

Si queremos ver lo que lanzamos:
rspec spec --format nested

Y si lo juntamos todo:
rspec  spec/library_spec.rb --format nested
