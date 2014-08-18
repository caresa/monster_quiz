(function( $ ){

  $.fn.imageTimer = function(params) {
    options = $.extend({
      seconds: 3,
      style: {
        width: '0px',
        height: '10px',
        'text-align': 'right',
        'background-color': '#333'
      },
      finish: function () {
        console.log('done');
      },
      updateTarget: false,
      update: false,
      updates: ['Go']
    }, params);

    this.each(function () {
      var self = $(this);
      options.width = $(this).width();

      $(this).css(options.style);

      if(options.update !== false) {console.log(options.update);
        var t = setInterval(function () {
          var msg = options.updates.shift();
          $(options.updateTarget).html(msg);
        }, options.update);
      }

      self.animate({'width': options.width+'px'}, 1000 * options.seconds, options.finish);
    });
  };

})( jQuery );
