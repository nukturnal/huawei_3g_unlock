require "huawei_3g_unlock/version"
require 'digest/md5'

module Huawei3gUnlock
  
  def self.generate(imei)
    
    # Lazy validation checks
    unless imei.to_s.length == 15 && imei =~ /^[0-9]+$/
      "Error! IMEI code must be 15 digits exactly"
    else
      [crack_modem(imei,"unlock"),crack_modem(imei,"flash")] 
    end
  end
  
  private
    def self.crack_modem(imei = "353443043648141",mode = 'unlock')
      
      unlock_key = "5e8dd316726b0335"
      flash_key = "97b7bc6be525ab44"
      
      str1 = nil
      
      case mode.downcase
        when "unlock" then str1 = encode_md5(imei + unlock_key)
        when "flash" then str1 = encode_md5(imei + flash_key)
      end

      str15 = ""
      num = 0
      while(num<7)
        str11 = str1.slice(num,2)
        str12 = str1.slice(num + 8,2)
        str13 = str1.slice(num + 16,2)
        str14 = str1.slice(num + 24,2)
        s1 = str11.hex ^ str12.hex ^ str13.hex ^ str14.hex
        ss = s1.to_s(16)
        if(s1.to_s.length < 2)
          str15 += "0"
        elsif(ss.length < 2)
          ss+="0"
        end
        str15 = str15 + ss
        num+=2
      end
      s2 = str15.hex & 0x1ffffff | 0x2000000
      s2
    end

    def self.encode_md5(str)
      d = Digest::MD5.new
      d << str
      d.hexdigest
    end
end