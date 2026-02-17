# rubocop-mmenanno

Personal RuboCop configuration for mmenanno projects. Packages opinionated style preferences (fixed indentation, double quotes, trailing commas, etc.) and bundles commonly-used rubocop plugins as dependencies.

## Gems

- **rubocop-mmenanno** — base config + deps (rubocop-performance, rubocop-minitest, rubocop-thread_safety)
- **rubocop-mmenanno-rails** — thin wrapper adding rubocop-rails for Rails projects

## Installation

Add to your Gemfile:

```ruby
# Non-Rails projects
gem "rubocop-mmenanno", require: false

# Rails projects
gem "rubocop-mmenanno-rails", require: false
```

## Usage

### Plugin approach (recommended)

`.rubocop.yml` for a non-Rails project:

```yaml
plugins:
  - rubocop-mmenanno
  - rubocop-performance
  - rubocop-minitest
  - rubocop-thread_safety
```

`.rubocop.yml` for a Rails project:

```yaml
inherit_gem:
  rubocop-mmenanno: config/rails.yml

plugins:
  - rubocop-mmenanno
  - rubocop-rails
  - rubocop-performance
  - rubocop-minitest
  - rubocop-thread_safety
```

### inherit_gem approach (legacy)

```yaml
inherit_gem:
  rubocop-mmenanno: config/default.yml

plugins:
  - rubocop-performance
  - rubocop-minitest
  - rubocop-thread_safety
```

## What's included

### Style preferences

- Fixed indentation (not aligned with first element)
- Double quotes for strings
- Trailing commas in multiline constructs
- Require parentheses on method calls
- Brackets for symbol/word arrays (`[:a, :b]` not `%i[a b]`)
- `class << self` for class methods
- `extend self` over `module_function`
- Disabled line length cop
- Multiline line break enforcement

### Bundled plugins

The base gem includes these as dependencies:

- [rubocop-performance](https://github.com/rubocop/rubocop-performance)
- [rubocop-minitest](https://github.com/rubocop/rubocop-minitest)
- [rubocop-thread_safety](https://github.com/rubocop/rubocop-thread_safety)

The rails gem additionally includes:

- [rubocop-rails](https://github.com/rubocop/rubocop-rails)

## License

MIT
