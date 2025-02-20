//
//  ActivityView.swift
//  CryptoPunksOTC
//
//  Created by Ben Stacy on 8/17/24.
//

import SwiftUI

struct ActivityView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            HStack(spacing: 75) {
                Text("Recent Transactions")
                    .font(.system(size: 25)).bold()
                    .foregroundStyle(.black)
                    .padding(.leading, 3)
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "xmark")
                        .font(.headline)
                        .foregroundStyle(.black)
                        .offset(x: 8)
                }
                .padding()
            }
            VStack {
                Text("Updated 8 seconds ago")
                    .font(.system(size: 15))
                    .foregroundStyle(.black)
                    .padding(.leading, -175)
                    .padding(.top, -20)
            }
            
            ScrollView {
                VStack {
                    Image("Recent1")
                        .resizable()
                    Image("Recent2")
                        .resizable()
                    Image("Recent3")
                        .resizable()
                }
                .frame(width: 380, height: 1400)
                .padding(.leading, 10)
            }
            .scrollIndicators(.hidden)
        }
        Spacer()
    }
}

#Preview {
    ActivityView()
}
