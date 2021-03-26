// Copyright (c) 2021 Timofey Solomko
// Licensed under MIT License
//
// See LICENSE for license information

import Foundation
import SWCompression
import SwiftCLI

let cli = CLI(name: "swcomp", version: "5.0.0-dev+generalize-source",
              description: """
                           swcomp - a small command-line client for SWCompression framework.
                           Serves as an example of SWCompression usage.
                           """)
cli.commands = [XZCommand(),
                LZMACommand(),
                BZip2Command(),
                GZipCommand(),
                ZipCommand(),
                TarCommand(),
                SevenZipCommand(),
                BenchmarkGroup()]
cli.goAndExit()
