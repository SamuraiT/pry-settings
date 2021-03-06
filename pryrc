class String
    def console_red;          colorize(self, "\e[1m\e[31m");  end
    def console_dark_red;     colorize(self, "\e[31m");       end
    def console_green;        colorize(self, "\e[1m\e[32m");  end
    def console_dark_green;   colorize(self, "\e[32m");       end
    def console_yellow;       colorize(self, "\e[1m\e[33m");  end
    def console_dark_yellow;  colorize(self, "\e[33m");       end
    def console_blue;         colorize(self, "\e[1m\e[34m");  end
    def console_dark_blue;    colorize(self, "\e[34m");       end
    def console_purple;       colorize(self, "\e[1m\e[35m");  end

    def console_def;          colorize(self, "\e[1m");  end
    def console_bold;         colorize(self, "\e[1m");  end
    def console_blink;        colorize(self, "\e[5m");  end

    def colorize(text, color_code)  "#{color_code}#{text}\e[0m" end
end

Pry.prompt = [
  proc { |obj, nest_level, pry| "[#{pry.input_array.size}]\001\e[0;32m\002 #{Pry.config.prompt_name}\001\e[0m\002(\001\e[0;33m\002#{Pry.view_clip(obj)}\001\e[0m\002)> " }
]

