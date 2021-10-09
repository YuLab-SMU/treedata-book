HTMLWidgets.widget({

  name: 'comicR',

  type: 'output',

  initialize: function(el, width, height) {

    return { }

  },

  renderValue: function(el, x, instance) {

    // handle config options if provided
    if( Object.keys(x.options).length > 0 ){
      COMIC.init(x.options);
    }  else { // if not provided reset to defaults
      // these are the default values if you do not call "init"
      COMIC.init({
          ff: 8,      // fuzz factor for line drawing: bigger -> fuzzier
          ffc: 0.4,   // fuzz factor for curve drawing: bigger -> fuzzier
          fsteps: 50, // number of pixels per step: smaller -> fuzzier
          msteps: 4,  // min number of steps: bigger -> fuzzier
      });
    }

    if (x.selector ===  null) {
      [].forEach.call(document.getElementsByTagName('svg'),function(el){COMIC.magic(el)})
    } else {
      [].forEach.call(document.querySelectorAll(x.selector),function(el){COMIC.magic(el)})
    }

  },

  resize: function(el, width, height, instance) {

  }

});
