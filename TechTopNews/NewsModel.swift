//
//  NewsModel.swift
//  TechTopNews
//
//  Created by locklight on 2017/12/19.
//  Copyright © 2017年 locklight. All rights reserved.
//

import Foundation

class NewsModel: NSObject {
    var id:String?
    var title:String?
    var src_img:String?
    var sitename:String?
    var addtime:String?
    
    init(dict:[String:Any]) {
        super.init()
        setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
}

