/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
Configuration information for satellite entities.
*/

import SwiftUI

extension SatelliteEntity {
    /// Configuration information for satellite entities.
    struct Configuration {
        var name: String
        var displayName: String
        var isVisible: Bool = true
        var inclination: Angle = .zero
        var speedRatio: Float = 1
        var scale: Float = 1
        var altitude: Float = 0
        var traceWidth: Float = 400
        var isTraceVisible: Bool = false
        var initialRotation: Angle = .zero

        static var orbitSatelliteDefault: Configuration {
            .init(
                name: "Satellite",
                displayName: String(localized: "Satellite", comment: "An object in orbit around Earth."),
                inclination: .degrees(60),
                speedRatio: 24.0 / 1.5,
                scale: 0.8,
                altitude: 0.4,
                isTraceVisible: true)
        }
        
        static var orbitMoonDefault: Configuration {
            .init(
                name: "Moon",
                displayName: String(localized: "Moon", comment: "An object in orbit around Earth."),
                isVisible: true,
                speedRatio: 1 / 2,
                scale: 0.25,
                altitude: 1.25,
                initialRotation: .degrees(90))
        }
        
        static var solarTelescopeDefault: Configuration {
            .init(
                name: "Telescope",
                displayName: String(localized: "Telescope", comment: "A space telescope in orbit around Earth."),
                inclination: .degrees(60),
                speedRatio: 24.0 / 1.5,
                scale: 0.2,
                altitude: 0.55)
        }

        static var solarMoonDefault: Configuration {
            .init(
                name: "Moon",
                displayName: String(localized: "Moon", comment: "The Moon in orbit around Earth."),
                speedRatio: 1 / 28,
                scale: 0.25,
                altitude: 3.75,
                initialRotation: .degrees(90))
        }
        static var disabledMoon: Configuration {
            .init(
                name: "Moon",
                displayName: String(localized: "Moon", comment: "A configuration item to set the Moon's visibility."),
                isVisible: false)
        }
    }
}
