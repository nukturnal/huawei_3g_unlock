#!/usr/bin/env ruby
lib = File.expand_path(File.dirname(__FILE__) + '/../lib')
$LOAD_PATH.unshift(lib) if File.directory?(lib) && !$LOAD_PATH.include?(lib)

require 'huawei_3g_unlock'
def printout(s = "Usage: huawei3g IMEI-NUMBER")
    $stderr.puts(s)
    exit(2)
end

def generate(imei)
  codes = Huawei3gUnlock.generate(imei)
  unless codes.class == Array
    printout(codes)
  else
    printout("UNLOCK CODE:\t#{codes.first}\nFLASH CODE:\t#{codes.last}")
  end
end
generate(ARGV[0])