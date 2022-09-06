//
//  LoadCourseForMock.swift
//  titech-kyomu-sample
//
//  Created by temmie on 2022/09/06.
//

import Foundation
import TitechKyomuKit

let mockCourses = loadCourseForMock()

func loadCourseForMock() -> [KyomuCourse] {
    let file = Bundle.main.url(forResource: "MockCourseData", withExtension: ".json")!
    do {
        let data = try Data(contentsOf: file)
        let courses = try JSONDecoder().decode([KyomuCourse].self, from: data)
        return courses
    } catch {
        print(error)
        return []
    }
}
