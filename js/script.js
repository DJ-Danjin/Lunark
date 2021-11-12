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
  $(function () {

    $("#sortable").sortable({
      cursor: "move"
    });

    $("#sortable").disableSelection();

  });

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

  let duration = 100;

  $('.main_fst .chrList .character')
    .on('mouseover', function () {
      $(this).find('.over').stop(true).animate({
        'height': '100%'
      }, duration);
      $(this).find('.over>').stop(true).animate({
        'opacity': 1
      }, duration);
    })
    .on('mouseout', function () {
      $(this).find('.over').stop(true).animate({
        'height': 0
      }, duration);
      $(this).find('.over>').stop(true).animate({
        'opacity': 0
      }, duration);
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