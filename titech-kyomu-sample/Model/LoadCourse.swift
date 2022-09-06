//
//  LoadCourse.swift
//  titech-kyomu-sample
//
//  Created by temmie on 2022/09/07.
//

import Foundation
import TitechKyomuKit
import TitechPortalKit

let courses: [KyomuCourse] = []

func loadCourse() async throws -> [KyomuCourse] {
    let portal = TitechPortal(urlSession: .shared)
    try await portal.login(
        account: TitechPortalAccount(
            username: name,
            password: pass,
            matrixcode: matrixcode
        )
    )
    
    let titechkyomu = TitechKyomu(urlSession: .shared)
    let resultLogin = try await titechkyomu.fetchTopPage()
    print(resultLogin)
    if resultLogin {
        let courses = try await titechkyomu.fetchKyomuCourseData()
        print(courses)
        return courses
    }
    return []
}
