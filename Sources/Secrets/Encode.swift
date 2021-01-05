//
//  Encode.swift
//  
//
//  Created by Andrew R Madsen on 1/5/21.
//

import Foundation
import ArgumentParser
import ROT

struct Encode: ParsableCommand {
    static let configuration = CommandConfiguration(abstract: "Convert a string into a secret code")

    @Argument(help: "The string you want to turn into a secret message")
    var inputString: String

    func run() throws {
        let rot = ROTAlgorithm()
        print(rot.encode(inputString))
    }
}
