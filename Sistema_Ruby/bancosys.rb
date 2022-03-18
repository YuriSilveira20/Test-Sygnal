require 'active_record'

ActiveRecord::Base.establish_connection({
                                          adapter: 'mysql2',
                                          host: 'localhost',
                                          username: 'root',
                                          password: 'root',
                                          database: 'base_order'

                                        })
class Order < ActiveRecord::Base
end

def create_order
  order = Order.new
  order.states = 'pending'
  order.save
end



def search_order(idorder)
  order = Order.find(idorder)
  puts "The order #{idorder}  #{order.states}"
end

def search_pendings(storder)
  order = Order.where(states: storder)
  order.each do |state|
    puts "#{storder} order: #{state.id}"
  end
end

def change_state(idorder)
  order = Order.find(idorder)
  case order.states
  when 'pending'
    order.states = 'progress'
    order.save
    puts 'Altered state'
  when 'progress'
    order.states = 'concluded'
    order.save
    puts 'Altered state'
  else
    puts 'Invalid option'
    puts "Order #{idorder} Concluded"
  end
  # Order.delete_all2
  
end

