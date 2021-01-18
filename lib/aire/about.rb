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

  # Produces the HTML source for the "About Ruby-on-Aire" page.
  #
  # The page is returned via the "value" attribute. This may change.
  # 
  class About   
    
    private
    
    # provides a URL reference to the logo to be displayed on the About page
    #
    def self.logo_ref
      "graphics/Ruby-on-Aire-logo.png"
    end
    
    # provides a URL reference to the version number for this version
    def self.version
      "0.0.0"
    end
    @@value ||= <<-EOD
        <div id="heading">
          <img id="logo" alt="logo" src="#{self.logo_ref}" style="float: left; margin-right: 2em; height: 8em" />
          <h1>Ruby on Aire<br/><span style="font-size: 60%">version #{self.version}</span></h1>
        </div>
        EOD

    public

    def self.value
      @@value
    end

  end #About
end #Aire 
