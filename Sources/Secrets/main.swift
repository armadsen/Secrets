import Foundation
import ROT
import ArgumentParser

struct Secrets: ParsableCommand {
    static let configuration = CommandConfiguration(commandName: "secrets",
                                                    abstract: "Create and decode secret messages",
                                                    subcommands: [Encode.self],
                                                    defaultSubcommand: Encode.self)
}

Secrets.main()
