$(document).on('ready page:load', function() {
  // Alert and Notices Fade out
  $('.alert').delay(1000).fadeOut(600);
  // Raty
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]'});
    $('.rated').raty({ path: '/assets',
                     readOnly: true,
                     score: function() {
                       return $(this).attr('data-score');
                     }
                     });
  // ElevateZoom
  $('.img-zoom').elevateZoom({
  	zoomType: "inner",
  	cursor: 	"crosshair"
  });
}); // End Document Ready Function