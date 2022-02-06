class SubClass
  def do_super
    # Objectクラスのsuperを実行
    self.super 
  end
end

sub = SubClass.new
# puts SubClass.superclass