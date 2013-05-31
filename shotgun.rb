ROOT_DIR = File.expand_path(File.dirname(__FILE__))

$:.unshift(*Dir[File.join(ROOT_DIR, "*", "lib")])

require "cuba"
require "cuba/contrib"
require "mote"
require "ohm"
require "ohm/contrib"
require "shield"
require "rack/protection"
