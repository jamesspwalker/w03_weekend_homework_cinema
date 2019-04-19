require_relative('models/films')
require_relative('models/customers')
require_relative('models/tickets')

require('pry-byebug')

Ticket.delete_all()
Film.delete_all()
Customer.delete_all()

film1 = Film.new({'title' => 'Seven Samurai', 'price' => '5'})
film1.save()
film2 = Film.new({'title' => 'Rashomon', 'price' => '4'})
film2.save()

customer1 = Customer.new({'name' => 'Toshiro', 'funds' => '40'})
customer1.save()
customer2 = Customer.new({'name' => 'Akira', 'funds' => '60'})
customer2.save()

ticket1 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer1.id})
ticket1.save()
ticket2 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer2.id})
ticket2.save()
ticket3 = Ticket.new({'film_id' => film2.id, 'customer_id' => customer1.id})
ticket3.save()

# customer1 = {'name' => 'Toshiro', 'funds' => '50'}
customer1.funds = 50
customer1.update()



# binding.pry
# nil
