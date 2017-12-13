$(document).ready(function () {

	//navigation
	headerChecker();
	$('.main-nav ul').find('li').each(function() {
		if( $(this).children('ul').length > 0) {
			$(this).addClass('has-children');
		};
	});
	$('.header .trigger-nav').click(function() {
		$(this).toggleClass('open');
		$(this).next('.main-nav').slideToggle();
	});

	initNavigation();
	//search
	$('.header .main-nav .search .trigger-search').click(function() {
		$(this).toggleClass('open');
		$(this).next().stop().fadeToggle();
	});

	calculateContentHeight();
	accordion();
	tabs();
	mobileNav();
	tableOverflowX();
	mobileTabs();

	//sidebar nav - search
	$('.side-toolbar .search .trigger-search').click(function() {
		$('.side-toolbar .menu .trigger-menu').removeClass('open');
		$('.side-toolbar .menu .menu-inner').animate({width: "0"}, 600);
		if(!$(this).hasClass('open')) {
			$(this).addClass('open');
			$(this).next('.search-wrap').animate({width: "260px"}, 600);
		} else {
			$(this).removeClass('open');
			$(this).next('.search-wrap').animate({width: "0"}, 600);
		}
	});

	//sidebar nav - menu
	$('.side-toolbar .menu .trigger-menu').click(function() {
		$('.side-toolbar .search .trigger-search').removeClass('open');
		$('.side-toolbar .search .search-wrap').animate({width: "0"}, 600);
		if(!$(this).hasClass('open')) {
			$(this).addClass('open');
			$(this).next('.menu-inner').animate({width: "270px"}, 600);
		} else {
			$(this).removeClass('open');
			$(this).next('.menu-inner').animate({width: "0"}, 600);
		}
	});

	//magnificPopup image gallery
	$('.gallery.library').magnificPopup({
		delegate: 'a',
		type: 'image',
		tLoading: 'Loading image #%curr%...',
		mainClass: 'mfp-img-mobile',
		gallery: {
			enabled: true,
			navigateByImgClick: true,
			// preload: [0,1] // Will preload 0 - before current, and 1 after the current image
		}
	});

	//magnific popup people page
	$('.popup-with-close').magnificPopup({
		type: 'inline',
		preloader: false,
		focus: '#name',

		// When elemened is focused, some mobile browsers in some cases zoom in
		// It looks not nice, so we disable it:
		callbacks: {
			beforeOpen: function() {
				if($(window).width() < 700) {
					this.st.focus = false;
				} else {
					this.st.focus = '#name';
				}
			}
		}
	});


});

$(window).load(function () {
	equalHeight($('.spotlights > div .item'));
	equalHeight($('.people-list .people-item'));
    equalHeight($('.about .item'));
	calculateContentHeight();
});

$(window).resize(function(){
	calculateContentHeight();
	equalHeight($('.spotlights > div .item'));
	equalHeight($('.people-list .people-item'));
    equalHeight($('.about .item'));
	headerChecker();
	initNavigation();
});


function calculateContentHeight() {

	var footerH = $('footer').outerHeight(),
        contentH = $('.content').outerHeight(),
        pageContentH = $('body').height() - footerH;

    if (pageContentH >= contentH) {
        $('.content').css({ 'min-height': pageContentH });
    } else {
        $('.content').css({ 'min-height': 10 });
    }

};

//equalHeight
function equalHeight(arrayItems, count) {
    if (arrayItems != undefined && arrayItems.length > 0) {
        arrayItems.height('');

        var maxH = 0;

        if (count) {
            var arrays = [];
            while (arrayItems.length > 0)
                arrays.push(arrayItems.splice(0, count));

            for (var i = 0; i < arrays.length; i++) {
                var data = arrays[i];
                maxH = 0;
                for (var j = 0; j < data.length; j++) {
                    var currentH = $(data[j]).outerHeight(true);
                    if (currentH > maxH) {
                        maxH = currentH;
                    }
                };

                for (var j = 0; j < data.length; j++) {
                    $(data[j]).css('height', maxH);
                }
            };
        } else {
            arrayItems.each(function () {
                var currentH = $(this).outerHeight(true);
                if (currentH > maxH) {
                    maxH = currentH;
                }
            });

            arrayItems.css('height', maxH);
        }
    }
}


function headerChecker() {
	if($(window).width() > 960) {
		$('.header').removeClass('device');
		$('.header').addClass('desktop');
	} else {
		$('.header').removeClass('desktop');
		$('.header').addClass('device');
	}
}

function initNavigation(){
	var $desktopNav = $('.header.desktop .main-nav ul .has-children'),
		$deviceNav = $('.header.device .main-nav ul .has-children').find('i');

	// $('.header.desktop .main-nav ul .has-children').unbind('mouseenter mouseleave');
	$('.header.device .main-nav ul .has-children').find('i').unbind('click');
	//desktop nav

	//
	// $('.header.desktop .main-nav ul .has-children').mouseenter(function () {
	// 	$('.main-nav ul li a').removeClass('open')
	// 	$('.main-nav ul li ul').stop().slideUp();
	// 	$(this).find('> a').addClass('open');
	// 	$(this).find('> ul').stop().slideDown();
	// }).mouseleave(function() {
	// 	$(this).find('> a').removeClass('open');
	// 	$(this).find('> ul').stop().slideUp();
	// });


	//device nav
	$('.header.device .main-nav ul .has-children').find('i').click(function () {
		if(!$(this).parent().hasClass('open')) {
			$('.main-nav ul li').removeClass('open')
			$('.main-nav > ul > li > ul').slideUp();
			$(this).parent().addClass('open');
			$(this).next('ul').slideDown();
		} else {
			$(this).parent().removeClass('open');
			$(this).next('ul').slideUp();
		}
	});

}

function accordion () {
	$('.accordion-item-wrapper:first-child .accordion-body').show();
	$('.accordion-item-wrapper:first-child >  p').addClass('open');

	$('.accordion-item-wrapper > .accordion-head').click(function (e) {

		var $this = $(this);

		if ($this.hasClass('open')) {
			$this.removeClass('open');
			$this.next().slideUp(350);
		} else {
			$this.parent().parent().find('.accordion-item-wrapper > .open').removeClass('open');
			$this.parent().parent().find('.accordion-item-wrapper .accordion-body').slideUp(350);
			$this.addClass('open');
			$this.next().slideDown(350);
		}

	});
}

function tabs () {
	$('.tab:first-child').show();
	$('[data-tab-link]').on('click', function () {
		$(this).addClass('active').siblings('[data-tab-link]').removeClass('active');
		$(this).parent().next().find('[data-tab-content=' + $(this).data('tab-link') + ']').fadeIn(400).siblings('[data-tab-content]').hide();
	});
}

function mobileNav () {
	$('.trigger-nav').on('click', function(){
	   $(this).next('.main-nav').toggleClass('open');
	});
}

function tableOverflowX() {
	var element = $('.rte-content table');
	element.wrap('<div></div');
	element.parent().css({
		'overflowX': 'auto'
	});
}

function mobileTabs(){
    if ($(window).width() < 768) {

        var li = $('<li class="more-btn"></li>');

        li.insertAfter($(".tabs .tab-links li:nth-of-type(3)"));

        $('.tabs li:hidden').addClass('mobile-tabs');

        $('.tabs .more-btn').click(function () {
            $(this).toggleClass('opened');
            $('.tabs .mobile-tabs').slideToggle();
        });

    }
}
