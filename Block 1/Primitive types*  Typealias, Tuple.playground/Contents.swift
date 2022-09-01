import UIKit

/*
 Создайте переменные типов Int, String, Float и задайте в них цифровые значения
 Создайте переменную “sum” типа Double, в которой будет содержаться сумма всех предыдущих
 переменных. Используйте приведение типов
 Если компилятор просит использовать “!” (Force unwrap), поставьте этот знак после приведения
 типа, в следующих уроках мы будем разбирать эту тему
 */

var a: Int = 10
var b: String = "20"
var c: Float = 15.3
var sum: Double = Double(a) + Double(b)! + Double(c)
print(sum)

/*
Создайте по одному Typealias, которые соответствуют типам: String, Int, Float
Создайте три именованных Tuple с данными:
Фильм - Название фильма и год его выпуска
Смартфон - Название смартфона и его цена
Страна - Название страны и ее столица
Все типы внутри tuple замените на typalias
Выведите с помощью команды print:
Название фильма, Название телефона, Название страны
Потом пустой print()
Год выпуска фильма, цена телефона, столица страны
 */
typealias film = String
typealias year = Int
typealias phoneName = String
typealias phonePrice = Float
typealias nameCountry = String
typealias nameCapital = String

let myFilm :(film , year) = ("007: Diе, But not today", 2004)
let myPhone: (phoneName, phonePrice) = ("Ipnone 13 Pro Max", 1249.0)
let myCountry: (nameCountry, nameCapital) = ("Ukraine", "Kyiv")

print(myFilm.0, myPhone.0, myCountry.0)
print()
print(myFilm.1, myPhone.1, myCountry.1)
