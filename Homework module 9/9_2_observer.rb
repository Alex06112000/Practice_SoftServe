﻿# Завдання полягає у реалізації механізму для відслідковування спостерігачами
# процесу волевиявлення і підрахунку голосів на виборах.
#
# Загальне завдання, яке перед вами стоїть є наступним.
# Необхідно зробити програму, яка при публічній оцінці стану виборчого бюлетеня
# відповідальним А, буде надсилати всім членам виборчої комісії, які
# спостерігають за процесом підрахунку повідомлення про те,
# як реєструється бюлетень і за кого віддано голос в ньому.

# Модуль для додавання функціоналу спостерігачів.
#
# Якщо подумати, щоб прив’язати спостерігачів для відповідальної особи, необхідно,
# щоб відповідальна особа мала можливість:
#   * пам’ятати всіх спостерігачів ( масив об’єктів )
#   * додати і забрати спостерігачів
#   * повідомити спостергачів про результат огляду бюлетеня


# Вам слід зреалізувати логічне управління спостерігачами та реакцію спостерігачів на певну подію.


#
# Модуль, який додає до довільного класу таку логіку, щоб за
# об’єктами цього класу якого можна встановити спостереження,
# управляти списком об’єктів-спостерігачів та повідомляти всіх спостерігачів
# про певну дію, на яку вони підписані.
#
# @observers - множина спостерігачів за екземпляром цього класу.
#
module Vybory
  # додаємо ґеттер для контрольної змінної-масиву, в якій
  # зберігатиметься актуальний списку користувачів
  attr_reader :observers

  # створюємо список спостерігачів
  def initialize_observers
    # ініціалізуйте контрольну змінну-масив пустим об’єктом масиву
    @observers = observers[]
  end

  # метод для додавання довільної кількості спостерігачів
  def add_observer(*observers)
    # додайте кожен елемент зі списку аргументів до контрольної змінної-масиву
    @observers.push(observers)
  end

  # метод для знищення довільної кількості спостерігачів
  def delete_observer(*observers)
    # видаліть з контрольної змінної-масиву всі елементи аргументи цього методу
    @observers.delete(observers)
  end


  private
  # приватний метод - для повідомлення спостерігачів про певну дію
  # слід зауважити, що всі спостерігачі мають мати реалізований метод notify!
  def notify_observers receiver
    # викличіть для кожного елементу змінної-масиву метод notify
    @observers.each do |observer|
      observer.notify(observer, receiver) end
  end
end

# Клас, який реалізує логіку члена виборчої комісії, який підраховує бюлетні.
# Загально - це клас особа (Person), до якого підмішується модуль Vybory.
# Також клас володіє методами підрахувати_голос та повідомити. Перший з цих методів
# розсилає всім спостерігачам повідомлення про кандидата, за якого у поточному
# виборчому бюлетені був відданий голос. Другий метод фактично сприймає інформацію
# яка розсилається всім спостерігачам.
#
# @name - ім’я спостерігача
#
class Person
  # підмішуємо модуль Vybory
  include Vybory
  # додаємо ґеттер для поля name об’єктів Person
  attr_reader :name

  # створюємо особу, принагідно передаючи їй ім’я
  def initialize name
    # тут слід ініціалізувати список спостерігачів для конкретної особи
    initialize_observers
    @name = name
  end

  # метод, який виводить оголошення про опрацювання 1 бюлетеню
  # та повідомляє всіх спостерігачів про те, за кого був відданий голос.
  def count_voice receiver
    puts "Опрацьовано 1 бюлетень #{receiver}."
    # тут слід повідомити всіх спостерігачів про те, за кого був бюлетень
    notify_observers receiver
  end

  # метод, який викликається модулем Vybory. в нього передається особа,
  # яка оголосила результат по бюлетеню та сам результат.
  def notify person, receiver
    puts "#{person.name.capitalize} -> #{@name.capitalize} : бюлетень за #{receiver}"
  end
end
