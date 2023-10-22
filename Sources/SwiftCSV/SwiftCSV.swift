//
//  SwiftCSV.swift
//
//
//  Created by 박성수 on 10/22/23.
//

import Foundation

public class SwiftCSV {
    
    public static func fileReader(fileName: String, fileType: FileType) -> ([String], [[String]]) {
        guard let path = Bundle.main.url(forResource: "\(fileName).\(fileType.rawValue)", withExtension: nil) else { return ([], [])}
        
        let rawDatas = try! String(contentsOf: path)
        let scaledData = rawDatas.components(separatedBy: .newlines)
        var datas: [[String]] = []
        var header: [String] = []
        
        for (idx, value) in scaledData.enumerated() {
            if idx == 0 {
                header = scaledData[0].split(separator: ",").map { String($0) }
                continue
            }
            let target = value.split(separator: ",").map { String($0) }
            if !target.isEmpty {
                datas.append(target)
            }
        }
        return (header, datas)
    }
    
}
