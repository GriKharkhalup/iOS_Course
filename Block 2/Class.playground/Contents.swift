import UIKit

/*
 Создайте класс Phone, который содержит переменные number, model и weight
 Создайте 2 экземпляра этого класса и выведите в консоль значения их свойств
 Добавьте в класс Phone методы:
 receiveCall – имеет один параметр – имя звонящего. Выводит на консоль сообщение “Звонит \(name)”
 getNumber – возвращает номер телефона
 */

class Phone {
    var number: Int
    var model: String
    var weight: Float
    
    init(number: Int, model: String, weight: Float) {
        self.number = number
        self.model = model
        self.weight = weight
    }
    convenience init() {
        self.init(number: 0, model: "", weight: 0)
    }
    convenience init(number: Int, model: String) {
        self.init(number: number, model: model, weight: 0)
    }
    
    func recieveCall(name: Int) {
        print("\(name) is calling you!")
    }
    func getNumber(number: Int) -> Int {
        return number
    }
    func recieveCall(name: Int, number: Int) {
        print("\(name), \(number)")
    }
    func sendMessage(numberMessage: Int) {
        print("\(numberMessage)")
    }
}
let aPhone = Phone(number: 121212, model: "12", weight: 248)
let bPhone = Phone(number: 232323, model: "13", weight: 210)

/*
 Добавьте экземпляры класса в массив и вызовите эти методы для каждого из них с помощью цикла
 Добавьте в класс метод receiveCall, который принимает два параметра - имя звонящего и номер телефона звонящего.
 Вызовите этот метод для каждого экземпляра
 Создайте метод sendMessage. Он будет принимать на вход номера телефонов, которым будет отправлено сообщение. Метод
 выводит в консоль номера этих телефонов.
 */

var phoneArray = [aPhone, bPhone]

for (index, phone) in phoneArray.enumerated() {
    phoneArray[index].recieveCall(name: phone.number)
}
aPhone.sendMessage(numberMessage: aPhone.number)
bPhone.recieveCall(name: aPhone.number)
/*
 Добавьте инициализатор в класс Phone, который принимает на вход три параметра для инициализации переменных класса -
 number, model и weight
 Добавьте инициализатор, который принимает на вход два параметра для инициализации переменных класса - number,
 model.
 Добавьте инициализатор без параметров.
 Вызовите из инициализатора с двумя параметрами конструктор с тремя.
 */

let cPhone = Phone(number: 222, model: "1111")
let dPhone = Phone(number: 1, model: "2", weight: 3)
