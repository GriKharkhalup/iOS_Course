import UIKit

/*
 Создайте массив с десятью случайными числами, из которых пять меньше нуля и пять больше нуля
 1. Замените все отрицательные числа на 0 и выведите массив в консоль
 2. Найдите минимальный и максимальный элемент в массиве и выведите его в консоль
 3. Найдите сумму элементов массива чисел и выведите ее в консоль
 */

var numberArray: [Int] = []
for _ in 1...5 {
    numberArray.append(Int.random(in: 0...5))
}
for _ in 1...5 {
    numberArray.append(Int.random(in: -5...0))
}

var i = 0
for _ in numberArray {
    //    let numberPos = numberArray[i]
    if numberArray[i] <= 0 {
        numberArray[i] = 0
    }
    i += 1
}

print(numberArray)

func minAndMax(array: [Int]) -> (Int, Int) {
    var j = 0
    var maxValue = array[j]
    var minValue = array[j]
    for _ in array {
        if array[j] >= maxValue {
            maxValue = array[j]
        } else {
            minValue = array[j]
        }
        j += 1
    }
    return (minValue, maxValue)
}
minAndMax(array: numberArray)
var sum = 0
for number in numberArray {
    sum += number
}
print(sum)

/*
 4. Создайте массив с названиями всех месяцев, типа String. Затем создайте словарь и с помощью цикла задайте
 ему значения на основании массива: где в качестве ключей будут выступать цифры (индексы), а в качестве
 значений - элементы массива.
 */

var months: [String] = [ "Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"]
var monthDict:[Int : String] = [:]
var j = 0
for month in months {
    j += 1
    monthDict[j] = month
}
print(monthDict)

/*
 5. Создайте словарь:
 var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]
 Поменяйте местами значения по ключам “first” и “fourth”. Выведите в консоль итоговый словарь
 */

var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]
let value = dictionary["first"]
dictionary["first"] = dictionary["fourth"]
dictionary["fourth"] = value
print(dictionary)

/*
 6. Создайте пустой словарь calendar, так же вам понадобиться массив с месяцами
 из четвертого задания.
 С помощью цикла от 1970 до 2022 задайте значения для словаря. В качестве ключа
 пусть будет год, а значение это массив с месяцами.
 */

var calendar: [Int: [String]] = [:]
for year in 1970...2022 {
    calendar.updateValue(months, forKey: year)
}
print(calendar)

/*
 7. С помощью другого цикла добавьте в calendar на каждый год по одному месяцу с
 вашим названием,чтобы в каждом году вышло 13 месяцев.
 */
months.append("13-th month")
print(months)

for years in 1970...2022 {
    calendar.updateValue(months, forKey: years)
}
print(calendar)

/*
 7.1 На основании словаря, который у вас получился в седьмом задании, давайте создадим новый словарь, который будет
 включать в себя также и даты, a именно массив с числами от 1 до 31:
 Создайте массив с числами от 1 до 31 с помощью цикла.
 Создайте новый словарь calendarPro, где в качестве ключей будут года, в качестве значений вложенные
 словари. В которых в качестве ключей названия месяцев, а в качестве значений массив с днями созданный выше.
 Выведите в консоль 1 сентября 2019 года.
 */

var calendarPro: [Int: [String: [Int]]] = [:]

var days = [Int]()
for day in  1...31 {
    days.append(day)
}
var monthCalendar = [String:[Int]]()
for month in months {
    monthCalendar[month] = days
}
var years = [Int]()
for years in 1970...2022 {
    calendarPro[years] = monthCalendar
}
calendarPro[2022]

print("\(calendarPro[2019]!["Sept"]![0])")

/*
 8. Создайте 2 переменные с числами. Если значения равны, выведите в консоль их сумму
 умноженную на 3, если нет, выведите в консоль их сумму в случае если она четное число.
 */

var first = 10
var second = 26

if first == second {
    print((first * second) * 3)
} else if (first + second) % 2 == 0 {
    print("Sum is even")
}

/*
 9. Создайте строку, в которой будет храниться любая фраза из трех или более слов c восклицательным знаком в
 конце. Выведите в консоль первое и последнее слово из этой строки (без восклицательного знака).
 В этом задании необходимо найти способ доставать слова из вашей строки, погуглите методы с помощью которых
 это возможно реализовать. Задание сложнее чем кажется :)
 */

var sentence = "Hello I am from Ukraine. I live in Kyiv!"
var array = sentence.components(separatedBy: .whitespaces)
let firstWord = array.first
var lastWord = array.last
lastWord?.dropLast()
