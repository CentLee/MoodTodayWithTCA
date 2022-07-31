//
//  TodayWeatherSummaryView.swift
//  MoodTodayWithTCA
//
//  Created by 이창화 on 2022/07/30.
//

import Foundation
import SwiftUI

//오늘의 날씨 요약 뷰
struct TodayWeatherSummaryView: View {
    var body: some View {
      VStack {
        HStack {
          Text("오늘의 날씨")
            .font(Font.custom("NIXGONB-Vb", size: 30))
            .padding([.leading, .top])
          Spacer()
        }
          
        Spacer()
      }
    }
}

struct TodayWeatherSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        TodayWeatherSummaryView()
    }
}
