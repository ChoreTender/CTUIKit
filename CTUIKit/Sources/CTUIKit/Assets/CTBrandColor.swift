//
//  CTBrandColor.swift
//  
//
//  Created by Jacob Jerrell on 6/27/22.
//

import Foundation
import SwiftUI

/// The default application theme colors
/// - Tag: CTBrandColor
@available(macOS 10.15, *)
public enum CTBrandColor: CTColorConvertible {
    /// Light shades
    case pampas = "F5F3F0"
    /// Light accents
    case zorba = "A49B97"
    /// Brand color
    case ecstasy = "F67110"
    /// Dark accents
    case leather = "96724D"
    /// Dark shades
    case balticSea = "1D1B20"
}

@available(macOS 10.15, *)
public struct CTBrandColorTemplate: CTColorTemplate {
    static public var name: LocalizedStringKey { "brandThemeName" }
    
    public var lightShade: CTColorConvertible { CTBrandColor.pampas.rawValue }
    public var lightAccent: CTColorConvertible { CTBrandColor.zorba.rawValue }
    public var brand: CTColorConvertible { CTBrandColor.ecstasy.rawValue }
    public var darkAccent: CTColorConvertible { CTBrandColor.leather.rawValue }
    public var darkShade: CTColorConvertible { CTBrandColor.balticSea.rawValue }
}
