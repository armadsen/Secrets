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
}
