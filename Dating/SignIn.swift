//
//  SignIn.swift
//  Dating
//
//  Created by Oksana Kaledina on 09.11.2022.
//

import SwiftUI

struct SignIn: View {
    @State var message = ""
    @State var alert = false
    @State var show = false
    
    
    let name = "my friend"
    @State var isPresented: Bool = false
    
    @State var person: Person = Person(login: "", password: "")
    
    var body: some View {
        ZStack{
            
            Color.appBack
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Text("Hi, \(name)!")
                    .font(.custom(Text.font, size: 30))
                    .foregroundColor(.appAсcent)
                    .bold()
                    .multilineTextAlignment(.center)
                
                
     
                    
                    VStack{
                        
                        Label {
                            TextField("Enter Your Username", text: $person.login)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        } icon: {
                            Circle()
                                .fill(Color.appMain)
                                .frame(width: 24, height: 24, alignment: .center)
                        }

                        Label {
                            TextField("Enter Your Password", text: $person.password)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        } icon: {
                            Circle()
                                .fill(Color.appMain)
                                .frame(width: 24, height: 24, alignment: .center)
                        }

                        
                    }.padding()
                    
                    
                    
                    
                    
              
                Button (action: {
                    
                    signInWithEmail(email: self.person.login, password: self.person.password) { (verified, status) in
                           
                           if !verified {
                               
                               self.message = status
                               self.alert.toggle()
                           }
                           else{
                              
                               UserDefaults.standard.set(true, forKey: "status")
                               NotificationCenter.default.post(name: NSNotification.Name("statusChange"), object: nil)
                           }
                       }
                    
                       
                    
                }) {
                    ZStack{
                        RectangleButton(
                            mainColor: .appMain,
                            secondColor: .appUnique.opacity(0.0),
                            border: .appAсcent
                        )
                        Text("Register!")
                            .font(.custom(
                                Text.font,
                                fixedSize: 15))
                            .foregroundColor(.appBack)
                    }
                    .frame(width: 120, height: 40)
                    //.sheet(isPresented: $isPresented){ListView(isPresented: $isPresented)}
                    .alert(isPresented: $alert) {
                                        
                                        Alert(title: Text("Error"), message: Text(self.message), dismissButton: .default(Text("Ok")))
                                }
                    }
                     
                
                Spacer()
            }
            .padding()
        }
    }
    
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
