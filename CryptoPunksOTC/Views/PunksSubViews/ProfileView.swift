//
//  ProfileView.swift
//  CryptoPunksOTC
//
//  Created by Ben Stacy on 8/17/24.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "xmark")
                        .font(.headline)
                        .foregroundStyle(.black)
                        .offset(x: 8)
                }
                .padding()
                .padding(.leading,310)
            
            VStack(alignment: .leading) {
                Text("Account Details")
                    .font(.title)
                Text("0x9cFa606eceFa4666B9")
                    .font(.headline)
                Rectangle()
                    .frame(width: 270, height: 40)
                    .foregroundStyle(Color("PunksWebColor"))
                    .overlay(
                        HStack {
                            Image(systemName: "eye")
                                .font(.caption)
                                .foregroundStyle(.white)
                            Text("Click to Watch this Account")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                            .padding(.leading, -5)
                    )
            }
            .padding(.leading, -70)
            .padding(.top, -40)
            
            VStack(alignment: .leading, spacing: 30) {
                VStack(alignment: .leading) {
                    Text("EtherScan")
                        .font(.system(size: 20))
                    Text("0x9cFa606eceFa4666B9")
                        .foregroundStyle(Color("PunksWebColor"))
                        .fontWeight(.semibold)
                }
                
                VStack(alignment: .leading) {
                    Text("ENS Name")
                        .font(.system(size: 20))
                    Text("JPGCollector.eth")
                        .foregroundStyle(Color("PunksWebColor"))
                        .fontWeight(.semibold)
                }
                
                VStack(alignment: .leading) {
                    Text("Total Punks Owned")
                        .font(.system(size: 20))
                    Text("0")
                        .font(.headline)
                }
                
                VStack(alignment: .leading) {
                    Text("Last Active")
                        .font(.system(size: 20))
                    Text("1 day ago")
                        .font(.headline)
                }
            }
            .padding(.top, 20)
            .padding(.leading, -140)
        }
        Spacer()
    }
}

#Preview {
    ProfileView()
}
