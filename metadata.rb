name             'packer.chef'
maintainer       'Emiliano Berenbaum'
maintainer_email 'emiliano@medlista.com'
license          'All rights reserved'
description      'Installs/Configures packer.chef'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w{ apt nginx }.each do |cookbook|
  depends cookbook
end 


supports 'ubuntu'

