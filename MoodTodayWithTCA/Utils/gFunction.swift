//
//  gFunction.swift
//  MoodTodayWithTCA
//
//  Created by ์ด์ฐฝํ on 2022/07/16.
//

import Foundation
import UIKit

public func iPrint(_ objects:Any... , filename:String = #file,_ line:Int = #line, _ funcname:String = #function){ //debuging Print
#if DEBUG
  let dateFormatter = DateFormatter()
  dateFormatter.dateFormat = "HH:mm:ss:SSS"
  let file = URL(string:filename)?.lastPathComponent.components(separatedBy: ".").first ?? ""
  print("๐ฆinfo ๐ฆ\(dateFormatter.string(from:Date())) ๐\(file) ๐line:\(line) ๐น\(funcname)๐ฅ",terminator:"")
  for object in objects{
    print(object, terminator:"")
  }
  print("\n")
#endif
}

func hexStringToUIColor (hex:String) -> UIColor {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }

    if ((cString.count) != 6) {
        return UIColor.gray
    }

    var rgbValue:UInt64 = 0
    Scanner(string: cString).scanHexInt64(&rgbValue)

    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}
