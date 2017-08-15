//
//  main.swift
//  mlcli-test
//
//  Created by Michael duPont on 7/13/17.
//  Copyright © 2017 Michael duPont. All rights reserved.
//

import CoreML
import Foundation

//  CoreML is only available for  >= MacOS 10.13
//  Note: CoreML models currently have a bug that specifies OSX 13.0 and must be manually fixed
if #available(OSX 10.13, *) {
    
    let model = GreaterThanFive()
    
    for i in -50...50 {
        let number = Double(i)
        let output = try model.prediction(number: number)
        print("Input \(number): Output \(output.isgt5)")
    }

}
