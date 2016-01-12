require 'bundler/setup'
Bundler.setup

require 'hydra/pcdm'
require 'active-fedora'

# You'll need Fedora running
ActiveFedora.init(:fedora_config_path => "config/fedora.yml")
col = Hydra::PCDM::Collection.create
obj = Hydra::PCDM::Object.create
file= Hydra::PCDM::File.new

col.members << obj
col.save

file = obj.files.build
file.content = "The quick brown fox jumped over the lazy dog."
obj.save

