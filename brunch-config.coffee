exports.config =
  paths:
    public:  'public'
    watched: ['build/base', 'build/editor', 'build/site', 'test', 'vendor']

  files:
    javascripts:
      joinTo:
        'main.js':   /^build/
        'vendor.js': /^vendor/
      order:
        before: [
          'build/base/scripts/_wrapper-begin.ls'
        ]
        after: [
          'build/main/scripts/main.ls'
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
      filterPhp:       true
      outputExtension: 'html'
      staticPatterns: [
        /^build(\/|\\)site(.+)\.static\.jade$/
        /^build(\/|\\)(.+)\.static\.jade$/
      ]
    stylus:
      imports: ['nib']
