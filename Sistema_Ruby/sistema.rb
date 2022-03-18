require_relative 'bancosys'

loop do
  puts
  puts 'Type the desired option'
  puts
  puts '(1)-Create order'
  puts '(2)-Search for specific order'
  puts '(3)-Search for specific states'
  puts '(4)-Change order status'
  option = gets.to_i

  case option
  when 1
    create_order
    puts 'Order created successfully'
  when 2
    puts 'Type the order number'
    idorder = gets.to_i
    search_order(idorder)
  when 3
    puts 'Type the desired order state'
    puts  '(1)-Pending'
    puts  '(2)-Progress'
    puts  '(3)-Concluded'
    storder = gets.to_i
    case storder
    when 1
      storder = 'pending'
      search_pendings(storder)
    when 2
      storder = 'progress'
      search_pendings(storder)
    when 3
      storder = 'concluded'
      search_pendings(storder)
    end

  when 4
    puts 'Type the order number you want to to change status'
    idorder = gets.to_i
    change_state(idorder)
  else
    puts 'Invalid option'
  end
end
