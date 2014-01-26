exports.config =
  paths:
    public:  'public'
    watched: ['build', 'test']

  files:
    javascripts:
      joinTo:
        'main.js': /^build/
        'vendor.js': /^(?!build)/

    stylesheets:
      joinTo: 'main.css'

    templates:
      joinTo: 'templates.js'

  conventions:
    ignored: /^base/

  modules:
    definition: false
    wrapper:    false

  sourceMaps: false
