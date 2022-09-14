import UIKit

/*
 Напишите функцию принимающую два параметра: имя и фамилия. Пусть она возвращает полное имя человека
 Напишите функцию, которая принимает число и возвращает его квадратный корень
 Напишите функцию, которая принимает число и возвращает его во второй степени
 Напишите функцию, принимающую два параметра. Пусть она возвращает сумму квадратного корня первого параметра и
 второго параметра в квадрате. Используйте функции, что вы написали выше
 */
func personInfo(name: String , surname: String) -> String {
    let result = name + " " + surname
    return result
}
let myName = personInfo(name: "Grisha", surname: "Kharkhalup")
print(myName)
func squareRoot1(number: Double) -> Double {
    let result = pow(number, 0.5)
    return result
}
let sqrt = squareRoot1(number: 144)

func sqr(numb: Double ) -> Double {
    let result = numb * numb
    return result
}
let sqr1 = sqr(numb: 5)

func doubleFunc( numb1: Double, numb2: Double) -> Double {
    let result = sqrt + sqr1
    return result
}
let res = doubleFunc(numb1: 2, numb2: 3)

/*
 Создайте цикл от 1 до 10, внутри которого создайте вложенный цикл от 1 до 10. На каждой итерации вложенного цикла
 вызовите функцию из прошлого задания. В качестве первого параметр
 передавайте номер итерации внешнего цикла, в качестве второго параметра передавайте номер итерации внутреннего цикла
 */

for first in 1...10 {
    for second in 1...10 {
        doubleFunc(numb1: Double(first), numb2: Double(second))
    }
}
