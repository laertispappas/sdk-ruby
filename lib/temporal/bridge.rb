require 'rutie'
require 'temporal/bridge/error'

# RBS: for some reason __dir__ has a type of (String | nil)
BRIDGE_DIR = File.expand_path('..', __dir__ || '.')

module Temporal
  module Bridge
    Rutie
      .new(:bridge, lib_path: '', lib_suffix: 'so', lib_prefix: '')
      .init('init_bridge', BRIDGE_DIR)
  end
end
