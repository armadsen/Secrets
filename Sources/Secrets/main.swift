import Foundation
import ROT

let arguments = ProcessInfo.processInfo.arguments
if (arguments.count < 2) {
    print("You must specify a string to convert\n")
    exit(0)
}

let rot = ROTAlgorithm()
print(rot.encode(arguments[1]))
