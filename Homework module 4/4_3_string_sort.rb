# З вхідної стрічки виділити всі підрядки, довжиною більше 5 та вивести їх у сортованому вигляді

# Ви маєте дописати логіку сортування масиву зі всіх слів з вхідного речення,
# довжина яких є строго більшою за 5.

class Calculator
  def string_sort input_string

    # вхідний рядок записуватиметься у змінну temp
    temp = input_string

    # temp слід розділити на множину підрядків за пробіл
    arr = temp.split(" ")

    # з отриманої множини вибрати лишень ті елементи, довжина яких більша за 5
    res = Array.new
    for i in 0...arr.length
      if arr[i].length>5
      res.push(arr[i])
      end
    end
    # посортувати масив та вивести його
    res.sort!
    # тут його слід вивести
    p res

  end
end
c = Calculator.new
c.string_sort("Hello! my name is Alexander")
