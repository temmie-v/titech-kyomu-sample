//
//  titech_kyomu_sampleApp.swift
//  titech-kyomu-sample
//
//  Created by temmie on 2022/09/06.
//

import SwiftUI
import TitechKyomuKit

@main
struct titech_kyomu_sampleApp: App {
    var body: some Scene {
        WindowGroup {
            CourseList()
                .onAppear {
                    let courses = loadCourseForMock()
                    print(courses)
                }
        }
    }
}
