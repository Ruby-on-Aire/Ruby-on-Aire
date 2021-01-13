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

  # Produces and formats the "About Ruby-on-Aire" page.
  #
  # returns a string comprising the HTML body of the page.
  # 
  class About
  
    def call
      self.toString
    end
    
    # toString does the work of composing the About page, as a here-document.
    #
    def toString 
      return <<-EOD
      <div id="heading">
        <img id="logo" alt="logo" src="#{logo-ref}" style="float: left; margin-right: 2em; height: 8em" />
        <h1>Ruby on Aire<br/><span style="font-size: 60%">version #{version-ref}</span></h1>
      </div>
      # todo: additional information
      EOD
    end
    
    private
    
    # provides a URL reference to the logo to be displayed on the About page
    #
    def logo-ref
      "graphics/Ruby-on-Aire-logo.png"
    end
    
    # provides a URL reference to the version number for this version
    def version-ref
      "VERSION"
    end
    
  end #About
end #Aire 
