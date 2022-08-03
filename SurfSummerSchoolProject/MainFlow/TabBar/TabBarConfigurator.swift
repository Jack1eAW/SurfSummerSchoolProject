//
//  TabBarConfigurator.swift
//  SurfSummerSchoolProject
//
//  Created by Aleksandr Chebotarev on 8/3/22.
//

import Foundation
import UIKit

final class TabBarConfigurator {
    
    // MARK: - Private property
    
    private let allTab: [TabBarModel] = [.main, .favorite, .profile]
    
    // MARK: - Internal Methods
    
    func configure() -> UITabBarController {
        return getTabBarController()
    }
    
}

// MARK: - Private Methods

private extension TabBarConfigurator {
    
    func getTabBarController() -> UITabBarController {
        let tabBarController = UITabBarController()
        tabBarController.tabBar.tintColor = .black
        tabBarController.tabBar.unselectedItemTintColor = .lightGray
        tabBarController.tabBar.backgroundColor = .white
        tabBarController.viewControllers = getViewControllers()
        
        return tabBarController
    }
    
    func getViewControllers() -> [UIViewController] {
        var viewControllers = [UIViewController]()
        
        allTab.forEach { tab in
            let controller = getCurrentViewController(tab: tab)
            let tabBarItem = UITabBarItem(title: tab.title, image: tab.image, selectedImage: tab.selectedImage)
            controller.tabBarItem = tabBarItem
            viewControllers.append(controller)
        }
        
        return viewControllers
    }
    
    func getCurrentViewController(tab: TabBarModel) -> UIViewController {
        switch tab {
        case .main:
            return createNavigationController(rootViewController: MainViewController())
        case .favorite:
            return createNavigationController(rootViewController: FavoriteViewController())
        case .profile:
            return createNavigationController(rootViewController: ProfileViewController())
        }
    }
    
    func createNavigationController(rootViewController: UIViewController) -> UIViewController {
        
        let navigationController = UINavigationController(rootViewController: rootViewController)
        navigationController.navigationBar.tintColor = .black
        
        return navigationController
    }

    
}
