//
//  Decode.swift
//  
//
//  Created by Andrew R Madsen on 1/5/21.
//

import Foundation
import ArgumentParser
import ROT

struct Decode: ParsableCommand {
    static let configuration = CommandConfiguration(abstract: "Decode a secret code back into readable text")

    @Argument(help: "The string you want to decode")
    var inputString: String

    func run() throws {
        let rot = ROTAlgorithm()
        print(rot.decode(inputString))
    }
}