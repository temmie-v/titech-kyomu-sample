//
//  titech_kyomu_sampleApp.swift
//  titech-kyomu-sample
//
//  Created by temmie on 2022/09/06.
//

import SwiftUI
import TitechKyomuKit

public let useMock = false

@main
struct TitechKyomuSample: App {
    @State private var courses: [KyomuCourse] = []
    var body: some Scene {
        WindowGroup {
            if useMock {
                CourseList(courses: loadCourseForMock())
            } else {
                CourseList(courses: courses)
                    .task {
                        do {
                            courses = try await loadCourse()
                        } catch {
                            print(error)
                        }
                    }
            }
        }
    }
}
