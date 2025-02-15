// Copyright 2020 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Fuzzilli

let hermesProfile = Profile(
    processArguments: ["--replr"],

    processEnv: ["UBSAN_OPTIONS": "exitcode=122", "ASAN_OPTIONS": "exitcode=122"],

    codePrefix: """
                function main() {
                """,

    codeSuffix: """
                }
                main();
                """,

    ecmaVersion: ECMAScriptVersion.es6,
    crashTests: ["FuzzilliCrash(1)", "FuzzilliCrash(2)"],
    // crashTests: ["fuzzilli('FuzzilliCrash2')", "fuzzilli('FuzzilliCrash1')"],


    additionalCodeGenerators: WeightedList<CodeGenerator>([]),

    additionalProgramTemplates: WeightedList<ProgramTemplate>([]),

    disabledCodeGenerators: [],

    additionalBuiltins: [
        "gc"                : .function([] => .undefined),
    ]
)
