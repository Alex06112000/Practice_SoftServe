class MaxRes
  def maxresult
    arrdigits = ["2","3","4","5","6","7","8","9"]

  puts "Введіть три числа від 1 до 10 через пробіл."
    input = gets.chomp()

    a=input.split(" ")

    k = arrdigits.include?(a[0]) &&
    arrdigits.include?(a[1]) &&
    arrdigits.include?(a[2])&&
    a.length==3

    while k==false do
            puts "Дотримуйтесь правил вводу!\nВведіть три числа від 1 до 10 через пробіл."

            a=gets.chomp
            a = a.split (" ")

            k = arrdigits.include?(a[0]) &&
            arrdigits.include?(a[1]) &&
            arrdigits.include?(a[2])&&
            a.length == 3
    end

    res = 0

    (0...a.length).each{|i| a[i]=a[i].to_i}

    a[0] == a.max ? res = a[0] * (a[1] + a[2]) :
    a[2] == a.max ? res = (a[0] + a[1]) * a[2] :
    a[0] == a.min ? res = (a[0] + a[1]) * a[2] :
    res = a[0] * (a[1] + a[2])

    p res

  end
end
 MaxRes.new.maxresult
