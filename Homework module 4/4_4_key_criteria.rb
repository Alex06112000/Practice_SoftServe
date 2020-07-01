# Сформувати масив всіх ключів вхідного хешу, які підпадають під визначений критерій

# Ви маєте записати у змінну results множину ключів хешу input_hash,
# довжина яких строго більше 3 символів

class Calculator
  def hash_key_criteria input_hash

    # вхідний хеш записуватиметься у змінну temp

    temp = input_hash

    # вибираємо всі ключі з хешу

    temp = temp.keys

    # формуємо множину ключів, довжина яких більше 3 символів

    result = Array.new
    for i in 0...temp.length
      if temp[i].length>3
        result.push(temp[i])
      end
    end

    # тут його слід вивести
    puts result

  end
end
names= { "Alexander" => 20, "Artem" => 21, "Oleg" => 20, "Max" => 20 }
c = Calculator.new
c.hash_key_criteria(names)
