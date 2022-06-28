//
//  CTColorTemplates.swift
//  
//
//  Created by Jacob Jerrell on 6/27/22.
//

import SwiftUI
#if !os(macOS)
import UIKit
#endif

// As a developer, I need a public API which allows me to create collections of color schemes.
// I should be able to iterate a list of available schemes and change the apps appearance on
// the fly.
//
// As a user I should be able to create custom schemes and apply them as desired

@available(macOS 10.15, *)
public enum CTColorTemplates: CaseIterable {
    case brand
    
    public var palette: CTColorTemplate {
        switch self {
        case .brand: return CTBrandColorTemplate()
        }
    }
}

/// A base color scheme
@available(macOS 10.15, *)
public protocol CTColorTemplate {
    static var name: LocalizedStringKey { get }
    var lightShade: CTColorConvertible { get }
    var lightAccent: CTColorConvertible { get }
    var brand: CTColorConvertible { get }
    var darkAccent: CTColorConvertible { get }
    var darkShade: CTColorConvertible { get }
}

/// Accepts a Hex string and provides access to a Color and UIColor.
/// Primarily used for enum "conformance".
///
/// - See [CTBrandColor](x-source-tag://CTBrandColor)
@available(macOS 10.15, *)
public struct CTColorConvertible: ExpressibleByStringLiteral {
    public typealias StringLiteralType = String
    public var rawValue: StringLiteralType
    
    public init(stringLiteral value: String) {
        self.rawValue = value
    }
    
    #if !os(macOS)
    public var uiColor: UIColor { .init(rawValue) }
    #endif
    public var color: Color { .init(rawValue) }
}


@available(macOS 10.15, *)
public extension CTColorConvertible: Equatable {}
