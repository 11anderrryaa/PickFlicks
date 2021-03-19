//
//  MovieSwipePicker.swift
//  PickFlicks
//
//  Created by Ryan Anderson on 3/11/21.
//

import SwiftUI

struct MovieSwipePicker: View {
    
    @State var selectedCard: Card?
    //    @State var selectedCard: MovieDetailView?
    @State var isPresentingShareModally = false
    @State var movieDetail: MovieDetailView?
    //Mark: - Drawing Constants
    var body: some View {
        
        VStack {
            // Top Stack
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                    Image("profile")
                }
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                    Image("icons8-romantic_movies")
                        .resizable().aspectRatio(contentMode: .fit).frame(height: 45)
                }.disabled(true)
                Spacer()
                Button(action: {
                    print("Menu Button Tapped")
                }){
                    Image(systemName: "line.horizontal.3.decrease")
                        .foregroundColor(.blue)
                }
            }.padding(.horizontal)
            // Card
            ZStack {
                ForEach(Card.data.reversed()) { card in
                    CardView(card: card, selectedCard: $selectedCard).padding(8)
                }
            }.zIndex(1.0)
            // Bottom Stack
            HStack() {
                Button(action: {}) {
                    Image("icons8-cancel_filled")
                }.padding()
                VStack {
//
                    Button(action: {}) {
                        Image( "icons8-multiple_smartphones 2")
//                        self.isPresentingShareModally.toggle()
                    }.padding(.top, 40)
                }.padding(.leading,30)
                .padding(.trailing,30)
                
                Button(action: {}) {
                    Image("icons8-circled_right_2")
                }.padding()
            }
            
            
        }
        .sheet(item: self.$selectedCard) { (card) in
            Text("\(card.title)")
                
//        .actionSheet(ispresented:isPresentingShareModally) {
//                    ActionSheet(title: nil, message: Text("Start or Join session"), buttons: [
//                                    .cancel()
//    //                    , .default(Text("Join"), action: {}), .default(Text("Host"), action: {})
//                    ])
//                }
        }
        
    }
}


struct MovieSwipePicker_Previews: PreviewProvider {
    static var previews: some View {
        MovieSwipePicker()
    }
}





