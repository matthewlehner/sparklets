require "bundler/gem_tasks"

namespace :font do
  desc "Create font"
  task :build do
    # Optimize svgs.
    sh "svgo -f icons --disable=removeViewBoxs"

    # puts "Building font."
    sh "fontcustom compile icons -o app/assets/fonts -t scss"

    # move stylesheet into place and clean up
    sh "rm app/assets/fonts/.fontcustom-data"
    sh "mv app/assets/fonts/_fontcustom.scss app/assets/stylesheets"
  end
end
