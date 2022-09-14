import UIKit

/*
 Создайте класс Calculator, который не содержит свойств, но содержит методы:
 Прибавить - принимает два числа и возвращает их сумму
 Вычесть - принимает два числа и возвращает их разницу
 Умножить - принимает два числа и возвращает результат их умножения
 Разделить - принимает два числа и возвращает результат их деления
 Остаток от деления - принимает два числа и возвращает остаток от деления первого на второе
 */
class Calculator {
    func summ(numb1: Int, numb2: Int) -> Int {
        let result = numb1 + numb2
        return result
    }
    func min(numb1: Int, numb2: Int) -> Int {
        let result = numb1 - numb2
        return result
    }
    func mult(numb1: Int, numb2: Int) -> Int {
        let result = numb1 * numb2
        return result
    }
    func div(numb1: Int, numb2: Int) ->Int {
        let result = numb1 / numb2
        return result
    }
    func ost(numb1: Int, numb2: Int) -> Int {
        let result = numb1 % numb2
        return result
    }
}
var calcul = Calculator()
calcul.summ(numb1: 2, numb2: 1)

/*
 Создайте класс SuperCalculator. Пусть он будет наследоваться от Calculator и содержать
 дополнительные методы:
 возвести в степень - принимает два параметра: число и степень в которую его нужно
 возвести. Возвращает результат возведения числа в степень получить процент - принимает два параметра: число и
 процент который мы хотим получить. Например число 50 и процент 10. Функция возвращает 5, так как 5 это 10% от
 50-ти
 Переопределите функции описанные в родительском классе, добавьте в каждую из них команду print(“I am
 SuperCalculator”). Протестируйте эти методы, посмотрите что будет, если не использовать вызов метода родителя через
 команду super
 */

class SuperCalculator: Calculator {
    
    func poww(numb1: Double, step: Double) -> Double {
        let result = (pow(numb1, step))
        return result
    }
    func percentage(numb1: Float, percent: Float) -> Float {
        let result = (numb1 * percent) / 100
        return result
    }
    override func summ(numb1: Int, numb2: Int) -> Int {
        super.summ(numb1: 1 , numb2: 2)
        print("I am super")
        return numb1 + numb2
    }
    override func min(numb1: Int, numb2: Int) -> Int {
        super.min(numb1: 2, numb2: 1)
        print("I am super super")
        return numb1 - numb2
    }
}
let calc = SuperCalculator()

calc.percentage(numb1: 50, percent: 10)
var result = calc.poww(numb1: 10, step: 2)
print(result)

/*
 Создайте экземпляр класса SuperCalculator и протестируйте все методы со своими значениями, выведя результаты в
 консоль через команду: print(SuperCalculator().myFunc())
 */

print(SuperCalculator().min(numb1: 1 , numb2: 0))
