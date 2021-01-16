# frozen_string_literal: true

#  Copyright (C) 2021 Jens M. Dill
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

module Aire

  # An Aire::Cell is the fundamental data object in Ruby-on-Aire.
  #
  # It acts like a spreadsheet cell with a transaction history.
  #
  class Cell
  
    # The cell's value can be seen by anyone, but can only be set privately,
    # usually by evaluating the cell's formula.
    #
    attr_accessor :value
    private :value= 
  
  end # Cell
  
end # Aire
