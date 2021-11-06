//public struct CodingStyle {
//    public private(set) var text = "Hello, World!"
//
//    public init() {
//    }
//}
//
import Foundation


@propertyWrapper
struct CodingStyle {
    var value: String
    var mode: String
    init(wrappedValue: String, mode: String) {
        self.value = wrappedValue
        self.mode = mode
    }
    
    var wrappedValue: String {
        get {
            value
        }
        set {
            if mode == "camelCase" {
                value = newValue.replacingOccurrences(of: " ", with: "следующее слово с большой буквы")
                
            }
            if mode == "snakeCase" {
                value = newValue.replacingOccurrences(of: " ", with: "нижнее подчеркивани")
                
            }
            if mode == "kebabCase" {
                value = newValue.replacingOccurrences(of: " ", with: "тире")
            }
            else {
                value = newValue
            }
        }
    }

}

