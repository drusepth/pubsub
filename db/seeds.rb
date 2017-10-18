GENRES = [
  'childrens',
  'crime',
  'fairy tale',
  'fan fiction',
  'fantasy',
  'folklore',
  'historical fiction',
  'horror',
  'humor',
  'realistic fiction',
  'science fiction',
  'thriller',
  'western'
]

GENRES.each do |genre|
  Genre.create(name: genre)
end

User.create(email: 'test@test.test', password: 'testtest')
