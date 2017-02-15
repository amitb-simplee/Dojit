Heroku app name: infinite-scrubland-90907

Usage:
  rails new APP_PATH [options]

Options:
  -r, [--ruby=PATH]                                      # Path to the Ruby binary of your choice
                                                         # Default: /Users/amit/.rvm/rubies/ruby-2.0.0-p451/bin/ruby
  -b, [--builder=BUILDER]                                # Path to a application builder (can be a filesystem path or URL)
  -m, [--template=TEMPLATE]                              # Path to an application template (can be a filesystem path or URL)
      [--skip-gemfile], [--no-skip-gemfile]              # Don't create a Gemfile
      [--skip-bundle], [--no-skip-bundle]                # Don't run bundle install
  -G, [--skip-git], [--no-skip-git]                      # Skip Git ignores and keeps
  -O, [--skip-active-record], [--no-skip-active-record]  # Skip Active Record files
  -S, [--skip-sprockets], [--no-skip-sprockets]          # Skip Sprockets files
  -d, [--database=DATABASE]                              # Preconfigure for selected database (options: mysql/oracle/postgresql/sqlite3/frontbase/ibm_db/sqlserver/jdbcmysql/jdbcsqlite3/jdbcpostgresql/jdbc)
                                                         # Default: sqlite3
  -j, [--javascript=JAVASCRIPT]                          # Preconfigure for selected JavaScript library
                                                         # Default: jquery
  -J, [--skip-javascript], [--no-skip-javascript]        # Skip JavaScript files
      [--dev], [--no-dev]                                # Setup the application with Gemfile pointing to your Rails checkout
      [--edge], [--no-edge]                              # Setup the application with Gemfile pointing to Rails repository
  -T, [--skip-test-unit], [--no-skip-test-unit]          # Skip Test::Unit files
      [--old-style-hash], [--no-old-style-hash]          # Force using old style hash (:foo => 'bar') on Ruby >= 1.9

Runtime options:
  -f, [--force]                    # Overwrite files that already exist
  -p, [--pretend], [--no-pretend]  # Run but do not make any changes
  -q, [--quiet], [--no-quiet]      # Suppress status output
  -s, [--skip], [--no-skip]        # Skip files that already exist

Rails options:
  -h, [--help], [--no-help]        # Show this help message and quit
  -v, [--version], [--no-version]  # Show Rails version number and quit

Description:
    The 'rails new' command creates a new Rails application with a default
    directory structure and configuration at the path you specify.

    You can specify extra command-line arguments to be used every time
    'rails new' runs in the .railsrc configuration file in your home directory.

    Note that the arguments specified in the .railsrc file don't affect the
    defaults values shown above in this help message.

Example:
    rails new ~/Code/Ruby/weblog

    This generates a skeletal Rails installation in ~/Code/Ruby/weblog.
    See the README in the newly created application to get going.
