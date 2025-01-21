//
//  Ch7_Creating&AccessingEnvironmentValues.swift
//  SwiftUICookbook
//
//  Created by IT-MAC-02 on 2025/1/20.
//

import SwiftUI

struct Ch7_Creating_AccessingEnvironmentValues: View {
    
    @State var theme: Theme = .light
    
    var body: some View {
        //        VStack {
        //            Button {
        //                switch theme {
        //                case .light:
        //                    theme = .dark
        //                case .dark:
        //                    theme = .light
        //                }
        //            } label: {
        //                Text("Switch Theme")
        //            }
        //            ThemedView()
        //                .padding()
        //        }
        //        .theme(theme)
                List {
                    Section("Appearance") {
                        Button {
                            theme = theme == .light ? .dark : .light
                        } label: {
                            HStack {
                                Image(systemName: theme == .light ? "sun.max.fill" : "moon.fill")
                                    .foregroundStyle(theme == .light ? .yellow : .white)
        
                                Text(theme == .light ? "Light Mode" : "Dark Mode")
                                    .foregroundStyle(.gray)
        
                                Spacer()
        
                                Image(systemName: "chevron.right")
                                    .foregroundStyle(.gray)
                                    .font(.system(size: 14))
                            }
                        }
                    }
                }
                .theme(theme)
                .preferredColorScheme(theme == .light ? .light : .dark)
    }
}

struct ThemeKey: EnvironmentKey {
    static let defaultValue: Theme = .light
}

extension EnvironmentValues {
    var theme: Theme {
        get { self[ThemeKey.self] }
        set { self[ThemeKey.self] = newValue }
    }
}

enum Theme {
    case light
    case dark
}

extension View {
    func theme(_ theme: Theme) -> some View {
        environment(\.theme, theme)
    }
}

struct ThemedView: View {
    
    @Environment(\.theme) var theme: Theme
    
    var body: some View {
        VStack {
            if theme == .light {
                Text("Light Theme")
                    .foregroundStyle(.black)
                    .background(.white)
            } else {
                Text("Dark Theme")
                    .foregroundStyle(.white)
                    .background(.black)
            }
        }
        .padding()
    }
}

#Preview {
    Ch7_Creating_AccessingEnvironmentValues()
}
