$().ready(function() {
  $(".scrollTo").click(function(e) {
    e.preventDefault();

    var anchor = $(this).attr("href");

    $("body").animate({
      scrollTop: $(anchor).offset().top - 51
    }, 1000);

  });
});
