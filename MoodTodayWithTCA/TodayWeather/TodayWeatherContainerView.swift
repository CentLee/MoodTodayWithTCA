//
//  TodayWeatherContainerView.swift
//  MoodTodayWithTCA
//
//  Created by 이창화 on 2022/07/16.
//

import Foundation
import SwiftUI

struct TodayWeatherContainerView: View {
  var body: some View {
    TabView {
      TodayWeatherSummaryView()
        .tabItem{
          Label("Menu", systemImage: "list.dash")

        }
    }
  }
}

struct TodayWeatherContainerView_Previews: PreviewProvider {
    static var previews: some View {
        TodayWeatherContainerView()
    }
}
