//
//  Company.swift
//  Companies
//
//  Created by Rudson Lima on 7/15/16.
//  Copyright © 2016 Rudson Lima. All rights reserved.
//

import Foundation

class Company {
    
    var name: String! = ""
    var site: String! = ""
    var detail: String! = ""
    
    init(name: String, site: String, detail: String) {
        self.name = name
        self.site = site
        self.detail = detail
    }
}
