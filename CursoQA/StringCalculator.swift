//
//  stringCalculator.swift
//  CursoQA
//
//  Created by Juan on 12/11/2019.
//  Copyright © 2019 MOBGEN. All rights reserved.
//

import Foundation

class StringCalculator {

    func add(numbers:String) -> Int {

        let array = numbers.split(separator: ",")

        return array.map { Int($0) ?? 0 }.reduce(0, {$0 + $1})

    }

}
