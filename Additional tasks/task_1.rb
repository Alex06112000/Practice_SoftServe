class Quarter
  def entermonth
    p "Введіть номер місяця"
    m=gets.chomp
    quarter = ((m.to_i - 1) / 3) + 1
    return quarter
  end
end
quarter = Quarter.new
quarter.entermonth
