//
//  ContentView.swift
//  titech-kyomu-sample
//
//  Created by temmie on 2022/09/06.
//

import SwiftUI
import TitechKyomuKit

struct CourseList: View {
    var body: some View {
        Text("講義一覧")
            .font(.largeTitle)
            .multilineTextAlignment(.center)
            .padding(.top)
        
        List {
            if useMock {
                ForEach (0 ..< mockCourses.count) { index in
                    CourseInfo(course: mockCourses[index])
                }
                .listRowInsets(EdgeInsets())
            } else {
                ForEach (0 ..< courses.count) { index in
                    CourseInfo(course: courses[index])
                }
                .listRowInsets(EdgeInsets())
            }
        }
//        .navigationBarTitle("申告チェック済み講義一覧", displayMode: .inline)
    }
}

//struct CourseList_Previews: PreviewProvider {
//    static var previews: some View {
//        CourseList()
//    }
//}
