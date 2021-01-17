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

  # The Aire::Server is the main entry point for the Aire Web Server. 
  # It conforms to the interface described in the <a href="https://github.com/rack/rack/blob/master/SPEC.rdoc">Rack specification</a>.
  #
  class Server
  
    def self.call (env)
      # For now, just return the About page.
      [ 200, {"Content-Type" => "text/plain"}, [Aire::About.value] ]
    end
  
  end # Server
  
end # Aire
