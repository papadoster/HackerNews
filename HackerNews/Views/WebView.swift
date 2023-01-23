//
//  WebView.swift
//  HackerNews
//
//  Created by Marina Karpova on 23.01.2023.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {

    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        let view = uiView
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                
                DispatchQueue.main.async {
                    view.load(request)
                }
                
            }
        }
    }
}

