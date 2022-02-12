class AttrClass
  def initialize
    @attr = 'attr'
  end

  def add_reader(instance_val_name)
    eval <<-END_OF_DEF
      def #{instance_val_name}
        @#{instance_val_name}
      end
    END_OF_DEF
  end

  def add_writer(instance_val_name)
    eval <<-END_OF_DEF
      def #{instance_val_name}=(val)
        @#{instance_val_name} = val
      end
    END_OF_DEF
  end
end

attr_obj = AttrClass.new
# 「attr」メソッドがあるかどうか
puts attr_obj.respond_to? "attr"
attr_obj.add_reader "attr"
puts attr_obj.respond_to? "attr"
puts attr_obj.respond_to? "attr="
attr_obj.add_writer "attr"
puts attr_obj.respond_to? "attr="
attr_obj.attr = 'new val'
puts attr_obj.attr
