//
//  LoadCourseForMock.swift
//  titech-kyomu-sample
//
//  Created by temmie on 2022/09/06.
//

import Foundation
import TitechKyomuKit

let courses = loadCourseForMock()

func loadCourseForMock() -> [KyomuCourse] {
    let file = Bundle.main.url(forResource: "MockCourseData", withExtension: ".json")!
    do {
        let data = try Data(contentsOf: file)
        let lectures = try JSONDecoder().decode([KyomuCourse].self, from: data)
        return lectures
    } catch {
        print(error)
        return []
    }
}
