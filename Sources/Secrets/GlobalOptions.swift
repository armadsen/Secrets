//
//  File.swift
//  
//
//  Created by Andrew R Madsen on 1/5/21.
//

import Foundation
import ArgumentParser

struct GlobalOptions: ParsableArguments {
    @Option(help: "The rotation distance to use, from 1 to 25")
    var rotationDistance: Int = 13

    func validate() throws {
        guard (1...25).contains(rotationDistance) else {
            throw ValidationError("Please specify a rotation distance between 1 and 25")
        }
    }
}
