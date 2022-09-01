import UIKit

/*
Создайте переменные или константы, в которых можно хранить: ваш возраст, название вашей
должности, информацию о том дома вы или нет
Измените значения:
возраст - добавить год
название профессии - добавить перед названием слово “Senior"
замените свой статус на противоположный
Выведите в консоль все данные, встроив их в предложение: “Мне *** лет, и я работаю на должности ***”
 */


let name = "Grisha"
var age = 25
var position = "iOS Web Developer"
var atHome = false

age += 1
let myNewPosition = "Senior "
position = myNewPosition + position
atHome.toggle()

print("Hello, my name is \(name), I'm \(age) years old and i work as \(position)")
