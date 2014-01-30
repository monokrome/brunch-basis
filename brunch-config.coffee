exports.config =
  paths:
    public:  'public'
    watched: ['build', 'test', 'vendor']

  files:
    javascripts:
      joinTo:
        'main.js':   /^build/
        'vendor.js': /^vendor/
      order:
        before: [
          'build/base/scripts/wrapper-begin.ls'
        ]
        after: [
          'build/main/scripts/main.ls'
          'build/base/scripts/wrapper-end.ls'
        ]

    stylesheets:
      joinTo:
        'main.css':   /^build(\/|\\)site(\/|\\)styles/
        'editor.css': /^build(\/|\\)editor(\/|\\)styles/

  conventions:
    ignored: /^build(\/|\\)base(\/|\\)styles/

  modules:
    definition: false
    wrapper:    false

  sourceMaps: false

  plugins:
    cleancss:
      processImport: false
    jaded:
      filterPhp:       false
      outputExtension: 'html'
      jade:
        pretty: true
      staticPatterns: [
        /^build(\/|\\)site(.+)\.static\.jade$/
        /^build(\/|\\)(.+)\.static\.jade$/
      ]
