require 'open-uri'
url = 'https://fujiyamaorange.vercel.app'

URI.open(url) do |f|
  # f.each_line {|l| puts l}

  # 読み込んだファイルのサイズによってfの型が変わる
  puts f.path
end


entry = Request::AcceptEntry.new(entry_param)

entry <=> other

attr_accessor :params

def params
  @params
end

def params=(value)
  @params = value
end