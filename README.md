# hfuse Base (for Middleman)

A basic setup for [Middleman](https://github.com/middleman/) 4.x

## Used gems

- [middleman](https://rubygems.org/gems/middleman) (You didn't expect that, did you?)
- [middleman-livereload](https://rubygems.org/gems/middleman-livereload/)
- [middleman-favicon-maker](https://rubygems.org/gems/middleman-favicon-maker/)
- [builder](http://rubygems.org/gems/builder/)
- [susy](https://rubygems.org/gems/susy/)


## Frontend

Responsive, mobile first approach based on [Susy](http://susy.oddbird.net).

Breakpoints are
- phone: 480px - 768px
- tablet: 768px - 1100px
- desktop: 1100px - ∞


## Usage

Ruby 1.9.3 or greater recommended

`git clone` this repository and run `bundle install` inside the folder of this project.

Activate/deactivate Susy grid-overlay by commenting out/in `+susy-grid` for the `.page` CSS class.

Use for whatever you like. If you have suggestions for improvements use [Github issues of this project](https://github.com/cseelus/middleman-sample/issues/).

Thanks to [Thomas Reynolds](https://twitter.com/tdreyno), [Ben Hollis](https://twitter.com/bhollis), et al.
