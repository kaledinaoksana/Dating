//
//  WelcomeView.swift
//  Dating
//
//  Created by Oksana Kaledina on 14.09.2022.
//

import SwiftUI
import FirebaseCore
import FirebaseAuth

struct Person{
    var login: String
    var password: String
}

struct WelcomeView: View {
    
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
                    
                    signUpWithEmail(email: self.person.login, password: self.person.password) { (verified, status) in
                           
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

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}


func signInWithEmail(email: String,password : String,completion: @escaping (Bool,String)->Void){
    
    Auth.auth().signIn(withEmail: email, password: password) { (res, err) in
        
        if err != nil{
            
            completion(false,(err?.localizedDescription)!)
            return
        }
        
        completion(true,(res?.user.email)!)
    }
}

func signUpWithEmail(email: String,password : String,completion: @escaping (Bool,String)->Void){
    
    Auth.auth().createUser(withEmail: email, password: password) { (res, err) in
        
        if err != nil{
            
            completion(false,(err?.localizedDescription)!)
            return
        }
        
        completion(true,(res?.user.email)!)
    }
}
