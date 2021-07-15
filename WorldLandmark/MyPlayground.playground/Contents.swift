import UIKit
import SwiftUI

//  Generic泛型--占位符(T)
max(1, 2)

func max<T>(_ x: T, _ y: T) -> T where T : Comparable{
    return y >= x ? y : x
}
