//
//  RMTabBarController.swift
//  RickAndMortySanchezzzzz
//
//  Created by Никита Попов on 19.10.23.
//

import UIKit

class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createTabBarItems()
    }
    
    private func createNavVC(_ vc: UIViewController)-> UINavigationController{
        return UINavigationController(rootViewController: vc)
    }
    
    private func createTabBarItems(){
        let charVC = CharactersViewController()
        let locatVC = LocationsViewController()
        let episodesVC = EpisodesViewController()
        
        let nav1 = createNavVC(charVC)
        let nav2 = createNavVC(locatVC)
        let nav3 = createNavVC(episodesVC)

        nav1.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 0)
        
        nav2.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "location"), tag: 1)
        nav3.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "play"), tag: 2)
        
        for vc in [nav1, nav2, nav3]{
            vc.navigationBar.prefersLargeTitles = true
        }
        
        self.tabBar.tintColor = .black
        
        setViewControllers([nav1, nav2, nav3], animated: true)


    }


}
