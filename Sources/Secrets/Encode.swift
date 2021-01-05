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

    @OptionGroup var globalOptions: GlobalOptions

    @Argument(help: "The string you want to turn into a secret message")
    var inputString: String

    func run() throws {
        let rot = ROTAlgorithm(rotationDistance: globalOptions.rotationDistance)
        let outputString = rot.encode(inputString)
        if globalOptions.verbose {
            print("Encoding input string using a rotation distance of \(rot.rotationDistance)")
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
