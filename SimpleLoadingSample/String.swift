//
//  String.swift
//  SimpleLoadingSample
//
//  Created by Yoshiaki Itakura on 2015/12/22.
//  Copyright © 2015年 personal. All rights reserved.
//

import Foundation

extension String {
    
//    subscript (i: Int) -> Character {
//        return self[self.startIndex.advancedBy(i)]
//    }
//    
//    /**
//     文字列長
//     */
//    var length: Int {
//        return self.characters.count
//    }
    
    /**
     クラス名文字列取得
     @return クラス名文字列
     */
    static func className(aClass: AnyClass) -> String {
        return NSStringFromClass(aClass).componentsSeparatedByString(".").last!
    }
    
//    /**
//     文字列を指定文字で分割して返す
//     e.g. "a,b,c" -> ["a", "b", "c"]
//     @param separator 分割文字
//     @return 指定文字で分割した配列
//     */
//    func split(separator: Character = ".") -> [String] {
//        return self.characters.split(separator).map { String($0) }
//    }
//    
//    /**
//     文字列を指定文字で分割してInt型に変換して返す
//     e.g. "01,02,03" -> [1, 2, 3]
//     @param separator 分割文字
//     @return 指定文字で分割してInt型に変換した配列
//     */
//    func splitAndConvertToInt(separator: Character = ".") -> [Int] {
//        return self.split(separator).map { Int($0) ?? 0 }
//    }
}