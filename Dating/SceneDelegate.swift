//
//  SceneDelegate.swift
//  Dating
//
//  Created by Oksana Kaledina on 13.09.2022.
//

import CoreData
import SwiftUI
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        //let context = StorageManager.shared.persistentContainer.viewContext

        //let contentView = ContentView().environment(\.managedObjectContext, context)
        
        @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
        
        let contentView = ContentView()

        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        //StorageManager.shared.saveContext()
    }


}
