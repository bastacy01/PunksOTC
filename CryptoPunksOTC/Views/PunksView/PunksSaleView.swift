//
//  PunksSaleView.swift
//  CryptoPunksOTC
//
//  Created by Ben Stacy on 8/16/24.
//

import SwiftUI

struct PunksSaleView: View {
    @Environment(\.presentationMode) var presentationMode
    
    let item: GridItemData
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("CryptoPunk #8958")
                        .font(.system(size: 16.5)).monospaced().bold()
                    Text("Owner: 2.punksotc.eth")
                        .font(.system(size: 13.5)).monospaced()
                }
                .padding(.horizontal, 2)
                Spacer()
                NavigationLink(destination: PunksBuyView()) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Sale")
                            .font(.system(size: 16.5)).monospaced().bold()
                        Text("225 ETH")
                            .font(.system(size: 13.5)).monospaced()
                    }
                    .padding(.horizontal, 4)
                }
                .foregroundStyle(.black)
            }
            .padding()
            .padding(.top, 60)
            .offset(y: -10)

            Rectangle()
                .frame(height: 2)
                .foregroundStyle(.black)
                .offset(y: -13)
        }
        .background(Color("PunksSaleColor").ignoresSafeArea())
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
                
                Image("Punk8958")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 400, height: 400)
                    .padding(.top, 286)
                    .offset(y: -5)
            }
        }
        .background(Color("PunksSaleColor").ignoresSafeArea())
        .padding(.top,-8)
        Spacer()
    }
}

#Preview {
    PunksSaleView(item: GridItemData(imageName: "Punk", title: "Punk #4897", price: ""))
}
