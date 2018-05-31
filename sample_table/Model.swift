//
//  Model.swift
//  sample_table
//
//  Created by tatsumi kentaro on 2018/05/31.
//  Copyright © 2018年 tatsumi kentaro. All rights reserved.
//

import UIKit
import RealmSwift
class Contents: Object {
    @objc dynamic var id = 0
    @objc dynamic var title  = ""
    @objc dynamic var content  = ""
}
