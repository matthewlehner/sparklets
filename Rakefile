require "bundler/gem_tasks"

namespace :font do
  desc "Create font"
  task prepare: [:minify_svgs, :build_font, :move_assets]

  task minify_svgs: :check_svgo_dependency  do
    # Optimize svgs.
    sh "svgo -f icons --disable=removeViewBoxs"
  end

  task :check_svgo_dependency do
    unless system("svgo --version")
      fail "svgo doesn't seem to be installed."
    end
  end

  task :build_font do
    # puts "Building font."
    sh "fontcustom compile icons -o app/assets/fonts -t scss"
  end

  task :move_assets do
    # move stylesheet into place and clean up
    sh "rm app/assets/fonts/.fontcustom-data"
    sh "mv app/assets/fonts/_fontcustom.scss app/assets/stylesheets"
  end
end
