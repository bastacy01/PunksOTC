//
//  PunksBidView.swift
//  CryptoPunksOTC
//
//  Created by Ben Stacy on 8/16/24.
//

import SwiftUI

struct PunksBidView: View {
    @Environment(\.presentationMode) var presentationMode
    
    let item: GridItemData
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("CryptoPunk #3100")
                        .font(.system(size: 16.5)).monospaced().bold()
                    Text("Owner: 0x7b8961")
                        .font(.system(size: 13.5)).monospaced()
                }
                .padding(.horizontal, 2)
                Spacer()
                VStack(alignment: .leading, spacing: 4) {
                    Text("Bid")
                        .font(.system(size: 16.5)).monospaced().bold()
                    Text("4.5K ETH")
                        .font(.system(size: 14)).monospaced()
                }
                .padding(.horizontal, 4)
            }
            .padding()
            .padding(.top, 60)
            .offset(y: -10)

            Rectangle()
                .frame(height: 2)
                .foregroundStyle(.black)
                .offset(y: -13)
        }
        .background(Color("PunksBidColor").ignoresSafeArea())
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .font(.headline).bold()
                        .foregroundStyle(.black)
                }
            }
        }
        
        Spacer()
        VStack {
            ZStack {
                Text("CryptoPunks launched as a fixed set of 10,000 items in mid-2017 and became one of the inspirations for the ERC-721 standard.")
                    .font(.system(size: 12.5).monospaced())
                    .fontWeight(.medium)
                    .frame(width: 370)
                    .padding()
                    .padding(.bottom, 380)
                
                Image("alienPunk")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 400, height: 400)
                    .padding(.top, 286)
                    .offset(y: -14)
            }
        }
        .background(Color("PunksBidColor"))
        .padding(.top,-8)
        
        Spacer()
    }
}

#Preview {
    PunksBidView(item: GridItemData(imageName: "Punk", title: "Punk #4897", price: ""))
}
