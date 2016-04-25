# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

hosts = [
  {
    first_name: 'Luis Guillermo',
    last_name: 'Elizondo Herrera',
    email: 'luisgui@25cc.dev',
    bio: "In iaculis tortor elementum nibh pulvinar, vel sagittis dui ultricies.
    Phasellus ullamcorper sodales ultricies. Praesent dignissim eget quam non tincidunt.
    Aliquam sit amet augue at turpis accumsan tempor et vel mi. Nunc volutpat eros ut
    felis placerat lacinia. Fusce a consectetur urna, vitae dignissim ligula. Nam
    quis sapien suscipit, porta elit eu, vehicula dui. Fusce pharetra lectus quis
    elit vehicula, pellentesque euismod nulla iaculis.",
  },
  {
    first_name: 'Karla',
    last_name: 'Mora Novoa',
    email: 'karla@25cc.dev',
    bio: "In iaculis tortor elementum nibh pulvinar, vel sagittis dui ultricies.
    Phasellus ullamcorper sodales ultricies. Praesent dignissim eget quam non tincidunt.
    Aliquam sit amet augue at turpis accumsan tempor et vel mi. Nunc volutpat eros ut
    felis placerat lacinia. Fusce a consectetur urna, vitae dignissim ligula. Nam
    quis sapien suscipit, porta elit eu, vehicula dui. Fusce pharetra lectus quis
    elit vehicula, pellentesque euismod nulla iaculis.",
  }
]

Host.create(hosts)

episodes = [{
  title: 'First episode',
  description: 'Integer id fermentum lorem. Proin dapibus, sapien vel aliquam
  sollicitudin, nisl neque congue metus, quis pharetra mauris dui ut odio. Morbi
  consequat quam felis, at malesuada metus vestibulum et. Nunc tempus fringilla
  magna in egestas. Sed condimentum libero quis ullamcorper lacinia.'
}, {
  title: 'Second episode',
  description: 'Integer id fermentum lorem. Proin dapibus, sapien vel aliquam
  sollicitudin, nisl neque congue metus, quis pharetra mauris dui ut odio. Morbi
  consequat quam felis, at malesuada metus vestibulum et. Nunc tempus fringilla
  magna in egestas. Sed condimentum libero quis ullamcorper lacinia.'
}]

episodes.each do |e|
  episode = Episode.create(title: e[:title], description: e[:description], published_at: 3.days.ago)
  episode.hosts << Host.all.sample(Random.new.rand(Host.count))
end
