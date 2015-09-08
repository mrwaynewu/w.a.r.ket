jQuery(document).ready(function($) {
    var contentSections = $('.cd-section'),
        navigationItems = $('#cd-vertical-nav a');

    var numItems = $('.vertical-nav-span-font').length;

    var isSelectArray = new Array;

    isSelectArrayInitializer();

    function isSelectArrayInitializer() {
        for (var count = 0; count <= numItems; count++) {
            isSelectArray[count] = false;
        }
    }


    updateFrontEndNavigation();
    updateAdminNavigation();


    $(window).on('mousewheel', function() {
        updateFrontEndNavigation();
    });
    $(window).on('scroll', function() {
        updateAdminNavigation();
    });

    //smooth scroll to the section

    navigationItems.on('click', function(event) {
        event.preventDefault();
        runScroll($(this.hash));
        var id = $(this).attr('id');
        var numItems = $('.vertical-nav-span-font').length;
        for (var i = 0; i <= numItems; i++) {//alert(2);
            if (i != id) {
                removeSelect(i);
            }
        }

        isSelectArray[id] = true;


    });
    //smooth scroll to second section
    $('.cd-scroll-down').on('click', function(event) {
        event.preventDefault();
        runScroll($(this.hash));
    });

    navigationItems.on('mouseover', function(event) {
        var id = $(this).attr('id');
        isSelectArrayInitializer();

		$('#vertical-nav-span-number-' + id).css('display', 'none');
		$('#vertical-nav-span-font-' + id).css('display', 'block');
		$('#vertical-nav-span-font-' + id).css('color', '#fff');
		$('#vertical-nav-span-font-' + id).css('background-color', '#FF5400');

    });
    navigationItems.on('mouseout', function(event) {
        var id = $(this).attr('id');
        if (isSelectArray[id] === true) {
            $('#vertical-nav-span-font-' + id).addClass('vertical-nav-select');
        }
        if ($('#vertical-nav-span-font-' + id).hasClass('vertical-nav-select') === false) {
            $('#vertical-nav-span-font-' + id).css('display', 'none');
            $('#vertical-nav-span-number-' + id).css('display', 'block');		
        }
		else{
			$('#vertical-nav-span-font-' + id).css('color', '#c00');
			$('#vertical-nav-span-font-' + id).css('background-color', '#fff');
		}
    });

    //open-close navigation on touch devices
    $('.touch .cd-nav-trigger').on('click', function() {
        $('.touch #cd-vertical-nav').toggleClass('open');

    });
    //close navigation on touch devices when selectin an elemnt from the list
    $('.touch #cd-vertical-nav a').on('click', function() {
        $('.touch #cd-vertical-nav').removeClass('open');
    });

    function updateAdminNavigation() {
        contentSections.each(function() {
            $this = $(this);
            var activeSection = $('#cd-vertical-nav a[href="#' + $this.attr('id') + '"]').data('number') - 1;
            var num = $(this).attr('id').replace("section", "");
            if (($this.offset().top - $(window).height() / 3 < $(window).scrollTop()) && ($this.offset().top + $this.height() - $(window).height() / 3 > $(window).scrollTop())) {
                navigationItems.eq(activeSection).addClass('is-selected');
            } else {
                navigationItems.eq(activeSection).removeClass('is-selected');
            }
        });
    }

    function updateFrontEndNavigation() {
        contentSections.each(function() {
            $this = $(this);
            var num = $(this).attr('id').replace("section", "");
            if (($this.offset().top - $(window).height() / 3 < $(window).scrollTop()) && ($this.offset().top + $this.height() - $(window).height() / 3 > $(window).scrollTop())) {
                if ($('#vertical-nav-span-font-' + num)) {
                    addSelect(num);
                }
            } else {
                if ($('#vertical-nav-span-font-' + num)) {
                    removeSelect(num);
                }
            }
        });
    }

    function addSelect(id) {
        $('#vertical-nav-span-font-' + id).addClass('vertical-nav-select');
        $('#vertical-nav-span-number-' + id).css('display', 'none');
        $('#vertical-nav-span-font-' + id).css('display', 'block');
    }

    function removeSelect(id) {
        $('#vertical-nav-span-font-' + id).removeClass('vertical-nav-select');
        $('#vertical-nav-span-number-' + id).css('display', 'block');
        $('#vertical-nav-span-font-' + id).css('display', 'none');
    }


    function scrollTop() {
        if (window.pageYOffset) {
            return window.pageYOffset;
        } else if (document.body.scrollTop) {
            return document.body.scrollTop;
        } else {
            return document.documentElement.scrollTop;
        };
    }


    function runScroll(target) {
        scrollTo(document.body, target.offset().top - 20, 300);
    }


    function scrollTo(element, to, duration) {
        if (duration <= 0) return;
        var difference = to - $(window).scrollTop();
        var perTick = difference / duration * 10;

        setTimeout(function() {
            window.scroll(0, $(window).scrollTop() + perTick);
            if (element.scrollTop == to) return;
            scrollTo(element, to, duration - 10);
        }, 10);
    }


}); 