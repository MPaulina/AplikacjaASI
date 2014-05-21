# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times { |i| Gist.create(snippet: "int i;", lang: "C#", description: "integer - całkowitoliczbowa") }
10.times { |i| Gist.create(snippet: "string name = 'Dziewczyny Rubiego';", lang: "C", description: "łańcuch znaków") }
10.times { |i| Gist.create(snippet: "private void Function () {};", lang: "Java", description: "funckja, która nic nie zwraca") }
10.times { |i| Gist.create(snippet: "float d;", lang: "C", description: "double - zmiennoprzecinkowa") }
10.times { |i| Gist.create(snippet: "body { font-size: 15px; };", lang: "CSS", description: "rozmiar czcionki dla body") }
