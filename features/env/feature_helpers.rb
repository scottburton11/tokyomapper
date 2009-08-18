module FeatureHelpers
  def clean_up_databases
    # Dir.glob("#{__FILE__}/../../*.tdb").each {|file| File.delete(file)}
    Dir.glob("./*.tdb").each {|file| File.delete(file)}
  end
end

World(FeatureHelpers)