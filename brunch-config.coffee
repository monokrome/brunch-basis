exports.config =
  paths:
    public:  'public'
    watched: ['assets', 'build', 'test', 'vendor']

  files:
    javascripts:
      joinTo:
        'main.js':   /^build(\/|\\)(base|app|site)/
        'vendor.js': /^(bower_components|vendor)/
      order:
        before: [
          'build/base/scripts/wrapper-begin.ls'
        ]
        after: [
          'build/site/scripts/site.ls'
          'build/base/scripts/wrapper-end.ls'
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
