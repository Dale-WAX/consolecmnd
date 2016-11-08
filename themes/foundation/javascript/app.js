$(document).foundation();


// LANGUAGE ID

var theLanguage = $('html').attr('lang');

if (theLanguage == 'ja-JP') {
	$('body').addClass('jp');
} else {
	$('body').addClass('en');
}


// NAV

function NavDrop() {
    document.getElementById("myDropdown").classList.toggle("show");
}


// Close the dropdown menu if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }

}


// PAGE ID

if ($('body').hasClass('ArticlePage')) {
	$('#container').addClass('about-palette');
};


 $(document).scroll(function () {

    // ADD and REMOVE BG SHAPES WHEN THE FOOTER IS IN TOWN
    var winScrPos = $(window).scrollTop(),
        winHeight = $(window).height();

    $('#container').each(function () {
        var itemHeight = $(this).height(),
            itemTop = $(this).offset().top,
            itemBot = itemTop + itemHeight;

        if (winScrPos + winHeight > itemBot + itemTop) {
            $('#shapes').removeClass('visible');
        } else if (winScrPos + winHeight < itemBot + itemTop) {
            $('#shapes').addClass('visible');
        }
        
    });


    // STOP MOBILE BUTTON AT BOTTOM OF MAIN PANEL
    $('.panel').each(function () {
        var itemHeight = $(this).height(),
            itemTop = $(this).offset().top,
            itemBot = itemTop + itemHeight;

        if (winScrPos + winHeight > itemBot + itemTop) {
            $('.dropbtn.bottom').addClass('stick').css({'top': itemBot});
        } else if (winScrPos + winHeight < itemBot + itemTop) {
            $('.dropbtn.bottom').removeClass('stick').css({'top': 'inherit'});
        }
        // console.log(winScrPos, winHeight, itemBot, itemTop, itemHeight);
    });

});


$(document).ready(function() {

    // HAMBURGER ANIMATION
    $('.hamburger, .hamburger-inner:before').click(function() {
        if ($('.hamburger').hasClass('is-active')) {
            $('.hamburger').removeClass('is-active');
        } else {
            $('.hamburger').addClass('is-active');
        }
    });

});


// BG SVG ANIMATIONS

window.onload = function () {
  var svgMorpheus = new SVGMorpheus('.icon'),
      selEasing   = document.getElementById('selEasing'),
      selDuration = document.getElementById('selDuration'),
      selRotation = document.getElementById('selRotation'),
      icons={        
        'C':'C',
        'M':'M',
        'N':'N',
        'D':'D'
      },
      easings={
        'quad-in-out': 'Quad In/Out'        
      },
      durations=[800],
      rotations={
        'none': 'None'
      };

  var key, i, len;

  for(key in icons) {
    selIcon.options[selIcon.options.length]=new Option(icons[key], key);
  }

  for(key in easings) {
    selEasing.options[selEasing.options.length]=new Option(easings[key], key);
  }

  for(i=0, len=durations.length;i<len;i++) {
    selDuration.options[selDuration.options.length]=new Option(durations[i], durations[i]);
  }

  for(key in rotations) {
    selRotation.options[selRotation.options.length]=new Option(rotations[key], key);
  }

  selIcon.selectedIndex=selIcon.options.length-1;
  selEasing.selectedIndex=0;
  selDuration.selectedIndex=0;
  selRotation.selectedIndex=0;

  function getSelValue(sel) {
    return sel.options[sel.selectedIndex].value;
  }

  var timeoutInstance, manualChange=false;
  function onIconChange() {
    clearTimeout(timeoutInstance);
    var valIcon=getSelValue(selIcon),
        valEasing=getSelValue(selEasing),
        valDuration=getSelValue(selDuration),
        valRotation=getSelValue(selRotation);
    svgMorpheus.to(valIcon, {duration: valDuration, easing: valEasing, rotation: valRotation},!manualChange?launchTimer:null);
  }
  function timerTick() {
    var selIndex=selIcon.selectedIndex;
    while(selIndex===selIcon.selectedIndex) {
      selIndex=Math.round(Math.random()*(selIcon.options.length-1));
    }
    selIcon.selectedIndex=selIndex;
    onIconChange();
  }
  function launchTimer() {
    timeoutInstance=setTimeout(timerTick, 8000);
  }
  selIcon.addEventListener('change', onIconChange);
  selIcon.addEventListener('click',function(){
	clearTimeout(timeoutInstance);
	manualChange=false;
  });

  launchTimer();
};