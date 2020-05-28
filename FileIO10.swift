//
//  FileIO.swift
//  FileIO
//
//  Created by yagom

import Foundation

public struct FileIO {
    private static let baseFileDirectory: URL = {
        return try! FileManager.default.url(for: .applicationSupportDirectory,
                                            in: .userDomainMask,
                                            appropriateFor: nil,
                                            create: false)
    }()
    
    private static func fileURL(fileName: String) -> URL {
        return baseFileDirectory.appendingPathComponent(fileName)
    }
    
    public static func writeToFile<T: Encodable>(object: T, fileName: String = "file.json") {
        let fileURLToWrite = fileURL(fileName: fileName)
        let encoder = JSONEncoder()
        do {
            let data = try encoder.encode(object)
            try data.write(to: fileURLToWrite)
            
        } catch {
            print("\(fileName) 파일 쓰기 실패 : \(error.localizedDescription)")
        }
    }
    
    public static func loadFromFile<T: Decodable>(objectType: T.Type, fileName: String = "file.json") -> T? {
        let fileURLToLoad = fileURL(fileName: fileName)
        let decoder = JSONDecoder()
        do {
            let data = try Data.init(contentsOf: fileURLToLoad)
            let object = try decoder.decode(objectType, from: data)
            return object
            
        } catch {
            print("\(fileName) 파일에서 불러오기 실패 : \(error.localizedDescription)")
        }
        return nil
    }
    
    public static func resetFile(fileName: String = "file.json") {
        let fileURLToRemove = fileURL(fileName: fileName)
        
        do {
            try FileManager.default.removeItem(at: fileURLToRemove)
        } catch {
            print("\(fileName) 파일 삭제 실패 : \(error.localizedDescription)")
        }
    }
}

