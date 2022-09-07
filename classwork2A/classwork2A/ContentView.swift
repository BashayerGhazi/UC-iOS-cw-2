//
//  ContentView.swift
//  classwork2A
//
//  Created by Shahad on 07/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var ques = "q mark"
    var body: some View {
        VStack{
            Text("ماهو المسار المفضل لديك")
            .padding()
            Image(ques)
                .resizable().scaledToFit().frame(width: 120, height: 120 )
                .padding()
               
            
                
                Text("IOS")
                .foregroundColor(.white).frame(width: 150, height: 50).background(.blue).font(.largeTitle)
                    .onTapGesture {
                        ques = "apple"
                    }
               // Image(systemName: "square.fill").resizable
            Text("Andriod")
                .foregroundColor(.white).font(.largeTitle).frame(width: 150, height: 50).background(.green)
                    .onTapGesture {
                    ques = "andriod"
                }

            Text("Gamedve")
            .foregroundColor(.white).frame(width: 150, height: 50).background(.red).font(.largeTitle)
                .onTapGesture {
                    ques = "gamedve"
                }
            Text("Web")
            .foregroundColor(.white).frame(width: 150, height: 50).background(.black).font(.largeTitle)
                .onTapGesture {
                    ques = "Web"
                }
        
            
                
        }
            
        
    }
    
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
