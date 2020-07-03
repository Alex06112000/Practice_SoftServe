class Space
  def planets
    arrplanets = ["Mercury","Venus","Earth","Mars","Jupiter","Saturn","Uranus","Neptune"]
    p "Введіть порядковий номер планети (від 1 до 8) : "
    index = gets.chomp()
    name = arrplanets[index.to_i-1]
    while name == nil do
      p "Невірно введені дані! Введіть порядковий номер планети (від 1 до 8) : "
      index = gets.chomp()
      name = arrplanets[index.to_i-1]
    end
    p name
  end
end
Space.new.planets
