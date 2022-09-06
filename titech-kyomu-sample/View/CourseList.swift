//
//  ContentView.swift
//  titech-kyomu-sample
//
//  Created by temmie on 2022/09/06.
//

import SwiftUI
import TitechKyomuKit
import TitechPortalKit

struct CourseList: View {
    //    @State private var courses: [KyomuCourse] = []
    let courses: [KyomuCourse]
    var body: some View {
        Text("講義一覧")
            .font(.largeTitle)
            .multilineTextAlignment(.center)
            .padding(.top)
        
        List {
            ForEach (0 ..< courses.count, id: \.self) { index in
                CourseInfo(course: courses[index])
            }
//            ForEach(courses, id: \.self) { course in
//                CourseInfo(course: course)
//            }
            .listRowInsets(EdgeInsets())
        }
    }
}


//struct CourseList_Previews: PreviewProvider {
//    static var previews: some View {
//        CourseList()
//    }
//}
