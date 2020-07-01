﻿# Програма для обчислення n-го числа Фібоначчі.

# функція для обчислення чисел Фібоначчі реалізована за допомогою рекурсії
# перший якщо n менше або рівне за 1, то повертаємо n
# якщо n є більшим, то повертаємо суму двох функцій fibonacci від n - 1 та n - 2
# таким чином творячи рекурсію - виклик функції у свому тілі самої себе


# Ви маєте зреалізувати логіку для обчислення n-го члена послідовності Фібоначчі.

class Calculator
  def fibonacci n
    if n<=1
      return n
    else
      return fibonacci(n-1) + fibonacci(n-2)
    end
  end
end
p Calculator.new.fibonacci(5)
