module Notes

  class Taker

    def initialize
      @data = ""
      @tabbed = false
      @uppercase = false
    end

    def notate(n)
      append "Note:#{n}\n"
    end

    def exec_block(&block)
      self.instance_exec("sparrow", "lightning bolt", &block)
    end

    def take(&block)
      exec_block &block if block_given?
      print @data
    end

    def title(tstring)
      append "#{tstring}\n"
      append "#{"-"*tstring.length}\n"
    end

    def hr(length=20)
      append "#{"="*length}\n"
    end

    def list(*args)
      args.each do |thing|
        append "> #{thing}\n"
      end
    end

    def append(str)
      @data << "#{"\t" if @tabbed}#{@uppercase ? str.upcase : str}"
    end

    def subhead(str)
      append "#{str}\n#{"."*str.length}\n"
    end

    def is_attr(name)
      self.instance_variables.include? "@#{name}".to_sym
    end

    def method_missing(name, *args, &block)
      if (is_attr(name))
        instance_eval "@#{name} = true"
        exec_block &block
        instance_eval "@#{name} = false"
      else
        puts "modifier not found..."
        super
      end
    end

  end

end

require "./scratch"



