//
//  CourseInfo.swift
//  titech-kyomu-sample
//
//  Created by USER on 2022/09/06.
//

import SwiftUI
import TitechKyomuKit

struct CourseInfo: View {
    let course: KyomuCourse
    var body: some View {
        HStack {
            VStack(alignment: .center) {
                Text(course.quarters.map { String($0) }.joined(separator: ",") + "Q")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .frame(width: 50.0)
            VStack(alignment: .leading) {
                ForEach (0 ..< course.periods.count, id: \.self) { index in
                    let period = course.periods[index]
                    let kanjiList = ["unknown", "日", "月", "火", "水", "木", "金", "土"]
                    let strPeriod = kanjiList[period.day.rawValue] + "曜 " + String(period.start) + "-" + String(period.end) + "限"
                    Text(strPeriod)
                }
            }
            Spacer()
            VStack(alignment: .trailing) {
                Text(course.name)
                    .fontWeight(.bold)
                Text(course.code)
                    .font(.footnote)
            }
        }
        .padding()
    }
}
