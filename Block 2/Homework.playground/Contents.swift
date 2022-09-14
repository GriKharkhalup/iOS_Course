import UIKit

/*
 1. Создайте класс Матрос (Sailor), в котором будет инициализатор, одно
 свойство - имя матроса и один метод "introduceMyself". При вызове этого метода, в
 консоль будет выводиться сообщение "Привет, меня зовут *имя матроса*!"
 */

class Sailor {
    var name: String
    init(name: String) {
        self.name = name
    }
    func introduceMyself() {
        print("Hi, my name is \(name)")
    }
}

/*
 2. Создайте класс Корабль, в котором будет инициализатор, два свойства:
 название корабля и массив “матросы”. Добавьте также функцию "introduceAll",
 которая будет выводить приветствие от имени всех матросов, после чего выводить
 сообщение "Мы с корабля *имя корабля*"
 */

class Ship {
    var nameShip: String
    var sailorsArray : [Sailor] = []
    init(nameShip: String, sailorsArray: [Sailor]) {
        self.nameShip = nameShip
        self.sailorsArray = sailorsArray
    }
    func introduceAll() {
        for sailor in sailorsArray {
            print("Hi, i am \(sailor.name)")
        }
        print("We are from \(nameShip)")
    }
}
/*
 3. Через инициализатор создайте 5 экземпляров класса Матрос и класс
 Корабль, в который передайте список созданных матросов. Вызовите функцию
 introduceAll. Вы должны получить в консоли приветствие от имени всех матросов и
 название корабля
 */

let firstSailor = Sailor(name: "Anton")
let secondSailor = Sailor(name: "Vasyyl")
let thirdSailor = Sailor(name: "Ivan")
let fourthSailor = Sailor(name: "Gregory")
let fifthSailor = Sailor(name: "Alex")

let arrayOfSailor = [firstSailor, secondSailor, thirdSailor, fourthSailor, fifthSailor]
let capitan = Ship(nameShip: "CAPITAN", sailorsArray: arrayOfSailor)

capitan.introduceAll()

/*
 Создайте класс Titanic, наследник класса Ship. И класс TitanicSeilor,
 аследник Seilor. Пусть TitanicSeilor будет иметь ту же функцию introduseMyself, но
 сообщение будет выводить на английском. Аналогично класс Titanic, только пусть
 его функция introduceAll выводит в на двух языках: то же сообщение что и Ship, а
 после - такое же сообщение на английском. Не меняйте существующие классы Ship и Seilor
 */

class Titanic: Ship {
    override func introduceAll() {
        super.introduceAll()
        print("Мы с корабля \(nameShip)")
    }
}

let titanic = Titanic(nameShip: "Titanic", sailorsArray: arrayOfSailor)
titanic.introduceAll()

class TitanicSailor: Sailor{
    override func introduceMyself() {
        super.introduceMyself()
        print("Привет меня зовут \(self.name)")
    }
}

let titannicSailor = TitanicSailor(name:"Anton")
titannicSailor.introduceMyself()

/*
 5. Создайте класс Calculator, с функциями + - * /. Создайте класс CalculatorPro, который будет также вычислять процент
 от числа и возводить число в степень
 */

class Calculator {
    func summ(_ numb1: Int, _ numb2:Int) -> Int {
        let result = numb1 + numb2
        return result
    }
    func min(_ numb1: Int, _ numb2: Int) -> Int {
        let result = numb1 - numb2
        return result
    }
    func mult(_ numb1: Int, _ numb2: Int) -> Int {
        let result = numb1 * numb2
        return result
    }
    func diver(_ numb1: Float, _ numb2: Float) -> Float {
        let result = numb1 / numb2
        return result
    }
    func ost(_ numb1: Int, _ numb2: Int) -> Int {
        let result = numb1 % numb2
        return result
    }
}

class CalculatorPro: Calculator {
    
    func ext(_ numb1: Double, _ ext: Double) -> Double {
        let result = (pow(numb1, ext))
        return result
    }
    func perc(_ numb1: Float, _ percent: Float) -> Float {
        let result = (numb1 * percent) / 100
        return result
    }
}
let calc = CalculatorPro()
calc.ext( 2, 2)
calc.perc( 100, 10)
calc.diver( 127, 10)
calc.mult( 21, 12)

/*
 Создайте класс SuperProCalc, наследник CalculatorPro, который будет
 вычислять сложные проценты для расчета суммы депозита на указанный период
 времени с указанной процентной ставкой x=a(1+p/100)^n
 */

class SuperProCalc: CalculatorPro {
    func compoundInterest(_ numb1:Double, _ numb2:Double, _ numb3:Double) -> Double {
        let result = pow(numb1 * (1 + numb2 / 100), numb3)
        return result
    }
}
let calc1 = SuperProCalc()
calc1.compoundInterest(10, 10, 1)

/*
 Создайте функцию которая принимает 1 параметр, процент заряда батареи. Пусть
 функция вернет сообщения для пользователя в зависимости от этого процента
 если 100%: “Устройство заряжено”,
 если 70-80%, “Необходимо зарядить устройство в течении 6 часов”
 если 20-40%, “Поставьте устройство на зарядку”
 если 0%, “Устройство полностью разряжено”
 В остальных случаях не выводите ничего. Используйте switch case.
 */

func batteryLife(battery: Int) -> String {
    switch battery {
    case 100: return "Charged absolutely"
    case 70...80: return "Charge for 6 hours"
    case 20...40: return "Charge imidiatelly"
    case 0: return "Dead"
    default: return "Mistake"
    }
}

let percentage = batteryLife(battery: 23)
