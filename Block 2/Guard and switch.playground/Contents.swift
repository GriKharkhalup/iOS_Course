import UIKit
/*
 Создайте переменные типа Int “Проходной бал” и “Мой бал” которые будут содержать значения от 1 до 100.
 Создайте switch else, который будет проверять, является ли мой балл выше проходного или ниже. В одном
 случае пусть выводиться сообщение “К сожалению ваш балл ниже проходного”,
 во втором случае “Поздравляем! Вы поступили!”
 */

var myScore = 81
switch myScore {
case 0...61: print("К сожалению ваш балл ниже проходного")
case 62...100: print("Поздравляем! Вы поступили")
default: "?"
}

func score(myScore:Int){
    guard myScore > 61 else { print("К сожалению ваш балл ниже проходного")
        return
    }
}

/*
 Создайте switch case, который будет проверять переменную типа Int, с возможными значениями от 1 до 7.
 B зависимости от ее значения выведите в консоль день недели.Попрактикуйтесь с использованием выражений fallthrough и
 where.
 */
var dayOfWeek = Int.random(in: 1...7)
var sunny = true

switch dayOfWeek {
case 1: print("Monday")
case 2: print("Tuesday")
case 3: print("Wednesday")
    fallthrough
case 4: print("Thursday")
case 5 where sunny: print("Friday")
case 6 where sunny: print("Saturday")
case 7 where sunny: print("Sunday")
default: print("?")
}

