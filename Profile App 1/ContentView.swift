//
//  ContentView.swift
//  Profile App 1
//
//  Created by Shaquille O Neil on 2025-09-11.
//

//starting point of the app
//do not touch this fie

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all) //ignores the safe area
            
            
            
            //Vstack
            VStack(alignment: .center){
                //vstack
                VStack(alignment: .center, spacing: 30){
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180, alignment: .top)
                        .clipShape(Circle())
                        .shadow(color: .pink, radius: 10, x: 5, y: 5)
                    //text
                    Text                ("Jasmine James")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .shadow(radius: 5)
                    
                    
                    //my tag line
                    Text("IOS | SwiftUI | Web Developer")
                        .foregroundStyle(.black)
                        .font(.body)
                                        }
                .padding()
                //Hstack
                HStack(spacing: 40){
                    Image(systemName: "heart.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Image(systemName: "network")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Image(systemName: "message.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Image(systemName: "phone.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        
                }
                .foregroundStyle(.white)
                .frame(width: 250, height: 50, alignment: .center)
                .shadow(color: .pink, radius: 5, y: 5)
                
                VStack(alignment: .center, spacing: 30){
                    RoundedRectangle(cornerRadius: 120)
                        .frame(width: 200, height: 50)
                    //color of the element
                        .foregroundStyle(.white)
                        .shadow(color: .pink, radius: 8, y: 8)
                        .overlay(
                            Text("Follow")
                                .fontWeight(.bold)
                                .font(.system(size: 30))
                                .foregroundStyle(.purple)
                        )
                    
                    
                    
                    
                }
                
                //Hstack
                HStack(alignment: .center, spacing: 40){
                    //vstack
                    VStack(){
                        Text("1775")
                            .font(.title)
                            .foregroundStyle(.purple)
                        Text("Appreciation")
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                    VStack(){
                        Text("800")
                            .font(.title)
                            .foregroundStyle(.purple)
                        Text("Followers")
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                    VStack(){
                        Text("231")
                            .font(.title)
                            .foregroundStyle(.purple)
                        Text("Following")
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                }
                
                //Text -> about me
                Text("About Me")
                    .font(.system(size: 30, weight: .bold))
                
                //Description
                Text("I am a passionate developer and a creative designer. I love to design and build user-friendly applications that make people's lives easier.")
                    .font(.body)
                    .foregroundStyle(.black)
                    .multilineTextAlignment(.center)
                    .lineLimit(4) //to limit max ines
                    .opacity(0.8)
            }
            
        }
    }
}


//command + option + eneter --> hides/unhides the preview panel
//command + shift + l --> systems image tray




#Preview {
    ContentView()
}
