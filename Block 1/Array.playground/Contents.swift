import UIKit

/*
Создайте массив включающий имена 5 студентов
Создайте переменные newStudent1, newStudent2 и задайте им имена
Добавьте новых студентов в массив: первого в конец списка, второго в начало списка.
После этого никаких операций с newStudent1 и newStudent2 не требуется, продолжаем работу с массивами
 */

var arrayOfStudents = ["Anton", "Bob", "Vova", "Alla", "Anna"]
var newStudent1 = ["Grisha"]
var newStudent2 = ["Nataly"]

arrayOfStudents.append(contentsOf: newStudent1)
arrayOfStudents.insert(contentsOf: newStudent2, at: 0)

print(arrayOfStudents)

/*
Через команду print() выведите имена студентов:
первого и последнего
второго третего
*/
print(arrayOfStudents.first, arrayOfStudents.last)
print(arrayOfStudents[1], arrayOfStudents[2])

/*
Выведите в консоль сообщения:
В массиве содержится *** элементов
Является ли массив пустым: *** (выведите bool значение)
Создайте массив “newGroup”, который содержит всех учеников из group
Очистите массив group
 */
arrayOfStudents.count
arrayOfStudents.isEmpty
var newArrayOfStudents = arrayOfStudents
print(newArrayOfStudents)

newArrayOfStudents.removeAll()
