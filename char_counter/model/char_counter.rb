class CharCounter
  def self.count(str)
    hash = Hash.new
    if str != nil
      str.each_char do |char|
        if char!='' && char!=' '
        hash[char] = str.count char
        end
      end
   end
   return hash
   end
end
