$('.main_snd .characterList .characterBox').slick({
  centerMode: true,
  centerPadding: '40px',
  slidesToShow: 3,
  variableWidth: true,
  arrows: false,
  dots: true
}).on('afterChange', function (event, slick, currentSlide) {
  $('.main_snd .characterList ul .character').removeClass('active');
  $('.main_snd .characterList ul .character[data-slick-index="' + currentSlide + '"').addClass('active');
});

$(function () {
  $('.main_fst .chrList ul .character').click(function (e) {
    var index = $('.main_fst .chrList ul .character').index(this);

    $('.main_fst').css('display', 'none');
    $('.main_snd').css('display', 'block');

    $('.main_snd .characterList ul .character').removeClass('active');
    $('.main_snd .characterList ul .character[data-slick-index="' + index + '"').addClass('active');
    $('.main_snd .characterList .characterBox').slick('slickGoTo', index);

    e.preventDefault();
    return false;
  });

  $('.main_snd .backBtn a').click(function (e) {
    $('.main_snd').css('display', 'none');
    $('.main_fst').css('display', 'flex');

    e.preventDefault();
    return false;
  });

  $('.main_snd .characterList ul .character').click(function (e) {

    let active = $(this).hasClass('active');

    if (!active) {
      $('.main_snd .characterList ul .character').removeClass('active');
      $(this).addClass('active');

      var index = $(this).attr('data-slick-index');
      $('.main_snd .characterList .characterBox').slick('slickGoTo', index);
    }

    e.preventDefault();
    return false;
  });
});