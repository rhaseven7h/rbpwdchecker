$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require File.join(File.dirname(__FILE__), '..', 'ext', 'rbpwdchecker', 'rbpwdchecker')

module Rbpwdchecker
  VERSION = '0.0.1'
end