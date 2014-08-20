require "bundler/gem_tasks"

namespace :font do
  desc "Create font"
  task prepare: [:minify_svgs, :build_font]

  task minify_svgs: :check_svgo_dependency  do
    # Optimize svgs.
    sh "svgo -f icons --output=icons/min --disable=removeViewBox"
  end

  task :check_svgo_dependency do
    unless system("svgo --version")
      fail "svgo doesn't seem to be installed."
    end
  end

  task :build_font do
    # Building font.
    sh "fontcustom compile"
  end
end
