
import UIKit

/*
 Напишите функцию, которая принимает несколько параметров, имя человека, его профессию и количество дней отпуска.
 Пусть функция выводит фразу “Меня зовут ***, я работаю *** и у меня есть *** дней отпуска”
 Модифицируйте функцию, добавив значения по умолчанию для профессии и количества дней отпуска. Попробуйте вызвать
 функцию три раза, каждый раз с разным количеством параметров
 */

func info(name: String, position: String = "junior iOS developer", daysOff: Int = 24) {
    print("Hi, my name is \(name) , I work as \(position), i have \(daysOff) days for vacation")
}
info(name: "Grisha")
info(name: "Antony", daysOff: 44)
info(name: "Sasha", position: "post-officer")

/*
 Напишите три функции sum:
 первая принимает два String параметра и выводит строку состоящую из суммы параметров
 вторая принимает два Float параметра и возвращает их сумму
 третья принимает два Int параметра и тоже возвращает их сумму
 
 
 
 Создайте по две переменные каждого типа данных: Int, String и Float и протестируйте все три функции
 */

func first(_ number1: String,_ number2: String) -> String {
    number1 + number2
}

func second(_ number1: Float,_ number2: Float) -> Float {
    number1 + number2
}

func third(_ number1: Int,_ number2: Int) -> Int {
    number1 + number2
}
let firstString = "Grisha"
let secondString = "Kharkhalup"
let firstInt = 6
let secondInt = 4
let firstFloat = 12.245
let secondFloat = 43.21
let result1 = first(firstString, secondString)
let result2 = second(Float(firstFloat), Float(secondFloat))
let result3 = third(firstInt, secondInt)

/*
 Напишите функцию, принимающую имя человека и замыкание, которое принимает String значение и ничего не возвращает
 Вызовите в функции замыкание которое примет имя человека, если в нем есть символы, или строку “Bob”, если имя было
 пустым. Попробуйте вызвать функцию с разными параметрами
 */

func nameOfPerson(name: String, closure: (String) -> ()) {
    closure(name)
}
nameOfPerson(name: "") {name in
    if name.isEmpty {
        print("BOB")
    } else {
        print(name)
    }
}
nameOfPerson(name: "VOVA") {name in
    if name.isEmpty {
        print("BOB")
    } else {
        print(name)
    }
}
