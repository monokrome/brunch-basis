exports.config =
  paths:
    public:  'public'
    watched: ['assets', 'build', 'tests', 'vendor']

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

    templates:
      joinTo: 'templates.js'

  modules:
    definition: false
    wrapper:    false

  sourceMaps: false

  plugins:
    cleancss:
      processImport: false

    jaded:
      patches: 'jade-php'
      staticPatterns:  /^build(\/|\\)site(\/|\\)(.+)\.static\.jade$/

      extensions:
        static: 'php'
        client: 'html'

    stylus:
      imports: ['nib']
