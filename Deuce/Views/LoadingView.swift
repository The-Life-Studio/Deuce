//
//  LoadingView.swift
//  Deuce
//
//  Created by Kush Mirchandani on 7/22/23.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color.green // Bright green background
                .ignoresSafeArea()
            
            Text("Deuce")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
