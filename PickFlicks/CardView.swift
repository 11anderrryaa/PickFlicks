//
//  CardView.swift
//  PickFlicks
//
//  Created by Ryan Anderson on 3/16/21.
//

import SwiftUI

struct CardView: View {
    @State var card: Card
    var movie = [Movie]()
    @Binding var selectedCard : Card?
    
    let movieController = MovieController()
    
    let cardGradient = Gradient(colors: [Color.black.opacity(0), Color.black.opacity(0.5)])
    var body: some View {
        ZStack(alignment: .topLeading) {
            
                Image(card.imageName).resizable()
            LinearGradient(gradient: cardGradient, startPoint: .top, endPoint: .leading)
            VStack{
                VStack(alignment: .leading ) {
                    Spacer()
                    HStack{
                        Text(card.title).font(.largeTitle).fontWeight(.bold)
                        Text(String(card.vote_average)).font(.title)
                    }
                    Text(String(card.vote_average))
                }
            }
            .padding()
            .foregroundColor(.white)
            
            
            HStack{
                Image("yes")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:150)
                    .opacity(Double(card.x/10 - 1))
                Spacer()
                Image("nope")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:150)
                    .opacity(Double(card.x/10 * -1 - 1))
            }
        }
        .cornerRadius(8)
        //Step 1 - Zstack follows the coordinate of the card model
        .offset(x: card.x, y: card.y)
        .rotationEffect(.init(degrees: card.degree))
            //step 2 - gesture recogniser updates the coordinates values of the card model
        
//        .onTapGesture(count: 2) {
//            print("tapping on")
//        }
            .gesture(
                DragGesture()

                    .onChanged { value in
                        //user is dragging the view
                        withAnimation(.default) {
                            card.x = value.translation.width
                            card.y = value.translation.height
                            card.degree = 7 * (value.translation.width > 0 ? 1 : -1)
                        }
                    }
                    .onEnded {   value   in
                    // do somthing when the user stops dragging
                        
                        withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 50, damping: 8, initialVelocity: 0)) {
                            switch value.translation.width {
                            case 0...100:
                                card.x = 0; card.degree = 0; card.y = 0
                            case let x where x > 100:
                                card.x = 500; card.degree = 12
                            case (-100)...(-1):
                                card.x = 0; card.degree = 0; card.y = 0
                            case let x where x < -100:
                                card.x = -500; card.degree = -12
                            default: card.x = 0; card.y = 0
                            }
                        }
                    }
            )
        .gesture(
        TapGesture()
            .onEnded({
                print("tapped on")
                selectedCard = card
            })
        )
    }
}


struct CardView_Previews: PreviewProvider {
    
    static var previews: some View {
        CardView(card: Card.data.first!, selectedCard: .constant(nil))
    }
}
