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

    @OptionGroup var globalOptions: GlobalOptions

    @Argument(help: "The string you want to decode")
    var inputString: String

    func run() throws {
        let rot = ROTAlgorithm(rotationDistance: globalOptions.rotationDistance)
        let outputString = rot.decode(inputString)
        if globalOptions.verbose {
            print("Decoding input string using a rotation distance of \(rot.rotationDistance)")
            print("Input string: \(inputString)")
            print("Output string: ", terminator: "")
        }

        if (!globalOptions.hideResult) {
            print(outputString)
        } else {
            print("<hidden>")
        }
    }
}
