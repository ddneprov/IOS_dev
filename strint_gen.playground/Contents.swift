import UIKit


// расширение для строки String, которое генерирует строку из случайных символов
extension String {
    static func random(length: Int) -> String {
        var str = ""
        let alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        for _ in 0..<length {
            str.append(alphabet.randomElement()!)
        }
        return str
    }
}

print(String.random(length: 15))

