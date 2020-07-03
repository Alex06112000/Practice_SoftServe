class Quarter
  def entermonth
    p "Введіть номер місяця"
    m = gets.chomp
    m = m.to_i

    while m > 12 || m < 1 do
    puts"Порядковий номер місяця введено некоректно! Спробуйте ще раз!"
        m = gets.chomp
        m = m.to_i
    end
    
    quarter = ((m.to_i - 1) / 3) + 1
    p "#{quarter} - квартал"
  end
end
Quarter.new.entermonth
