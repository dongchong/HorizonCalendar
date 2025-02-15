// Created by Bryan Keller on 1/27/23.
// Copyright © 2023 Airbnb Inc. All rights reserved.

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import UIKit

enum ColorViewRepresentable: CalendarItemViewRepresentable {

  static func makeView(
    withInvariantViewProperties invariantViewProperties: UIColor)
    -> UIView
  {
    let view = UIView()
    view.backgroundColor = invariantViewProperties
    return view
  }

  static func setViewModel(_ viewModel: Int, on view: UIView) { }

}
