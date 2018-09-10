# Acoes automaticas
module Hooker
  extend Cucumber::Glue::Dsl

  def self.init
    make_name = proc { |feat| feat.to_s.tr(' ', '_').downcase }

    Before do |scenario|
      @scanario_name = make_name.call(scenario.name)
    end

    AfterStep do |_scenario, step|
      @step_name = make_name.call(step)
      page.save_screenshot("temp/shots/#{@scanario_name}/#{@step_name}.png")
    end
  end
end
