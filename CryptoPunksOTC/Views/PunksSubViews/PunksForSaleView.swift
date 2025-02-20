//
//  PunksForSaleView.swift
//  CryptoPunksOTC
//
//  Created by Ben Stacy on 8/17/24.
//

import SwiftUI

struct PunksForSaleView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ScrollView {
            Text("Punks for Sale")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top, 15)
                .padding(.leading, -174)
            VStack(alignment: .leading) {
                VStack {
                    Image("PunksForSale")
                        .resizable()
                        .frame(width: 390, height: 700)
                    Image("PunksForSale2")
                        .resizable()
                        .frame(width: 390, height: 700)
                }
            }
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
        }.scrollIndicators(.hidden)
    }
}

#Preview {
    PunksForSaleView()
}
