(function() {
  var buildr, configs, options, standardBuildr, standardConfig, util;

  buildr = require('buildr');

  util = require('util');

  options = {
    watch: false,
    compress: true
  };

  configs = {
    standard: {
      name: 'standard',
      watch: options.watch,
      srcPath: __dirname + '/scripts/uncompressed',
      outPath: __dirname + '/scripts/compressed',
      checkScripts: true,
      jshintOptions: {
        browser: true,
        laxbreak: true,
        boss: true,
        undef: true,
        onevar: true,
        strict: true,
        noarg: true
      },
      compressScripts: options.compress
    },
    other: [
      {
        name: 'html4+html5+dojo',
        watch: options.watch,
        srcPath: __dirname + '/scripts/uncompressed',
        compressScripts: options.compress,
        scriptsOrder: ['json2.js', 'history.adapter.dojo.js', 'history.html4.js', 'history.js'],
        bundleScriptPath: __dirname + '/scripts/bundled/html4+html5/dojo.history.js'
      }, {
        name: 'html5+dojo',
        watch: options.watch,
        srcPath: __dirname + '/scripts/uncompressed',
        compressScripts: options.compress,
        scriptsOrder: ['history.adapter.dojo.js', 'history.js'],
        bundleScriptPath: __dirname + '/scripts/bundled/html5/dojo.history.js'
      }, {
        name: 'html4+html5+extjs',
        watch: options.watch,
        srcPath: __dirname + '/scripts/uncompressed',
        compressScripts: options.compress,
        scriptsOrder: ['json2.js', 'history.adapter.extjs.js', 'history.html4.js', 'history.js'],
        bundleScriptPath: __dirname + '/scripts/bundled/html4+html5/extjs.history.js'
      }, {
        name: 'html5+extjs',
        watch: options.watch,
        srcPath: __dirname + '/scripts/uncompressed',
        compressScripts: options.compress,
        scriptsOrder: ['history.adapter.extjs.js', 'history.js'],
        bundleScriptPath: __dirname + '/scripts/bundled/html5/extjs.history.js'
      }, {
        name: 'html4+html5+jquery',
        watch: options.watch,
        srcPath: __dirname + '/scripts/uncompressed',
        compressScripts: options.compress,
        scriptsOrder: ['json2.js', 'history.adapter.jquery.js', 'history.html4.js', 'history.js'],
        bundleScriptPath: __dirname + '/scripts/bundled/html4+html5/jquery.history.js'
      }, {
        name: 'html5+jquery',
        watch: options.watch,
        srcPath: __dirname + '/scripts/uncompressed',
        compressScripts: options.compress,
        scriptsOrder: ['history.adapter.jquery.js', 'history.js'],
        bundleScriptPath: __dirname + '/scripts/bundled/html5/jquery.history.js'
      }, {
        name: 'html4+html5+mootools',
        watch: options.watch,
        srcPath: __dirname + '/scripts/uncompressed',
        compressScripts: options.compress,
        scriptsOrder: ['json2.js', 'history.adapter.mootools.js', 'history.html4.js', 'history.js'],
        bundleScriptPath: __dirname + '/scripts/bundled/html4+html5/mootools.history.js'
      }, {
        name: 'html5+mootools',
        watch: options.watch,
        srcPath: __dirname + '/scripts/uncompressed',
        compressScripts: options.compress,
        scriptsOrder: ['history.adapter.mootools.js', 'history.js'],
        bundleScriptPath: __dirname + '/scripts/bundled/html5/mootools.history.js'
      }, {
        name: 'html4+html5+native',
        watch: options.watch,
        srcPath: __dirname + '/scripts/uncompressed',
        compressScripts: options.compress,
        scriptsOrder: ['json2.js', 'history.adapter.native.js', 'history.html4.js', 'history.js'],
        bundleScriptPath: __dirname + '/scripts/bundled/html4+html5/native.history.js'
      }, {
        name: 'html5+native',
        watch: options.watch,
        srcPath: __dirname + '/scripts/uncompressed',
        compressScripts: options.compress,
        scriptsOrder: ['history.adapter.native.js', 'history.js'],
        bundleScriptPath: __dirname + '/scripts/bundled/html5/native.history.js'
      }, {
        name: 'html4+html5+right',
        watch: options.watch,
        srcPath: __dirname + '/scripts/uncompressed',
        compressScripts: options.compress,
        scriptsOrder: ['json2.js', 'history.adapter.right.js', 'history.html4.js', 'history.js'],
        bundleScriptPath: __dirname + '/scripts/bundled/html4+html5/right.history.js'
      }, {
        name: 'html5+right',
        watch: options.watch,
        srcPath: __dirname + '/scripts/uncompressed',
        compressScripts: options.compress,
        scriptsOrder: ['history.adapter.right.js', 'history.js'],
        bundleScriptPath: __dirname + '/scripts/bundled/html5/right.history.js'
      }, {
        name: 'html4+html5+zepto',
        watch: options.watch,
        srcPath: __dirname + '/scripts/uncompressed',
        compressScripts: options.compress,
        scriptsOrder: ['json2.js', 'history.adapter.zepto.js', 'history.html4.js', 'history.js'],
        bundleScriptPath: __dirname + '/scripts/bundled/html4+html5/zepto.history.js'
      }, {
        name: 'html5+zepto',
        watch: options.watch,
        srcPath: __dirname + '/scripts/uncompressed',
        compressScripts: options.compress,
        scriptsOrder: ['history.adapter.zepto.js', 'history.js'],
        bundleScriptPath: __dirname + '/scripts/bundled/html5/zepto.history.js'
      }
    ]
  };

  standardConfig = configs.standard;

  standardConfig.successHandler = function() {
    var buildrInstance, config, _i, _len, _ref, _results;
    _ref = configs.other;
    _results = [];
    for (_i = 0, _len = _ref.length; _i < _len; _i++) {
      config = _ref[_i];
      buildrInstance = buildr.createInstance(config);
      _results.push(buildrInstance.process());
    }
    return _results;
  };

  standardBuildr = buildr.createInstance(configs.standard);

  standardBuildr.process();

}).call(this);
