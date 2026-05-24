# SwiftUI-Study

<p align="center">
  <img src="https://img.shields.io/badge/Swift-5.0-orange.svg" alt="Swift 5.0">
  <img src="https://img.shields.io/badge/SwiftUI-iOS-blue.svg" alt="SwiftUI">
  <img src="https://img.shields.io/badge/iOS-13.0+-blue.svg" alt="iOS 13.0+">
  <img src="https://img.shields.io/badge/Xcode-11.0+-brightgreen.svg" alt="Xcode 11.0+">
  <img src="https://img.shields.io/badge/Stars-5-yellow.svg" alt="Stars">
  <img src="https://img.shields.io/badge/Forks-2-blue.svg" alt="Forks">
  <img src="https://img.shields.io/badge/License-MIT-green.svg" alt="MIT License">
</p>

<p align="center">
  <b>SwiftUI 学习记录与示例代码</b>
</p>

## 项目简介

这是一个 SwiftUI 学习记录仓库，包含从基础到进阶的各种 SwiftUI 示例代码。SwiftUI 是 Apple 推出的现代化声明式 UI 框架，让界面开发变得更加简单直观。

## 功能特性

- SwiftUI 基础组件使用
- 状态管理 (@State, @Binding, @ObservedObject, @Environment)
- 数据绑定与响应式编程
- 布局系统 (VStack, HStack, ZStack)
- 列表与导航
- 动画效果
- 自定义视图
- 与 UIKit 的桥接

## 技术栈

- **编程语言**: Swift 5.0+
- **UI框架**: SwiftUI
- **开发环境**: Xcode 11.0+
- **最低支持系统**: iOS 13.0+, macOS 10.15+, watchOS 6.0+, tvOS 13.0+

## 学习内容

### 基础组件

| 组件 | 描述 | 示例 |
|------|------|------|
| Text | 文本显示 | 样式、字体、颜色 |
| Image | 图片显示 | 本地/网络图片 |
| Button | 按钮 | 点击事件、样式 |
| TextField | 输入框 | 数据绑定、验证 |
| Toggle | 开关 | 状态切换 |
| Slider | 滑块 | 数值选择 |
| Picker | 选择器 | 多选项选择 |

### 布局容器

| 容器 | 描述 |
|------|------|
| VStack | 垂直堆叠布局 |
| HStack | 水平堆叠布局 |
| ZStack | 层叠布局 |
| List | 列表视图 |
| Form | 表单视图 |
| ScrollView | 滚动视图 |
| GeometryReader | 几何信息读取 |

### 状态管理

```swift
// @State - 视图内部状态
struct CounterView: View {
    @State private var count = 0
    
    var body: some View {
        Button("Count: \(count)") {
            count += 1
        }
    }
}

// @Binding - 父子视图状态共享
struct ToggleView: View {
    @Binding var isOn: Bool
    
    var body: some View {
        Toggle("Enable", isOn: $isOn)
    }
}

// @ObservedObject - 外部数据模型
class ViewModel: ObservableObject {
    @Published var items: [Item] = []
}

struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        List(viewModel.items) { item in
            Text(item.name)
        }
    }
}

// @Environment - 环境值
@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.colorScheme, .dark)
        }
    }
}
```

## 安装和运行

### 环境要求

- macOS 10.15 或更高版本
- Xcode 11.0 或更高版本
- iOS 13.0+ / macOS 10.15+ / watchOS 6.0+ / tvOS 13.0+

### 安装步骤

1. 克隆仓库

```bash
git clone https://github.com/MoonStartMan/SwiftUI-Study.git
```

2. 进入项目目录

```bash
cd SwiftUI-Study
```

3. 打开 Xcode 工程

```bash
open SwiftUI-Study.xcodeproj
```

4. 选择目标平台，点击运行按钮 (Cmd+R)

## 项目结构

```
SwiftUI-Study/
├── SwiftUI-Study.xcodeproj
├── SwiftUI-Study/
│   ├── SwiftUI_StudyApp.swift          # 应用入口
│   ├── ContentView.swift               # 主界面
│   ├── Basics/                         # 基础组件
│   │   ├── TextDemo.swift
│   │   ├── ImageDemo.swift
│   │   ├── ButtonDemo.swift
│   │   └── ...
│   ├── Layout/                         # 布局
│   │   ├── StackDemo.swift
│   │   ├── ListDemo.swift
│   │   └── ...
│   ├── StateManagement/                # 状态管理
│   │   ├── StateDemo.swift
│   │   ├── BindingDemo.swift
│   │   └── ...
│   ├── Animation/                      # 动画
│   │   └── AnimationDemo.swift
│   └── Advanced/                       # 进阶
│       └── CustomViewDemo.swift
└── README.md
```

## 示例代码

### 基础视图

```swift
struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Hello, SwiftUI!")
                .font(.largeTitle)
                .foregroundColor(.blue)
            
            Image(systemName: "star.fill")
                .font(.largeTitle)
                .foregroundColor(.yellow)
            
            Button("点击我") {
                print("按钮被点击")
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
    }
}
```

### 列表视图

```swift
struct Item: Identifiable {
    let id = UUID()
    let name: String
}

struct ListDemo: View {
    let items = [
        Item(name: "苹果"),
        Item(name: "香蕉"),
        Item(name: "橙子")
    ]
    
    var body: some View {
        NavigationView {
            List(items) { item in
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text(item.name)
                }
            }
            .navigationTitle("水果列表")
        }
    }
}
```

### 数据绑定

```swift
struct FormDemo: View {
    @State private var username = ""
    @State private var isSubscribed = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("个人信息")) {
                    TextField("用户名", text: $username)
                }
                
                Section(header: Text("偏好设置")) {
                    Toggle("订阅通知", isOn: $isSubscribed)
                }
                
                Section {
                    Button("保存") {
                        // 保存逻辑
                    }
                }
            }
            .navigationTitle("设置")
        }
    }
}
```

## 学习路径

1. **基础入门**: 了解 SwiftUI 的基本概念和语法
2. **组件学习**: 掌握常用 UI 组件的使用
3. **布局系统**: 学习各种布局容器的使用
4. **状态管理**: 理解 @State, @Binding, @ObservedObject 等
5. **数据流**: 学习数据在视图间的传递
6. **动画效果**: 添加过渡动画和交互效果
7. **进阶主题**: 自定义视图、与 UIKit 桥接等

## 推荐资源

- [Apple SwiftUI 官方文档](https://developer.apple.com/documentation/swiftui)
- [SwiftUI Tutorials](https://developer.apple.com/tutorials/swiftui)
- [Hacking with Swift](https://www.hackingwithswift.com/quick-start/swiftui)

## 贡献指南

1. Fork 本仓库
2. 创建特性分支 (`git checkout -b feature/new-demo`)
3. 添加示例代码
4. 提交更改 (`git commit -m 'Add: SwiftUI 示例'`)
5. 推送到分支 (`git push origin feature/new-demo`)
6. 打开 Pull Request

## 许可证

本项目采用 MIT 许可证 - 详情请参阅 [LICENSE](LICENSE) 文件

## 联系方式

- GitHub: [@MoonStartMan](https://github.com/MoonStartMan)

---

<p align="center">如果这个项目对您有帮助，请给个 ⭐️ 支持一下！<br>让我们一起学习 SwiftUI！</p>
