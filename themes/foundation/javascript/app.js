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

// $("#somebutton").click(function () {
//   $("#container").append('<div class="module_holder"><div class="module_item"><img src="images/i-5.png" alt="Sweep Stakes"><br>sendSMS</div></div>');
// });

// function menuAngle() {
//     var toggleShow = document.getElementById("myDropdown");

//     $('toggleShow').click(function() {
//       'toggleShow'.classList.toggle("show");
//     })

// }

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


// ADD and REMOVE BG SHAPES WHEN THE FOOTER IS IN TOWN

 $(document).scroll(function () {
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
        // console.log(winScrPos, winHeight, itemHeight, itemTop, itemBot);
    });
});
 

// ANIMATIONS

$(document).ready(

	function(){
		setInterval(function() {

			// var rand = Math.floor(Math.random() * 1) + 1,
			// 	rand2 = Math.floor(Math.random() * 2) + 1,
			// 	changedShapeID = document.getElementById('shape-'+rand),
			// 	changedShapeID2 = document.getElementById('shape-'+rand2),
			// 	// changedShapeID = document.querySelector('#shape-1');
			// 	changedShapePath1 = "M271.994 187.905c-31.102 4.764-61.024 19.098-85.019 43.009-24.391 24.307-38.907 54.773-43.538 86.411-6.775 46.284 7.603 95.075 43.16 130.757 25.168 25.255 56.938 39.918 89.775 43.99L447.82 321.217c-3.956-32.85-18.51-64.672-49.07-95.338-30.561-30.667-79.992-45.138-126.756-37.974zM927.08 774.188l-230.256-1.435-149.419-171.95 1.998-348.773L700.295 86.24l230.147 1.433 147.353 159.977-1.67 363.282z";
			// 	changedShapePath2 = "M455.258 118.75L351.079 64.945 74.591 589.805 470.97 797.773l86.826-169.675-.175-455.324zm433.185 272.663L777.36 347.812 759.178 229.5l93.768-74.906 111.472 43.445 17.977 118.565z";
			// 	// changedShapeID.className += " visible";
			// 	// $(changedShapeID).attr('class', 'visible');


			// TweenMax.to(changedShapeID, .5, {
			// 	attr: {d: changedShapePath2}
			// });
			// console.log(changedShapeID);


// 			$('#primitive_animation_desktop').attr('class', 'animation-desktop-'+rand);
// 			$(svgPick).attr('x','50');
// 			// $('#primitive_animation_desktop svg').class('shape-'+rand).attr('x','0');
// 			// $('#primitive_animation_desktop svg').hasClass('shape-1').attr('x','50');
// 			// $('#primitive_animation_desktop svg').attr('x', '-1200');
			
		},2000);
	}
);

window.onload = function () {
  var svgMorpheus = new SVGMorpheus('.icon'),
      selEasing   = document.getElementById('selEasing'),
      selDuration = document.getElementById('selDuration'),
      selRotation = document.getElementById('selRotation'),
      icons={        
        'cookieStop':'CookieStop',
        'cookieTallStop':'CookieTallStop',
        'coffinPill':'CoffinPill'
      },
      easings={
        'circ-in': 'Circ In','circ-out': 'Circ Out','circ-in-out': 'Circ In/Out',
        'cubic-in': 'Cubic In', 'cubic-out': 'Cubic Out', 'cubic-in-out': 'Cubic In/Out',
        'elastic-in': 'Elastic In', 'elastic-out': 'Elastic Out', 'elastic-in-out': 'Elastic In/Out',
        'expo-in': 'Expo In', 'expo-out': 'Expo Out', 'expo-in-out': 'Expo In/Out',
        'linear': 'Linear',
        'quad-in': 'Quad In', 'quad-out': 'Quad Out', 'quad-in-out': 'Quad In/Out',
        'quart-in': 'Quart In', 'quart-out': 'Quart Out', 'quart-in-out': 'Quart In/Out',
        'quint-in': 'Quint In', 'quint-out': 'Quint Out', 'quint-in-out': 'Quint In/Out',
        'sine-in': 'Sine In','sine-out': 'Sine Out','sine-in-out': 'Sine In/Out'
      },
      durations=[250, 500, 750, 1000, 5000],
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
  selEasing.selectedIndex=15;
  selDuration.selectedIndex=2;
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
    timeoutInstance=setTimeout(timerTick, 2000);
  }
  selIcon.addEventListener('change', onIconChange);
  selIcon.addEventListener('click',function(){
	clearTimeout(timeoutInstance);
	manualChange=false;
  });

  launchTimer();
};