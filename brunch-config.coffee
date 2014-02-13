exports.config =
  paths:
    public:  'public'
    # watched: ['build/base', 'build/editor', 'build/app', 'test', 'vendor']
    watched: ['build/base', 'build/editor', 'build/site', 'test', 'vendor']

  files:
    javascripts:
      joinTo:
        # 'main.js':   /^build(\/|\\)(base|app)/
        'main.js':   /^build(\/|\\)(base|site)/
        'vendor.js': /^vendor/
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
      staticPatterns: [
        /^build(\/|\\)site(.+)\.static\.jade$/
        /^build(\/|\\)(.+)\.static\.jade$/
      ]
    stylus:
      imports: ['nib']
