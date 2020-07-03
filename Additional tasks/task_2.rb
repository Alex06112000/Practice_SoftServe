class Savings
  def goods
    p "Введіть ціну товару: "
    price = gets.chomp()
    p "Введіть кількість товару: "
    count = gets.chomp()
    p "Введіть знижку на товар у %: "
    discount = gets.chomp()
    result = ((price.to_f * discount.to_f)/100)*count.to_i
    p "Ви заощадили: #{result.to_i}"
  end
end

Savings.new.goods
