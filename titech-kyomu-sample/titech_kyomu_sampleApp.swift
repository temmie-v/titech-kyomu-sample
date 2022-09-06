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
struct titech_kyomu_sampleApp: App {
    var body: some Scene {
        WindowGroup {
            CourseList()
                .onAppear {
                    let coursesSelected: [KyomuCourse]
                    if useMock {
                        coursesSelected = loadCourseForMock()
                    } else {
                        coursesSelected = loadCourse()
                    }
                    print(coursesSelected)
                }
        }
    }
}
