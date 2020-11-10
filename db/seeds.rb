#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Forum.destroy_all
Comment.destroy_all
Portfolio.destroy_all
Market.destroy_all
Security.destroy_all

puts 'Creating all'

# Users created
userone = User.create(email: 'can@gmail.com', password: 123456)
usertwo = User.create(email: 'cem@gmail.com', password: 123456)
userthree = User.create(email: 'hakan@gmail.com', password: 123456)

# Forums created
forumone = Forum.create(name:'BIST100', creation_date: '09/11/2020')
forumtwo = Forum.create(name:'FX Rates', creation_date: '09/11/2020')

# Comments created
commentone = Comment.create(content: 'The markets may go up after the resignation of the Finance Minister', user: userone, forum: forumone)
commenttwo = Comment.create(content: 'Banks are going up, the bond interest are going down', user: usertwo, forum: forumone)

#Portfolio created
portfolioone = Portfolio.create(name: 'port1', value: 1200, settlement_date: '09/11/2020', user: userone, settlement_value: 1000)
portfoliotwo = Portfolio.create(name: 'port2', value: 1150, settlement_date: '09/11/2020', user: usertwo, settlement_value: 1000)
portfoliothree = Portfolio.create(name: 'port3', value: 1100, settlement_date: '09/11/2020', user: userthree, settlement_value: 1000)

# Markets created
@return_bist = 1231 / 1144 - 1
@return_usd = 8.28 / 5.95 - 1
bist100 = Market.create(description: 'Turkish equity market', index_value: 1231, ytd_return: @return_bist)
usdmarket = Market.create(description: 'FX markets for USD/TRY', index_value: 8.28, ytd_return: @return_usd)

# Security created
tkfen = Security.create(security_type: 'equity', value: 14.30, beg_value: 14.06, description: 'Tekfen Holding', market: bist100, portfolio: portfolioone)
enkai = Security.create(security_type: 'equity', value: 7.59, beg_value: 7.68, description: 'Enka İnşaat', market: bist100, portfolio: portfolioone)
sahol = Security.create(security_type: 'equity', value: 9.50, beg_value: 9.49, description: 'Sabancı Holding', market: bist100, portfolio: portfoliotwo)
