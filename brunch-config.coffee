exports.config =
  paths:
    public:  'public'
    watched: ['build', 'test']

  files:
    javascripts:
      joinTo:
        'main.js':   /^build/
        'vendor.js': /^(?!build)/

    stylesheets:
      joinTo:
        'main.css':   /^build(\/|\\)styles(\/|\\)main/
        'editor.css': /^build(\/|\\)styles(\/|\\)editor/

    templates:
      joinTo: 'templates.js'

  conventions:
    ignored: /^base/

  modules:
    definition: false
    wrapper:    false

  sourceMaps: false

  plugins:
    cleancss:
      processImport: false
    jade:
      options:
        pretty: true
    static_jade:
      extension: '.static.jade'
      path:      [/build/, /build(\/|\\)views/]
      asset:     'public'
