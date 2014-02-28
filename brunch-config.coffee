exports.config =
  paths:
    public:  'public'
    watched: ['build/app', 'build/base', 'build/editor', 'build/site', 'test', 'vendor']

  files:
    javascripts:
      joinTo:
        'main.js':   /^build(\/|\\)(base|app|site)/
        'vendor.js': /^(bower_components|vendor)/
      order:
        before: [
          'build/base/scripts/_wrapper-begin.ls'
        ]
        after: [
          'build/site/scripts/site.ls'
          'build/base/scripts/_wrapper-end.ls'
        ]

    stylesheets:
      joinTo:
        'main.css':   /^build(\/|\\)site/
        'editor.css': /^build(\/|\\)editor/

    # templates:
    #   joinTo: 'templates.js'

  modules:
    definition: false
    wrapper:    false

  sourceMaps: false

  plugins:
    cleancss:
      processImport: false
    jaded:
      # filterPhp:       true
      # outputExtension: 'php'
      staticPatterns:  [/^build(\/|\\)site(.+)\.static\.jade$/]
    stylus:
      imports: ['nib']
