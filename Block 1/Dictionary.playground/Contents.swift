import UIKit

/*
Создайте 3 dictionary, добавьте в каждый не менее трех элементов:
String: String - Страна: Столица
String: Int - Город: Почтовый код
String: Bool - Имя человека: Студент ли он
 */

var countryDict = ["Ukraine": "Kyiv", "Lietunia" : "Wilnius", "Turkey" : "Stambul"]
var cityDict = ["Kyiv": 03126, "Wilnius": 11021, "Stambul": 99999]
var studentDict = ["Grisha" : false, "Misha" : true, "Oleg" : false]

var countries = countryDict.keys.sorted()
var capitals = countryDict.values.sorted()
/*
 Создайте еще одну переменную типа Dictionary, в которую сохраните по одному элементу из каждого из
 словарей выше и выведите ее значение в консоль (На желтые warnings и “optional(...)” значение в
 консоли мы пока не обращаем внимания)
 Удалите в первых трех словарях по одному элементу
 */

var newDict = Dictionary<String, Any>()
newDict[countries[1]] = capitals[1]
newDict[countries[1]]
newDict["Turkey"]
///доделать
print(newDict)


countryDict.removeValue(forKey: "Ukraine")
cityDict.removeValue(forKey: "Kyiv")
studentDict.removeValue(forKey: "Grisha")

/*
Создайте переменные:
Массив содержащий только ключи из последнего Dictionary
Массив содержащий только значения из последнего Dictionary
Выведите в консоль их значения
 */

var keysArray = countryDict.keys
var valuesArray = cityDict.values
print(valuesArray, keysArray)


