$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../../lib')
require 'tokyomapper'

require 'spec/expectations'
require 'features/env/feature_helpers'

Before do
  
end


After do
  clean_up_databases
end