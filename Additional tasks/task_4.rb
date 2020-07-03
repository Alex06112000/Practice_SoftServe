class Digit
  def func (digit1, digit2)
    if digit1!=0 && digit2!=0 && digit2!=1
    p  result =  (digit1 * digit2)**(digit2-1)
    else
      p "Ні одне з чисел не має дорівнювати 0! 2 число не має дорівнювати 1! "
      end
  end
end
Digit.new.func(4,5)
