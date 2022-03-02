Song.delete_all
Genre.delete_all
Artist.delete_all

hotline_bling = Song.create(name: 'Hotline Bling')
hotline_bling2 = Song.create(name: 'Hotline Bling2')
thriller = Song.create(name: 'Thriller')
thriller2 = Song.create(name: 'Thriller2')

drake = Artist.create(name: 'Drake')
mj = Artist.create(name: 'Michael Jackson')

rap = Genre.create(name: 'Rap')
pop = Genre.create(name: 'Pop')

hotline_bling.artist = drake
thriller.artist = mj

drake.songs << hotline_bling
drake.songs << hotline_bling2
mj.songs << thriller
mj.songs << thriller2

pop.songs << thriller
rap.songs << hotline_bling
pop.songs << thriller2
rap.songs << hotline_bling2

