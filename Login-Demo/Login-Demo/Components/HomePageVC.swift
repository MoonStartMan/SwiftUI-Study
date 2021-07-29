//
//  SwiftUIView.swift
//  Login-Demo
//
//  Created by 王潇 on 2021/7/26.
//

import SwiftUI

struct HomePageVC: UIViewControllerRepresentable{
    
    let pages: [UIViewController]
    init() {
        pages = HomeImageDatas.map{
            UIHostingController(
                rootView:
                    Image($0.imageName)
                    .resizable()
                    .frame(width: 335, height: 240, alignment: .center)
                    .scaledToFill()
            )
        }
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(pages: pages)
    }
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageVC = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal
        )
        pageVC.dataSource = context.coordinator
        
        return pageVC
    }
    
    func updateUIViewController(_ uiViewController: UIPageViewController, context: Context) {
        uiViewController.setViewControllers(
            [pages[0]],
            direction: .forward,
            animated: true
        )
    }
    
    class Coordinator: NSObject, UIPageViewControllerDataSource{
        
        let pages: [UIViewController]
        
        init(pages: [UIViewController]){
            self.pages = pages
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
            let currentIndex = pages.firstIndex(of: viewController)!
            return currentIndex == 0 ? pages.last : pages[currentIndex - 1]
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
            let currentIndex = pages.firstIndex(of: viewController)!
            return currentIndex == pages.count - 1 ? pages.first : pages[currentIndex + 1]
        }
    }
}


struct HomePageVC_Previews: PreviewProvider {
    static var previews: some View {
        HomePageVC()
    }
}
