//
//  ContentView.swift
//  coins
//
//  Created by Shahad on 07/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var coins = ""
    
    
        //String(format: "%.2f", coins)

    
    var body: some View {
        VStack{
            Text("محول العملات !")
                .padding().font(.largeTitle)
            TextField("العملة بالدينار",text: $coins)
                .multilineTextAlignment(.center)
                .font(.largeTitle)
            
            HStack{
               Image("US")
                    .resizable().scaledToFit().frame(width: 70, height: 70)
                    .padding()
                Text("$\((Double(coins) ?? 0.00) * 3.28)")
                
                //var dollar = ((Double(coins)??0)*3.28)
            }
        
            HStack{
               Image("UK")
                    .resizable().scaledToFit().frame(width: 70, height: 70)
                    .padding()
                Text("£\((Double(coins) ?? 0) * 2.46)")
            
                
            }
            
            HStack{
               Image("Europe")
                    .resizable().scaledToFit().frame(width: 70, height: 70)
                    .padding()
                Text("€\((Double(coins) ?? 0) * 2.70)")
            }
            Spacer()
            Image("currencyE").resizable()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
