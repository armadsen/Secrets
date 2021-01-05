import Foundation
import ROT
import ArgumentParser

struct Secrets: ParsableCommand {
    static let configuration = CommandConfiguration(commandName: "secrets",
                                                    abstract: "Create and decode secret messages")

    @Argument(help: "The string you want to turn into a secret message")
    var inputString: String

    func run() throws {
        let rot = ROTAlgorithm()
        print(rot.encode(inputString))
    }
}

Secrets.main()
