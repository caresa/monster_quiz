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
      update: false,
      updates: ['Go']
    }, params);

    this.each(function () {
      var self = $(this);
      options.width = $(this).width();

      $(this).css(options.style);

      if(options.update !== false) {console.log(options.update);
        $(this).append('<div id="timerMsg" style="position: absolute;top: 20px;left: 0px;"></div>');
        var t = setInterval(function () {
          var msg = options.updates.shift();
          $('#timerMsg').html(msg);
        }, options.update);
      }

      self.animate({'width': options.width+'px'}, 1000 * options.seconds, options.finish);
    });
  };

})( jQuery );
