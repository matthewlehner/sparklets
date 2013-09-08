# Sparklets

Asset pipeline gem for generating sparklets font for icons in Sparkle.

Add new svgs to `icons/` and run `rake font:prepare` to build the font.


## Installation

Add this line to your application's Gemfile:

    gem 'sparklets'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sparklets

## Usage

Adding new svgs requires the installation of `svgo`. Just `brew install svgo`.

Configuration of font building options are handled in `icons/fontcustom.yml`

Enjoy!
