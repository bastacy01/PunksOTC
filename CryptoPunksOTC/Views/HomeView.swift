//
//  HomeView.swift
//  CryptoPunksOTC
//
//  Created by Ben Stacy on 8/16/24.
//

import SwiftUI

struct HomeView: View {
    @State private var showProfile = false
    @State private var showMenu = false 
    var body: some View {
        NavigationStack {
            ScrollView {
                HStack(spacing: 290) {
                    Button(action: {
                        showMenu.toggle()
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                            .font(.title3)
                            .padding(.leading, 10)
                            .padding(.top, 2)
                            .foregroundStyle(.black)
                    })
                    .offset(x: -10)
                    
                    Button(action: {
                        showProfile.toggle()
                    }, label: {
                        Image(systemName: "person.circle")
                            .foregroundStyle(.black)
                            .font(.title)
                    })
                    .padding(.top, 10)
                }
                .fullScreenCover(isPresented: $showProfile) {
                    ProfileView()
                }
                .fullScreenCover(isPresented: $showMenu) {
                    ActivityView()
                }

                VStack(alignment: .leading, spacing: 25) {
                    Text("CryptoPunks")
                        .font(.system(size: 42)).monospaced()
                        .fontWeight(.bold)
                        .foregroundStyle(Color("PunksWebColor"))
                    Text("CryptoPunks Overview")
                        .font(.headline).monospaced()
                        .foregroundStyle(Color("PunksWebColor"))
                    Spacer()
                }
                .padding(.top, 15)
                .padding(.trailing, 75)
                
                VStack(alignment: .leading) {
                    Text("For Sale")
                        .font(.title).bold()
                    HStack(spacing: 4) {
//                        Button(action: {
//                            
//                        }, label: {
//                            Text("click here")
//                                .foregroundStyle(Color("PunksWebColor"))
//                        })
                        NavigationLink(destination: PunksForSaleView()) {
                             Text("click here")
                                 .foregroundStyle(Color("PunksWebColor"))
                         }
                        Text("to see most recent offers.")
                    }
                }
                .padding(.top, -10)
                .padding(.leading, -85)
                
                Rectangle()
                        .foregroundStyle(Color("PunksSaleColor"))
                        .frame(width: 360, height: 160)
                        .cornerRadius(5)
                        .overlay(
                            LazyHGrid(rows: [GridItem(.fixed(50)), GridItem(.fixed(80))], spacing: -1) {
                                ForEach(items) { item in
                                    NavigationLink(destination: PunksSaleView(item: item)) {
                                        VStack {
                                            Image(item.imageName)
                                                .resizable()
                                                .frame(width: 60, height: 60)
                                                .cornerRadius(10)
                                        }
                                    }
                                }
                            }
                            .padding(.horizontal)
                        )
                        .padding(.top, 5)
                
                VStack(alignment: .leading) {
                    Text("Bids")
                        .font(.title).bold()
                        .padding(.trailing, 300)
                        .padding(.top, 10)
                    HStack(spacing: 4) {
                        Button(action: {
                            
                        }, label: {
                            Text("click here")
                                .foregroundStyle(Color("PunksWebColor"))
                        })
                        Text("to see most recent bids.")
                    }
                }
                
                Rectangle()
                        .foregroundStyle(Color("PunksBidColor"))
                        .frame(width: 360, height: 160)
                        .cornerRadius(5)
                        .overlay(
                            LazyHGrid(rows: [GridItem(.fixed(50)), GridItem(.fixed(80))], spacing: -1) {
                                ForEach(items2) { item in
                                    NavigationLink(destination: PunksBidView(item: item)) {
                                        VStack {
                                            Image(item.imageName)
                                                .resizable()
                                                .frame(width: 60, height: 60)
                                                .cornerRadius(10)
                                        }
                                    }
                                }
                            }
                            .padding(.horizontal)
                        )
                        .padding(.top, 5)
                
                VStack(alignment: .leading) {
                    Text("Sales")
                        .font(.title).bold()
                        .padding(.trailing, 280)
                        .padding(.top, 10)
                    HStack(spacing: 4) {
                        Button(action: {
                            
                        }, label: {
                            Text("click here")
                                .foregroundStyle(Color("PunksWebColor"))
                        })
                        Text("to see most recent sales.")
                    }
                }
                
                Rectangle()
                        .foregroundStyle(Color("PunksDefaultColor"))
                        .frame(width: 360, height: 160)
                        .cornerRadius(5)
                        .overlay(
                            LazyHGrid(rows: [GridItem(.fixed(50)), GridItem(.fixed(80))], spacing: -1) {
                                ForEach(items3) { item in
                                    NavigationLink(destination: PunksDefaultView(item: item)) {
                                        VStack {
                                            Image(item.imageName)
                                                .resizable()
                                                .frame(width: 60, height: 60)
                                                .cornerRadius(10)
                                        }
                                    }
                                }
                            }
                            .padding(.horizontal)
                        )
                        .padding(.top, 5)
                
            }.scrollIndicators(.hidden)
        }
    }
}
        
#Preview {
    HomeView()
}

struct Stat: Identifiable {
    let id = UUID()
    let number: String
    let label: String
}

struct GridItemData: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let price: String
}

let items = [
    GridItemData(imageName: "Punk8730", title: "", price: ""),
    GridItemData(imageName: "Punk5666", title: "", price: ""),
    GridItemData(imageName: "Punk8705", title: "", price: ""),
    GridItemData(imageName: "Punk7440", title: "", price: ""),
    GridItemData(imageName: "Punk9229", title: "", price: ""),
    GridItemData(imageName: "Punk6056", title: "", price: ""),
    GridItemData(imageName: "Punk5551", title: "", price: ""),
    GridItemData(imageName: "Punk7012", title: "", price: ""),
    GridItemData(imageName: "Punk1501", title: "", price: ""),
    GridItemData(imageName: "Punk1270", title: "", price: ""),
    GridItemData(imageName: "Punk7519", title: "", price: ""),
    GridItemData(imageName: "Punk8958-1", title: "Punk #8958", price: "225 ETH"),
]

let items2 = [
    GridItemData(imageName: "Punk8112", title: "", price: ""),
    GridItemData(imageName: "Punk1508", title: "", price: ""),
    GridItemData(imageName: "Punk4550", title: "", price: ""),
    GridItemData(imageName: "Punk9120", title: "", price: ""),
    GridItemData(imageName: "Punk4158", title: "", price: ""),
    GridItemData(imageName: "Punk7279", title: "", price: ""),
    GridItemData(imageName: "Punk4418", title: "", price: ""),
    GridItemData(imageName: "Punk4499", title: "", price: ""),
    GridItemData(imageName: "Punk8993", title: "", price: ""),
    GridItemData(imageName: "Punk1507", title: "", price: ""),
    GridItemData(imageName: "Punk8868", title: "", price: ""),
    GridItemData(imageName: "Punk3100", title: "Punk #2306", price: "390 ETH"),
]

let items3 = [
    GridItemData(imageName: "Punk4906", title: "Punk #6529", price: ""),
    GridItemData(imageName: "Punk4870", title: "", price: ""),
    GridItemData(imageName: "Punk4872", title: "", price: ""),
    GridItemData(imageName: "Punk4875", title: "", price: ""),
    GridItemData(imageName: "Punk4879", title: "", price: ""),
    GridItemData(imageName: "Punk4896", title: "", price: ""),
    GridItemData(imageName: "Punk4895", title: "", price: ""),
    GridItemData(imageName: "Punk4901", title: "", price: ""),
    GridItemData(imageName: "Punk4903", title: "", price: ""),
    GridItemData(imageName: "Punk4893", title: "", price: ""),
    GridItemData(imageName: "Punk4871", title: "", price: ""),
    GridItemData(imageName: "Punk4880", title: "", price: ""),
]
