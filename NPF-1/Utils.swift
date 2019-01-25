//
//  Utils.swift
//  NPF-1
//
//  Created by Zacharry Georges on 1/24/19.
//  Copyright © 2019 Zacharry Georges. All rights reserved.
//

import Foundation

extension String
{
    func trim() -> String
    {
        return self.trimmingCharacters(in: NSCharacterSet.whitespaces)
    }
}
