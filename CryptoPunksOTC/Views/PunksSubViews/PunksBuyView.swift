//
//  PunksBuyView.swift
//  CryptoPunksOTC
//
//  Created by Ben Stacy on 8/16/24.
//

import SwiftUI

struct PunksBuyView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    Rectangle()
                        .foregroundStyle(Color("PunksDefaultColor"))
                        .frame(width: 370, height: 140)
                        .overlay(
                            Image("Punk8958")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 50, height: 130)
                                .padding(.top, 10)
                        )
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("CryptoPunk 8958")
                            .font(.system(size: 25).monospaced())
                            .fontWeight(.bold)
                        Text("One of 6039 Male Punks.")
                            .font(.system(size: 13))
                    }
                    .padding(.trailing, 120)
                    .padding(.top, 30)
                    
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Attributes")
                            .font(.system(size: 17).monospaced())
                            .fontWeight(.bold)
                        Text("This Punk has 3 attributes, one of 4501 with that many.")
                            .font(.system(size: 12))
                    }
                    .padding(.top, 20)
                    .padding(.trailing, 40)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        HStack {
                            Text("Beanie")
                                .font(.system(size: 15).monospaced())
                                .foregroundStyle(Color("PunksWebColor"))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text("(44 punks)")
                                .font(.system(size: 12).monospaced())
                                .fontWeight(.bold)
                        }
                        HStack {
                            Text("Shadow Beard")
                                .font(.system(size: 15).monospaced())
                                .foregroundStyle(Color("PunksWebColor"))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text("(526 punks)")
                                .font(.system(size: 12).monospaced())
                                .fontWeight(.bold)
                        }
                        HStack {
                            Text("Horned Rim Glasses")
                                .font(.system(size: 15).monospaced())
                                .foregroundStyle(Color("PunksWebColor"))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text("(535 punks)")
                                .font(.system(size: 12).monospaced())
                                .fontWeight(.bold)
                        }
                    }
                    .padding(.top, 5)
                    .padding(.trailing, 95)
                    
                    VStack(alignment: .leading, spacing: 7) {
                        Text("Current Market Status")
                            .font(.system(size: 17).monospaced())
                            .fontWeight(.bold)
                        Text("Loading...")
                            .font(.system(size: 14))
                            .foregroundStyle(.black.opacity(0.7))
                            .padding(.top, 4)
                        Text("Loading...")
                            .font(.system(size: 14))
                            .foregroundStyle(.black.opacity(0.7))
                    }
                    .padding(.top, 13)
                    .padding(.trailing, 130)
                    
                    Text("Transaction History")
                        .font(.system(size: 17).monospaced())
                        .fontWeight(.bold)
                        .padding(.top, 10)
                        .padding(.trailing, 152)
                    
                    Image("transactionChart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .offset(x: 5)
                
                }
                .padding(.top, 10)
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
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        
                    }) {
                        Text("Connect Wallet")
                            .font(.subheadline)
                            .foregroundStyle(Color("PunksWebColor"))
                            .padding(.top, 8)
                    }
                }
            }
        }
    }
}

#Preview {
    PunksBuyView()
}

struct TransactionHistory: View {
    struct Transaction {
        let type: String
        let from: String
        let to: String
        let amount: String
        let date: String
    }
    
    let transactions: [Transaction] = [
        Transaction(type: "Offer Withdrawn", from: "         ", to: "                 ", amount: "22Ξ ($556,864)", date: "Jan 27, 2024"),
        Transaction(type: "Offered", from: "         ", to: "                 ", amount: "22Ξ ($556,864)", date: "Jan 27, 2024")
    ]
    
    var body: some View {
            VStack {
                // Horizontal ScrollView for column titles
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack(spacing: 60) {
                        Text("Type")
                        Text("From")
                            .offset(x: 30)
                        Text("To")
                            .offset(x: 20)
                        Text("Amount")
                            .offset(x: 20)
                        Text("Txn")
                            .offset(x: 50)
                    }
                    .font(.headline)
                    .padding()
                }
                .padding(.horizontal, 5)
                
                Divider()
                    .offset(y: -5)

                // Horizontal ScrollView for transaction items
                ScrollView(.horizontal, showsIndicators: true) {
                    VStack(alignment: .leading) {
                        ForEach(transactions, id: \.type) { transaction in
                            HStack(spacing: 16) {
                                Text(transaction.type)
                                Text(transaction.from)
                                Text(transaction.to)
                                Text(transaction.amount)
                                Text(transaction.date)
                            }
                            .padding()
                            
                            Divider()
                                .offset(y: -5)
                        }
                    }
                }
                .padding(.horizontal, 5)
                .background(Color.red.opacity(0.3))
            }
        }
}
