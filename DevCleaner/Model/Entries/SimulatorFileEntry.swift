//
//  SimulatorFileEntry.swift
//  DevCleaner
//
//  Created by Thomas Boerkel on 15.05.2026.
//  Copyright © 2026 One Minute Games. All rights reserved.
//
//  DevCleaner is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation; either version 3 of the License, or
//  (at your option) any later version.
//
//  DevCleaner is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with DevCleaner.  If not, see <http://www.gnu.org/licenses/>.

import Foundation
import AppKit

public final class SimulatorFileEntry: XcodeFileEntry {
    // MARK: Properties
    public let udid: String
    public let runtime: String

    // MARK: Initialization
    public init(name: String, udid: String, runtime: String, selected: Bool) {
        self.udid = udid
        self.runtime = runtime

        super.init(label: name, extraInfo: runtime, icon: .system(name: NSImage.computerName), tooltip: false, selected: selected)
    }
}
