"use strict";
(function () {

  // Global variables
  var userAgent = navigator.userAgent.toLowerCase(),
    initialDate = new Date(),

    $document = $(document),
    $window = $(window),
    $html = $("html"),
    $body = $("body"),

    isDesktop = $html.hasClass("desktop"),
    isIE = userAgent.indexOf("msie") !== -1 ? parseInt(userAgent.split("msie")[1], 10) : userAgent.indexOf("trident") !== -1 ? 11 : userAgent.indexOf("edge") !== -1 ? 12 : false,
    isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent),
    isSafari = !!navigator.userAgent.match(/Version\/[\d\.]+.*Safari/),
    windowReady = false,
    isNoviBuilder = false,

    plugins = {
      bootstrapTooltip: $("[data-toggle='tooltip']"),
      bootstrapModalDialog: $('.modal'),
      pageDivided: $("#page-divided"),
      rdNavbar: $(".rd-navbar"),
      materialParallax: $(".parallax-container"),
      rdGoogleMaps: $(".rd-google-map"),
      rdMailForm: $(".rd-mailform"),
      rdInputLabel: $(".form-label"),
      regula: $("[data-constraints]"),
      owl: $(".owl-carousel"),
      swiper: $(".swiper-slider"),
      statefulButton: $('.btn-stateful'),
      isotope: $(".isotope"),
      popover: $('[data-toggle="popover"]'),
      viewAnimate: $('.view-animate'),
      radio: $("input[type='radio']"),
      checkbox: $("input[type='checkbox']"),
      customToggle: $("[data-custom-toggle]"),
      facebookWidget: $('#fb-root'),
      counter: $(".counter"),
      progressLinear: $(".progress-linear"),
      circleProgress: $(".progress-bar-circle"),
      dateCountdown: $('.DateCountdown'),
      countDown: $(".countdown"),
      preloader: $("#preloader"),
      captcha: $('.recaptcha'),
      lightGallery: $("[data-lightgallery='group']"),
      lightGalleryItem: $("[data-lightgallery='item']"),
      lightDynamicGalleryItem: $("[data-lightgallery='dynamic']"),
      mailchimp: $('.mailchimp-mailform'),
      campaignMonitor: $('.campaign-mailform'),
      bootstrapDateTimePicker: $("[data-time-picker]"),
      slick: $('.slick-slider'),
      customWaypoints: $('[data-custom-scroll-to]'),
      circleJPlayer: $('.jp-player-circle-init'),
      jPlayer: $('.jp-jplayer'),
      jPlayerInit: $('.jp-player-init'),
      jPlayerVideo: $('.jp-video-init'),
      calendar: $(".rd-calendar"),
      wow: $(".wow"),
      scroller: $(".scroll-wrap"),
      copyrightYear: $(".copyright-year")
    };

  // Initialize scripts that require a loaded page
  $window.on('load', function () {
    // Page loader & Page transition
    if (plugins.preloader.length && !isNoviBuilder) {
      pageTransition({
        target: document.querySelector('.page'),
        delay: 0,
        duration: 100,
        classIn: 'fadeIn',
        classOut: 'fadeOut',
        classActive: 'animated',
        conditions: function (event, link) {
          return !/(\#|callto:|tel:|mailto:|:\/\/)/.test(link) 
              && !event.currentTarget.hasAttribute('data-lightgallery') 
              && link !== 'javascript:void(0);'
              && !event.currentTarget.classList.contains('rdc-prev')
              && !event.currentTarget.classList.contains('rdc-next');
        },
        onTransitionStart: function (options) {
          setTimeout(function () {
            plugins.preloader.removeClass('loaded');
          }, options.duration * .15);
        },
        onReady: function () {
          plugins.preloader.addClass('loaded');
          windowReady = true;
        }
      });
    }
  });

  // Initialize scripts that require a finished document
  $(function () {
    isNoviBuilder = window.xMode;

    /**
     * @desc Calculate the height of swiper slider basing on data attr
     * @param {object} object - slider jQuery object
     * @param {string} attr - attribute name
     * @return {number} slider height
     */
    function getSwiperHeight(object, attr) {
      var val = object.attr("data-" + attr),
        dim;

      if (!val) {
        return undefined;
      }

      dim = val.match(/(px)|(%)|(vh)|(vw)$/i);

      if (dim.length) {
        switch (dim[0]) {
          case "px":
            return parseFloat(val);
          case "vh":
            return $window.height() * (parseFloat(val) / 100);
          case "vw":
            return $window.width() * (parseFloat(val) / 100);
          case "%":
            return object.width() * (parseFloat(val) / 100);
        }
      } else {
        return undefined;
      }
    }

    /**
     * @desc Toggle swiper videos on active slides
     * @param {object} swiper - swiper slider
     */
    function toggleSwiperInnerVideos(swiper) {
      var prevSlide = $(swiper.slides[swiper.previousIndex]),
        nextSlide = $(swiper.slides[swiper.activeIndex]),
        videos,
        videoItems = prevSlide.find("video");

      for (var i = 0; i < videoItems.length; i++) {
        videoItems[i].pause();
      }

      videos = nextSlide.find("video");
      if (videos.length) {
        videos.get(0).play();
      }
    }

    /**
     * @desc Toggle swiper animations on active slides
     * @param {object} swiper - swiper slider
     */
    function toggleSwiperCaptionAnimation(swiper) {
      var prevSlide = $(swiper.container).find("[data-caption-animate]"),
        nextSlide = $(swiper.slides[swiper.activeIndex]).find("[data-caption-animate]"),
        delay,
        duration,
        nextSlideItem,
        prevSlideItem;

      for (var i = 0; i < prevSlide.length; i++) {
        prevSlideItem = $(prevSlide[i]);

        prevSlideItem.removeClass("animated")
          .removeClass(prevSlideItem.attr("data-caption-animate"))
          .addClass("not-animated");
      }


      var tempFunction = function (nextSlideItem, duration) {
        return function () {
          nextSlideItem
            .removeClass("not-animated")
            .addClass(nextSlideItem.attr("data-caption-animate"))
            .addClass("animated");
          if (duration) {
            nextSlideItem.css('animation-duration', duration + 'ms');
          }
        };
      };

      for (var i = 0; i < nextSlide.length; i++) {
        nextSlideItem = $(nextSlide[i]);
        delay = nextSlideItem.attr("data-caption-delay");
        duration = nextSlideItem.attr('data-caption-duration');
        if (!isNoviBuilder) {
          if (delay) {
            setTimeout(tempFunction(nextSlideItem, duration), parseInt(delay, 10));
          } else {
            setTimeout(tempFunction(nextSlideItem, duration), 0);
          }

        } else {
          nextSlideItem.removeClass("not-animated")
        }
      }
    }

    /**
     * initCustomScrollTo
     * @description  init smooth anchor animations
     */
    function initCustomScrollTo(obj) {
      var $this = $(obj);
      if (!isNoviBuilder) {
        $this.on('click', function (e) {
          e.preventDefault();
          $("body, html").stop().animate({
            scrollTop: $($(this).attr('data-custom-scroll-to')).offset().top
          }, 1000, function () {
            $window.trigger("resize");
          });
        });
      }
    }

    /**
     * @desc Initialize owl carousel plugin
     * @param {object} c - carousel jQuery object
     */
    function initOwlCarousel(c) {
      var aliaces = ["-", "-sm-", "-md-", "-lg-", "-xl-", "-xxl-"],
        values = [0, 576, 768, 992, 1200, 1600],
        responsive = {};

      for (var j = 0; j < values.length; j++) {
        responsive[values[j]] = {};
        for (var k = j; k >= -1; k--) {
          if (!responsive[values[j]]["items"] && c.attr("data" + aliaces[k] + "items")) {
            responsive[values[j]]["items"] = k < 0 ? 1 : parseInt(c.attr("data" + aliaces[k] + "items"), 10);
          }
          if (!responsive[values[j]]["stagePadding"] && responsive[values[j]]["stagePadding"] !== 0 && c.attr("data" + aliaces[k] + "stage-padding")) {
            responsive[values[j]]["stagePadding"] = k < 0 ? 0 : parseInt(c.attr("data" + aliaces[k] + "stage-padding"), 10);
          }
          if (!responsive[values[j]]["margin"] && responsive[values[j]]["margin"] !== 0 && c.attr("data" + aliaces[k] + "margin")) {
            responsive[values[j]]["margin"] = k < 0 ? 30 : parseInt(c.attr("data" + aliaces[k] + "margin"), 10);
          }
        }
      }

      // Enable custom pagination
      if (c.attr('data-dots-custom')) {
        c.on("initialized.owl.carousel", function (event) {
          var carousel = $(event.currentTarget),
            customPag = $(carousel.attr("data-dots-custom")),
            active = 0;

          if (carousel.attr('data-active')) {
            active = parseInt(carousel.attr('data-active'), 10);
          }

          carousel.trigger('to.owl.carousel', [active, 300, true]);
          customPag.find("[data-owl-item='" + active + "']").addClass("active");

          customPag.find("[data-owl-item]").on('click', function (e) {
            e.preventDefault();
            carousel.trigger('to.owl.carousel', [parseInt(this.getAttribute("data-owl-item"), 10), 300, true]);
          });

          carousel.on("translate.owl.carousel", function (event) {
            customPag.find(".active").removeClass("active");
            customPag.find("[data-owl-item='" + event.item.index + "']").addClass("active")
          });
        });
      }

      if (c.attr('data-nav-custom')) {
        c.on("initialized.owl.carousel", function (event) {
          var carousel = $(event.currentTarget),
            customNav = $(carousel.attr("data-nav-custom"));

          // Custom Navigation Events
          customNav.find(".owl-arrow-next").click(function (e) {
            e.preventDefault();
            carousel.trigger('next.owl.carousel');
          });
          customNav.find(".owl-arrow-prev").click(function (e) {
            e.preventDefault();
            carousel.trigger('prev.owl.carousel');
          });
        });
      }

      c.on("initialized.owl.carousel", function () {
        initLightGalleryItem(c.find('[data-lightgallery="item"]'), 'lightGallery-in-carousel');
      });

      c.owlCarousel({
        autoplay: isNoviBuilder ? false : c.attr("data-autoplay") === "true" && isDesktop,
        // loop: true,
        items: 1,
        center: c.attr("data-center") === "true",
        dotsContainer: c.attr("data-pagination-class") || false,
        navContainer: c.attr("data-navigation-class") || false,
        mouseDrag: isNoviBuilder ? false : c.attr("data-mouse-drag") !== "false",
        nav: c.attr("data-nav") === "true",
        dots: c.attr("data-dots") === "true",
        dotsEach: c.attr("data-dots-each") ? parseInt(c.attr("data-dots-each"), 10) : false,
        animateIn: c.attr('data-animation-in') ? c.attr('data-animation-in') : false,
        animateOut: c.attr('data-animation-out') ? c.attr('data-animation-out') : false,
        responsive: responsive,
        navText: c.attr("data-nav-text") ? $.parseJSON(c.attr("data-nav-text")) : [],
        navClass: c.attr("data-nav-class") ? $.parseJSON(c.attr("data-nav-class")) : ['owl-prev', 'owl-next']
      });
    }

    /**
     * @desc Check the element whas been scrolled into the view
     * @param {object} elem - jQuery object
     * @return {boolean}
     */
    function isScrolledIntoView(elem) {
      if (!isNoviBuilder) {
        return elem.offset().top + elem.outerHeight() >= $window.scrollTop() && elem.offset().top <= $window.scrollTop() + $window.height();
      }
      else {
        return true;
      }
    }

    /**
     * @desc Calls a function when element has been scrolled into the view
     * @param {object} element - jQuery object
     * @param {function} func - callback function
     */
    function lazyInit(element, func) {
      $document.on('scroll', function () {
        if ((!element.hasClass('lazy-loaded') && (isScrolledIntoView(element)))) {
          func.call();
          element.addClass('lazy-loaded');
        }
      }).trigger("scroll");
    }

    /**
     * @desc Attach form validation to elements
     * @param {object} elements - jQuery object
     */
    function attachFormValidator(elements) {
      // Custom validator - phone number
      regula.custom({
        name: 'PhoneNumber',
        defaultMessage: 'Invalid phone number format',
        validator: function () {
          if (this.value === '') return true;
          else return /^(\+\d)?[0-9\-\(\) ]{5,}$/i.test(this.value);
        }
      });

      for (var i = 0; i < elements.length; i++) {
        var o = $(elements[i]), v;
        o.addClass("form-control-has-validation").after("<span class='form-validation'></span>");
        v = o.parent().find(".form-validation");
        if (v.is(":last-child")) o.addClass("form-control-last-child");
      }

      elements.on('input change propertychange blur', function (e) {
        var $this = $(this), results;

        if (e.type !== "blur") if (!$this.parent().hasClass("has-error")) return;
        if ($this.parents('.rd-mailform').hasClass('success')) return;

        if (( results = $this.regula('validate') ).length) {
          for (i = 0; i < results.length; i++) {
            $this.siblings(".form-validation").text(results[i].message).parent().addClass("has-error");
          }
        } else {
          $this.siblings(".form-validation").text("").parent().removeClass("has-error")
        }
      }).regula('bind');

      var regularConstraintsMessages = [
        {
          type: regula.Constraint.Required,
          newMessage: "The text field is required."
        },
        {
          type: regula.Constraint.Email,
          newMessage: "The email is not a valid email."
        },
        {
          type: regula.Constraint.Numeric,
          newMessage: "Only numbers are required"
        },
        {
          type: regula.Constraint.Selected,
          newMessage: "Please choose an option."
        }
      ];


      for (var i = 0; i < regularConstraintsMessages.length; i++) {
        var regularConstraint = regularConstraintsMessages[i];

        regula.override({
          constraintType: regularConstraint.type,
          defaultMessage: regularConstraint.newMessage
        });
      }
    }

    /**
     * @desc Check if all elements pass validation
     * @param {object} elements - object of items for validation
     * @param {object} captcha - captcha object for validation
     * @return {boolean}
     */
    function isValidated(elements, captcha) {
      var results, errors = 0;

      if (elements.length) {
        for (var j = 0; j < elements.length; j++) {

          var $input = $(elements[j]);
          if ((results = $input.regula('validate')).length) {
            for (k = 0; k < results.length; k++) {
              errors++;
              $input.siblings(".form-validation").text(results[k].message).parent().addClass("has-error");
            }
          } else {
            $input.siblings(".form-validation").text("").parent().removeClass("has-error")
          }
        }

        if (captcha) {
          if (captcha.length) {
            return validateReCaptcha(captcha) && errors === 0
          }
        }

        return errors === 0;
      }
      return true;
    }

    /**
     * @desc Validate google reCaptcha
     * @param {object} captcha - captcha object for validation
     * @return {boolean}
     */
    function validateReCaptcha(captcha) {
      var captchaToken = captcha.find('.g-recaptcha-response').val();

      if (captchaToken.length === 0) {
        captcha
          .siblings('.form-validation')
          .html('Please, prove that you are not robot.')
          .addClass('active');
        captcha
          .closest('.form-wrap')
          .addClass('has-error');

        captcha.on('propertychange', function () {
          var $this = $(this),
            captchaToken = $this.find('.g-recaptcha-response').val();

          if (captchaToken.length > 0) {
            $this
              .closest('.form-wrap')
              .removeClass('has-error');
            $this
              .siblings('.form-validation')
              .removeClass('active')
              .html('');
            $this.off('propertychange');
          }
        });

        return false;
      }

      return true;
    }

    /**
     * @desc Initialize Google reCaptcha
     */
    window.onloadCaptchaCallback = function () {
      for (var i = 0; i < plugins.captcha.length; i++) {
        var $capthcaItem = $(plugins.captcha[i]);

        grecaptcha.render(
          $capthcaItem.attr('id'),
          {
            sitekey: $capthcaItem.attr('data-sitekey'),
            size: $capthcaItem.attr('data-size') ? $capthcaItem.attr('data-size') : 'normal',
            theme: $capthcaItem.attr('data-theme') ? $capthcaItem.attr('data-theme') : 'light',
            callback: function (e) {
              $('.recaptcha').trigger('propertychange');
            }
          }
        );
        $capthcaItem.after("<span class='form-validation'></span>");
      }
    };

    /**
     * @desc Initialize Bootstrap tooltip with required placement
     * @param {string} tooltipPlacement
     */
    function initBootstrapTooltip(tooltipPlacement) {
      plugins.bootstrapTooltip.tooltip('dispose');

      if (window.innerWidth < 576) {
        plugins.bootstrapTooltip.tooltip({placement: 'bottom'});
      } else {
        plugins.bootstrapTooltip.tooltip({placement: tooltipPlacement});
      }
    }

    /**
     * @desc Initialize the gallery with set of images
     * @param {object} itemsToInit - jQuery object
     * @param {string} addClass - additional gallery class
     */
    function initLightGallery(itemsToInit, addClass) {
      if (!isNoviBuilder) {
        $(itemsToInit).lightGallery({
          thumbnail: $(itemsToInit).attr("data-lg-thumbnail") !== "false",
          selector: "[data-lightgallery='item']",
          autoplay: $(itemsToInit).attr("data-lg-autoplay") === "true",
          pause: parseInt($(itemsToInit).attr("data-lg-autoplay-delay")) || 5000,
          addClass: addClass,
          mode: $(itemsToInit).attr("data-lg-animation") || "lg-slide",
          download: false,
          loop: $(itemsToInit).attr("data-lg-loop") !== "false"
        });
      }
    }

    /**
     * @desc Initialize the gallery with dynamic addition of images
     * @param {object} itemsToInit - jQuery object
     * @param {string} addClass - additional gallery class
     */
    function initDynamicLightGallery(itemsToInit, addClass) {
      if (!isNoviBuilder) {
        $(itemsToInit).on("click", function () {
          $(itemsToInit).lightGallery({
            thumbnail: $(itemsToInit).attr("data-lg-thumbnail") !== "false",
            selector: "[data-lightgallery='item']",
            autoplay: $(itemsToInit).attr("data-lg-autoplay") === "true",
            pause: parseInt($(itemsToInit).attr("data-lg-autoplay-delay")) || 5000,
            addClass: addClass,
            mode: $(itemsToInit).attr("data-lg-animation") || "lg-slide",
            loop: $(itemsToInit).attr("data-lg-loop") !== "false",
            dynamic: true,
            download: false,
            dynamicEl: JSON.parse($(itemsToInit).attr("data-lg-dynamic-elements")) || []
          });
        });
      }
    }

    /**
     * @desc Initialize the gallery with one image
     * @param {object} itemToInit - jQuery object
     * @param {string} addClass - additional gallery class
     */
    function initLightGalleryItem(itemToInit, addClass) {
      if (!isNoviBuilder) {
        $(itemToInit).lightGallery({
          selector: "this",
          addClass: addClass,
          counter: false,
          download: false,
          youtubePlayerParams: {
            modestbranding: 1,
            showinfo: 0,
            rel: 0,
            controls: 0
          },
          vimeoPlayerParams: {
            byline: 0,
            portrait: 0
          }
        });
      }
    }

    /**
     * jpFormatePlaylistObj
     * @description  format dynamic playlist object for jPlayer init
     */
    function jpFormatePlaylistObj(playlistHtml) {
      var playlistObj = [];

      // Format object with audio
      for (var i = 0; i < playlistHtml.length; i++) {
        var playlistItem = playlistHtml[i],
          itemData = $(playlistItem).data();
        playlistObj[i] = {};

        for (var key in itemData) {
          playlistObj[i][key.replace('jp', '').toLowerCase()] = itemData[key];
        }
      }

      return playlistObj;
    }

    /**
     * initJplayerBase
     * @description Base jPlayer init
     */
    function initJplayerBase(index, item, mediaObj) {
      var newPlaylist = new jPlayerPlaylist({
        jPlayer: item.getElementsByClassName("jp-jplayer")[0],
        cssSelectorAncestor: ".jp-audio-" + index // Need too bee a selector not HTMLElement or Jq object, so we make it unique
      }, mediaObj, {
        playlistOptions: {
          enableRemoveControls: false,
          autoPlay: (!isDesktop || isNoviBuilder) ? false : item.getAttribute('data-autoplay') == "true"
          // autoPlay: (isDesktop || isNoviBuilder) ? false : item.getAttribute('data-autoplay') == "true"
        },
        supplied: "ogv, m4v, oga, mp3",
        useStateClassSkin: true,
        volume: 0.7,
        loop: true,
        ready: function (e) {
          updateCurrentTrack(newPlaylist, item);
        },
        play: function (e) {
          updateCurrentTrack(newPlaylist, item);
        },
        ended: function (e) {
          updateCurrentTrack(newPlaylist, item);
        }
      });
      return newPlaylist;
    }

    function formatPlayListItemNumber(number) {
      return (number < 10) ? '0' + number : number;
    }

    function updateCurrentTrack(currentPlayList, item) {
      var fullInfo = item.getElementsByClassName('jp-full-info')[0],
        fullInfoString = formatPlayListItemNumber(currentPlayList.current + 1) + '. ' + currentPlayList.playlist[currentPlayList.current].artist + ' - ' + currentPlayList.playlist[currentPlayList.current].title;

      if (typeof(fullInfo) != 'undefined') {
        fullInfo.innerHTML = fullInfoString;
      }
    }

    function initRowEvents(events) {
      if (!events.length) {
        return false;
      }

      for (i = 0; i < events.length; i++) {
        var $event = $(events[i]);

        $event.on('click', i, function (event) {
          var $selectedEvent = $(this),
            hiddenEvents = $selectedEvent.find('.rdc-table_events'),
            ch = hiddenEvents.outerHeight(),
            animationDuration = 330,
            revealOffset = 0,
            eventRow,
            openedEvents = $(".rdc-calendar-event-panel");

          if ($selectedEvent.find('.rdc-table_prev').length || $selectedEvent.find('.rdc-table_next').length) {
            return;
          }

          if ($selectedEvent.hasClass("opened")) {
            eventRow = $('#calendarEvent' + event.data + ' .event-panel');
            eventRow.animate({height: "0"}, animationDuration);

            setTimeout(function () {
              eventRow.parent().remove();
            }, animationDuration);
          } else {
            if (openedEvents.length) {
              openedEvents.animate({height: "0"}, animationDuration);

              $('.rdc-table_has-events.opened').removeClass('opened');

              setTimeout(function () {
                openedEvents.remove();
              }, animationDuration);

              revealOffset = animationDuration * 1.2;
            }


            setTimeout(function () {
              $selectedEvent.parent().after("<div class='rdc-calendar-event-panel' id='calendarEvent" + event.data + "'><div class='event-panel'></div></div>");
              eventRow = hiddenEvents.clone().appendTo($('#calendarEvent' + event.data + ' .event-panel'));
              ch = eventRow.outerHeight();
              eventRow.parent().css("height", "0");
              eventRow.parent().animate({height: ch + "px"}, animationDuration);
            }, revealOffset);
          }

          setTimeout(function () {
            $selectedEvent.toggleClass("opened");
            $window.trigger('resize');
          }, revealOffset);
        });
      }
    }

    function initEventsCounter() {
      var $events = $('.rdc-table_has-events');

      for (var j = 0; j < $events.length; j++) {
        var $currentItem = $($events[j]),
          $eventsCount = $currentItem.find('.rdc-table_events-count');
        $eventsCount.html('<span class="rdc-table_events-count-inner">' + $currentItem.find('ul.rdc-inline-event-list > li').length + ' Available' + '</span>');
      }
    }

    // lightGallery
    if (plugins.lightGallery.length) {
      for (var i = 0; i < plugins.lightGallery.length; i++) {
        initLightGallery(plugins.lightGallery[i]);
      }
    }

    // lightGallery item
    if (plugins.lightGalleryItem.length) {
      // Filter carousel items
      var notCarouselItems = [];

      for (var z = 0; z < plugins.lightGalleryItem.length; z++) {
        if (!$(plugins.lightGalleryItem[z]).parents('.owl-carousel').length &&
          !$(plugins.lightGalleryItem[z]).parents('.swiper-slider').length &&
          !$(plugins.lightGalleryItem[z]).parents('.slick-slider').length) {
          notCarouselItems.push(plugins.lightGalleryItem[z]);
        }
      }

      plugins.lightGalleryItem = notCarouselItems;

      for (var i = 0; i < plugins.lightGalleryItem.length; i++) {
        initLightGalleryItem(plugins.lightGalleryItem[i]);
      }
    }

    // Dynamic lightGallery
    if (plugins.lightDynamicGalleryItem.length) {
      for (var i = 0; i < plugins.lightDynamicGalleryItem.length; i++) {
        initDynamicLightGallery(plugins.lightDynamicGalleryItem[i]);
      }
    }

    // Custom Page Divided
    if (plugins.pageDivided.length) {
      var pageDivided = $(plugins.pageDivided[0]),
        pageLeft = $('#page-divided-left'),
        pageRight = $('#page-divided-right');

      var currentClass = 'page-divided-default';

      pageDivided.addClass(currentClass);

      pageLeft.on('click', function () {
        if (pageDivided.hasClass('page-divided-fullwidth')) {
          pageDivided.removeClass(currentClass);
          currentClass = 'page-divided-default';
          pageDivided.addClass(currentClass);
          document.body.style.overflow = '';
          return;
        }

        if (pageDivided.hasClass('page-divided-default')) {
          pageDivided.removeClass(currentClass);
          currentClass = 'page-divided-none';
          pageDivided.addClass(currentClass);
          document.body.style.overflow = '';
        }
      });

      pageRight.on('click', function () {
        if (pageDivided.hasClass('page-divided-default')) {
          pageDivided.removeClass(currentClass);
          currentClass = 'page-divided-fullwidth';
          pageDivided.addClass(currentClass);
          document.body.style.overflow = 'hidden';
          return;
        }

        if (pageDivided.hasClass('page-divided-none')) {
          pageDivided.removeClass(currentClass);
          currentClass = 'page-divided-default';
          pageDivided.addClass(currentClass);
          document.body.style.overflow = '';
        }
      });

      $(window).on('resize orientationchange', function () {
        if (!$html.hasClass('mobile') && !$html.hasClass('tablet') && $document.width() >= 1200) {
          if (!$html.hasClass("layout-divided")) {
            $html.addClass("layout-divided")
          }
        } else {
          $html.removeClass("layout-divided")
        }
      }).trigger("resize");
    }

    // Google ReCaptcha
    if (plugins.captcha.length) {
      $.getScript("//www.google.com/recaptcha/api.js?onload=onloadCaptchaCallback&render=explicit&hl=en");
    }

    // Additional class on html if mac os
    if (navigator.platform.match(/(Mac)/i)) {
      $html.addClass("mac-os");
    }

    // Additional class on html if safari
    if (isSafari) $html.addClass("safari-browser");

    // Adds some loosing functionality to IE browsers (IE Polyfills)
    if (isIE) {
      if (isIE === 12) $html.addClass("ie-edge");
      if (isIE === 11) $html.addClass("ie-11");
      if (isIE < 10) $html.addClass("lt-ie-10");
      if (isIE < 11) $html.addClass("ie-10");
    }

    // Bootstrap Tooltips
    if (plugins.bootstrapTooltip.length) {
      var tooltipPlacement = plugins.bootstrapTooltip.attr('data-placement');
      initBootstrapTooltip(tooltipPlacement);

      $window.on('resize orientationchange', function () {
        initBootstrapTooltip(tooltipPlacement);
      })
    }

    // Stop vioeo in bootstrapModalDialog
    if (plugins.bootstrapModalDialog.length) {
      for (var i = 0; i < plugins.bootstrapModalDialog.length; i++) {
        var modalItem = $(plugins.bootstrapModalDialog[i]);

        modalItem.on('hidden.bs.modal', $.proxy(function () {
          var activeModal = $(this),
            rdVideoInside = activeModal.find('video'),
            youTubeVideoInside = activeModal.find('iframe');

          if (rdVideoInside.length) {
            rdVideoInside[0].pause();
          }

          if (youTubeVideoInside.length) {
            var videoUrl = youTubeVideoInside.attr('src');

            youTubeVideoInside
              .attr('src', '')
              .attr('src', videoUrl);
          }
        }, modalItem))
      }
    }

    // Popovers
    if (plugins.popover.length) {
      if (window.innerWidth < 767) {
        plugins.popover.attr('data-placement', 'bottom');
        plugins.popover.popover();
      }
      else {
        plugins.popover.popover();
      }
    }
    // jScrollPane
    if (plugins.scroller.length) {
      for (var i = 0; i < plugins.scroller.length; i++) {
        var scrollerItem = $(plugins.scroller[i]);

        scrollerItem.jScrollPane({
          autoReinitialise: true
        });
      }
    }

    // Copyright Year (Evaluates correct copyright year)
    if (plugins.copyrightYear.length) {
      plugins.copyrightYear.text(initialDate.getFullYear());
    }

    // RD Google Maps
    if (plugins.rdGoogleMaps.length) {
      $.getScript("//maps.google.com/maps/api/js?key=AIzaSyAwH60q5rWrS8bXwpkZwZwhw9Bw0pqKTZM&sensor=false&libraries=geometry,places&v=3.7", function () {
        var head = document.getElementsByTagName('head')[0],
          insertBefore = head.insertBefore;

        head.insertBefore = function (newElement, referenceElement) {
          if (newElement.href && newElement.href.indexOf('//fonts.googleapis.com/css?family=Roboto') !== -1 || newElement.innerHTML.indexOf('gm-style') !== -1) {
            return;
          }
          insertBefore.call(head, newElement, referenceElement);
        };

        for (var i = 0; i < plugins.rdGoogleMaps.length; i++) {
          var $googleMapItem = $(plugins.rdGoogleMaps[i]);

          lazyInit($googleMapItem, $.proxy(function () {
            var $this = $(this),
              styles = $this.attr("data-styles");

            $this.googleMap({
              marker: {
                basic: $this.data('marker'),
                active: $this.data('marker-active')
              },
              styles: styles ? JSON.parse(styles) : [],
              onInit: function (map) {
                var inputAddress = $('#rd-google-map-address');


                if (inputAddress.length) {
                  var input = inputAddress;
                  var geocoder = new google.maps.Geocoder();
                  var marker = new google.maps.Marker(
                    {
                      map: map,
                      icon: $this.data('marker-url')
                    }
                  );

                  var autocomplete = new google.maps.places.Autocomplete(inputAddress[0]);
                  autocomplete.bindTo('bounds', map);
                  inputAddress.attr('placeholder', '');
                  inputAddress.on('change', function () {
                    $("#rd-google-map-address-submit").trigger('click');
                  });
                  inputAddress.on('keydown', function (e) {
                    if (e.keyCode === 13) {
                      $("#rd-google-map-address-submit").trigger('click');
                    }
                  });


                  $("#rd-google-map-address-submit").on('click', function (e) {
                    e.preventDefault();
                    var address = input.val();
                    geocoder.geocode({'address': address}, function (results, status) {
                      if (status === google.maps.GeocoderStatus.OK) {
                        var latitude = results[0].geometry.location.lat();
                        var longitude = results[0].geometry.location.lng();

                        map.setCenter(new google.maps.LatLng(
                          parseFloat(latitude),
                          parseFloat(longitude)
                        ));
                        marker.setPosition(new google.maps.LatLng(
                          parseFloat(latitude),
                          parseFloat(longitude)
                        ))
                      }
                    });
                  });
                }
              }
            });
          }, $googleMapItem));
        }
      });
    }

    // Facebook widget
    if (plugins.facebookWidget.length) {
      lazyInit(plugins.facebookWidget, function () {
        (function (d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) return;
          js = d.createElement(s);
          js.id = id;
          js.src = "//connect.facebook.net/en_EN/sdk.js#xfbml=1&version=v2.5";
          fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
      });
    }

    // Add custom styling options for input[type="radio"]
    if (plugins.radio.length) {
      for (var i = 0; i < plugins.radio.length; i++) {
        $(plugins.radio[i]).addClass("radio-custom").after("<span class='radio-custom-dummy'></span>")
      }
    }

    // Add custom styling options for input[type="checkbox"]
    if (plugins.checkbox.length) {
      for (var i = 0; i < plugins.checkbox.length; i++) {
        $(plugins.checkbox[i]).addClass("checkbox-custom").after("<span class='checkbox-custom-dummy'></span>")
      }
    }

    // Popovers
    if (plugins.popover.length) {
      if (window.innerWidth < 767) {
        plugins.popover.attr('data-placement', 'bottom');
        plugins.popover.popover();
      }
      else {
        plugins.popover.popover();
      }
    }

    // UI To Top
    if (isDesktop && !isNoviBuilder) {
      $().UItoTop({
        easingType: 'easeOutQuad',
        containerClass: 'ui-to-top fa fa-angle-up'
      });
    }

    // RD Navbar
    if (plugins.rdNavbar.length) {
      var aliaces, i, j, len, value, values, responsiveNavbar;

      aliaces = ["-", "-sm-", "-md-", "-lg-", "-xl-", "-xxl-"];
      values = [0, 576, 768, 992, 1200, 1600];
      responsiveNavbar = {};

      for (i = j = 0, len = values.length; j < len; i = ++j) {
        value = values[i];
        if (!responsiveNavbar[values[i]]) {
          responsiveNavbar[values[i]] = {};
        }
        if (plugins.rdNavbar.attr('data' + aliaces[i] + 'layout')) {
          responsiveNavbar[values[i]].layout = plugins.rdNavbar.attr('data' + aliaces[i] + 'layout');
        }
        if (plugins.rdNavbar.attr('data' + aliaces[i] + 'device-layout')) {
          responsiveNavbar[values[i]]['deviceLayout'] = plugins.rdNavbar.attr('data' + aliaces[i] + 'device-layout');
        }
        if (plugins.rdNavbar.attr('data' + aliaces[i] + 'hover-on')) {
          responsiveNavbar[values[i]]['focusOnHover'] = plugins.rdNavbar.attr('data' + aliaces[i] + 'hover-on') === 'true';
        }
        if (plugins.rdNavbar.attr('data' + aliaces[i] + 'auto-height')) {
          responsiveNavbar[values[i]]['autoHeight'] = plugins.rdNavbar.attr('data' + aliaces[i] + 'auto-height') === 'true';
        }

        if (isNoviBuilder) {
          responsiveNavbar[values[i]]['stickUp'] = false;
        } else if (plugins.rdNavbar.attr('data' + aliaces[i] + 'stick-up')) {
          responsiveNavbar[values[i]]['stickUp'] = plugins.rdNavbar.attr('data' + aliaces[i] + 'stick-up') === 'true';
        }

        if (plugins.rdNavbar.attr('data' + aliaces[i] + 'stick-up-offset')) {
          responsiveNavbar[values[i]]['stickUpOffset'] = plugins.rdNavbar.attr('data' + aliaces[i] + 'stick-up-offset');
        }
      }


      plugins.rdNavbar.RDNavbar({
        anchorNav: !isNoviBuilder,
        stickUpClone: (plugins.rdNavbar.attr("data-stick-up-clone") && !isNoviBuilder) ? plugins.rdNavbar.attr("data-stick-up-clone") === 'true' : false,
        responsive: responsiveNavbar,
        callbacks: {
          onStuck: function () {
            var navbarSearch = this.$element.find('.rd-search input');

            if (navbarSearch) {
              navbarSearch.val('').trigger('propertychange');
            }
          },
          onDropdownOver: function () {
            return !isNoviBuilder;
          },
          onUnstuck: function () {
            if (this.$clone === null)
              return;

            var navbarSearch = this.$clone.find('.rd-search input');

            if (navbarSearch) {
              navbarSearch.val('').trigger('propertychange');
              navbarSearch.trigger('blur');
            }

          }
        }
      });


      if (plugins.rdNavbar.attr("data-body-class")) {
        document.body.className += ' ' + plugins.rdNavbar.attr("data-body-class");
      }
    }

    // Add class in viewport
    if (plugins.viewAnimate.length) {
      for (var i = 0; i < plugins.viewAnimate.length; i++) {
        var $view = $(plugins.viewAnimate[i]).not('.active');
        $document.on("scroll", $.proxy(function () {
          if (isScrolledIntoView(this)) {
            this.addClass("active");
          }
        }, $view))
          .trigger("scroll");
      }
    }

    // Swiper
    if (plugins.swiper.length) {
      for (var i = 0; i < plugins.swiper.length; i++) {
        var s = $(plugins.swiper[i]);
        var pag = s.find(".swiper-pagination"),
          next = s.find(".swiper-button-next"),
          prev = s.find(".swiper-button-prev"),
          bar = s.find(".swiper-scrollbar"),
          swiperSlide = s.find(".swiper-slide"),
          autoplay = false;

        for (var j = 0; j < swiperSlide.length; j++) {
          var $this = $(swiperSlide[j]),
            url;

          if (url = $this.attr("data-slide-bg")) {
            $this.css({
              "background-image": "url(" + url + ")",
              "background-size": "cover"
            })
          }
        }

        swiperSlide.end()
          .find("[data-caption-animate]")
          .addClass("not-animated")
          .end();

        s.swiper({
          autoplay: !isNoviBuilder && $.isNumeric(s.attr('data-autoplay')) ? s.attr('data-autoplay') : false,
          direction: s.attr('data-direction') ? s.attr('data-direction') : "horizontal",
          effect: s.attr('data-slide-effect') ? s.attr('data-slide-effect') : "slide",
          speed: s.attr('data-slide-speed') ? s.attr('data-slide-speed') : 600,
          keyboardControl: s.attr('data-keyboard') === "true",
          mousewheelControl: s.attr('data-mousewheel') === "true",
          mousewheelReleaseOnEdges: s.attr('data-mousewheel-release') === "true",
          nextButton: next.length ? next.get(0) : (s.attr('data-custom-next') ? $(s.attr('data-custom-next')) : null),
          prevButton: prev.length ? prev.get(0) : (s.attr('data-custom-prev') ? $(s.attr('data-custom-prev')) : null),
          pagination: pag.length ? pag.get(0) : (s.attr('data-custom-pagination') ? $(s.attr('data-custom-pagination')) : null),
          paginationType: s.attr('data-pagination-type') ? s.attr('data-pagination-type') : 'bullets',
          paginationFractionRender: s.attr('data-pagination-type') === 'fraction' ? function (swiper, currentClassName, totalClassName) {
            return '<span class="' + currentClassName + '"></span>' +
              '&nbsp;\\&nbsp;' +
              '<span class="' + totalClassName + '"></span>';
          } : null,
          paginationClickable: pag.length ? pag.attr("data-clickable") !== "false" : false,
          paginationBulletRender: pag.length ? pag.attr("data-index-bullet") === "true" ? function (swiper, index, className) {
            return '<span class="' + className + '">' + (index + 1) + '</span>';
          } : null : null,
          scrollbar: bar.length ? bar.get(0) : null,
          scrollbarDraggable: bar.length ? bar.attr("data-draggable") !== "false" : true,
          scrollbarHide: bar.length ? bar.attr("data-draggable") === "false" : false,
          loop: isNoviBuilder ? false : s.attr('data-loop') !== "false",
          simulateTouch: s.attr('data-simulate-touch') && !isNoviBuilder ? s.attr('data-simulate-touch') === "true" : false,
          onTransitionStart: function (swiper) {
            toggleSwiperInnerVideos(swiper);
          },
          onTransitionEnd: function (swiper) {
            toggleSwiperCaptionAnimation(swiper);
          },
          onInit: function (swiper) {
            toggleSwiperInnerVideos(swiper);
            toggleSwiperCaptionAnimation(swiper);
            initLightGalleryItem(s.find('[data-lightgallery="item"]'), 'lightGallery-in-carousel');
          }
        });

        $window.on("resize", (function (s) {
          return function () {
            var mh = getSwiperHeight(s, "min-height"),
              h = getSwiperHeight(s, "height");
            if (h) {
              s.css("height", mh ? mh > h ? mh : h : h);
            }
          }
        })(s)).trigger("resize");
      }
    }

    // Isotope
    if (plugins.isotope.length) {
      var isogroup = [];
      for (var i = 0; i < plugins.isotope.length; i++) {
        var isotopeItem = plugins.isotope[i],
          isotopeInitAttrs = {
            itemSelector: '.isotope-item',
            layoutMode: isotopeItem.getAttribute('data-isotope-layout') ? isotopeItem.getAttribute('data-isotope-layout') : 'masonry',
            filter: '*'
          };

        if (isotopeItem.getAttribute('data-column-width')) {
          isotopeInitAttrs.masonry = {
            columnWidth: parseFloat(isotopeItem.getAttribute('data-column-width'))
          };
        } else if (isotopeItem.getAttribute('data-column-class')) {
          isotopeInitAttrs.masonry = {
            columnWidth: isotopeItem.getAttribute('data-column-class')
          };
        }

        var iso = new Isotope(isotopeItem, isotopeInitAttrs);
        isogroup.push(iso);
      }


      setTimeout(function () {
        for (var i = 0; i < isogroup.length; i++) {
          isogroup[i].element.className += " isotope--loaded";
          isogroup[i].layout();
        }
      }, 200);

      var resizeTimout;

      $("[data-isotope-filter]").on("click", function (e) {
        e.preventDefault();
        var filter = $(this);
        clearTimeout(resizeTimout);
        filter.parents(".isotope-filters").find('.active').removeClass("active");
        filter.addClass("active");
        var iso = $('.isotope[data-isotope-group="' + this.getAttribute("data-isotope-group") + '"]'),
          isotopeAttrs = {
            itemSelector: '.isotope-item',
            layoutMode: iso.attr('data-isotope-layout') ? iso.attr('data-isotope-layout') : 'masonry',
            filter: this.getAttribute("data-isotope-filter") === '*' ? '*' : '[data-filter*="' + this.getAttribute("data-isotope-filter") + '"]'
          };
        if (iso.attr('data-column-width')) {
          isotopeAttrs.masonry = {
            columnWidth: parseFloat(iso.attr('data-column-width'))
          };
        } else if (iso.attr('data-column-class')) {
          isotopeAttrs.masonry = {
            columnWidth: iso.attr('data-column-class')
          };
        }
        iso.isotope(isotopeAttrs);
      }).eq(0).trigger("click")
    }

    // WOW
    if ($html.hasClass("wow-animation") && plugins.wow.length && !isNoviBuilder && isDesktop) {
      new WOW().init();
    }

    // Slick carousel
    if (plugins.slick.length) {
      for (var i = 0; i < plugins.slick.length; i++) {
        var $slickItem = $(plugins.slick[i]);

        $slickItem.on('init', function () {
          initLightGalleryItem($('[data-lightgallery="item"]'), 'lightGallery-in-carousel');
        });

        $slickItem.slick({
          slidesToScroll: parseInt($slickItem.attr('data-slide-to-scroll'), 10) || 1,
          asNavFor: $slickItem.attr('data-for') || false,
          dots: $slickItem.attr("data-dots") === "true",
          infinite: isNoviBuilder ? false : $slickItem.attr("data-loop") === "true",
          focusOnSelect: true,
          arrows: $slickItem.attr("data-arrows") === "true",
          swipe: $slickItem.attr("data-swipe") === "true",
          autoplay: $slickItem.attr("data-autoplay") === "true",
          vertical: $slickItem.attr("data-vertical") === "true",
          centerMode: isNoviBuilder ? false : $slickItem.attr("data-center") === "true",
          centerPadding: $slickItem.attr("data-center-padding") ? $slickItem.attr("data-center-padding") : '0.50',
          mobileFirst: true,
          responsive: [
            {
              breakpoint: 0,
              settings: {
                slidesToShow: parseInt($slickItem.attr('data-items')) || 1,
                swipe: $slickItem.attr('data-swipe') || false
              }
            },
            {
              breakpoint: 575,
              settings: {
                slidesToShow: parseInt($slickItem.attr('data-sm-items')) || 1,
                swipe: $slickItem.attr('data-sm-swipe') || false
              }
            },
            {
              breakpoint: 767,
              settings: {
                slidesToShow: parseInt($slickItem.attr('data-md-items')) || 1,
                swipe: $slickItem.attr('data-md-swipe') || false
              }
            },
            {
              breakpoint: 991,
              settings: {
                slidesToShow: parseInt($slickItem.attr('data-lg-items')) || 1,
                swipe: $slickItem.attr('data-lg-swipe') || false
              }
            },
            {
              breakpoint: 1199,
              settings: {
                slidesToShow: parseInt($slickItem.attr('data-xl-items')) || 1,
                swipe: $slickItem.attr('data-xl-swipe') || false
              }
            }
          ]
        })
          .on('afterChange', function (event, slick, currentSlide, nextSlide) {
            var $this = $(this),
              childCarousel = $this.attr('data-child');

            if (childCarousel) {
              $(childCarousel + ' .slick-slide').removeClass('slick-current');
              $(childCarousel + ' .slick-slide').eq(currentSlide).addClass('slick-current');
            }
          });
      }
    }

    $('.slick-style-1').on('click', '.slick-slide', function (e) {
      e.stopPropagation();
      var index = $(this).data("slick-index"),
        targetSlider = $('.slick-style-1');
      if (targetSlider.slick('slickCurrentSlide') !== index) {
        targetSlider.slick('slickGoTo', index);
      }
    });

    // RD Input Label
    if (plugins.rdInputLabel.length) {
      plugins.rdInputLabel.RDInputLabel();
    }

    // Regula
    if (plugins.regula.length) {
      attachFormValidator(plugins.regula);
    }

    // MailChimp Ajax subscription
    if (plugins.mailchimp.length) {
      for (i = 0; i < plugins.mailchimp.length; i++) {
        var $mailchimpItem = $(plugins.mailchimp[i]),
          $email = $mailchimpItem.find('input[type="email"]');

        // Required by MailChimp
        $mailchimpItem.attr('novalidate', 'true');
        $email.attr('name', 'EMAIL');

        $mailchimpItem.on('submit', $.proxy(function ($email, event) {
          event.preventDefault();

          var $this = this;

          var data = {},
            url = $this.attr('action').replace('/post?', '/post-json?').concat('&c=?'),
            dataArray = $this.serializeArray(),
            $output = $("#" + $this.attr("data-form-output"));

          for (i = 0; i < dataArray.length; i++) {
            data[dataArray[i].name] = dataArray[i].value;
          }

          $.ajax({
            data: data,
            url: url,
            dataType: 'jsonp',
            error: function (resp, text) {
              $output.html('Server error: ' + text);

              setTimeout(function () {
                $output.removeClass("active");
              }, 4000);
            },
            success: function (resp) {
              $output.html(resp.msg).addClass('active');
              $email[0].value = '';
              var $label = $('[for="' + $email.attr('id') + '"]');
              if ($label.length) $label.removeClass('focus not-empty');

              setTimeout(function () {
                $output.removeClass("active");
              }, 6000);
            },
            beforeSend: function (data) {
              var isNoviBuilder = window.xMode;

              var isValidated = (function () {
                var results, errors = 0;
                var elements = $this.find('[data-constraints]');
                var captcha = null;
                if (elements.length) {
                  for (var j = 0; j < elements.length; j++) {

                    var $input = $(elements[j]);
                    if ((results = $input.regula('validate')).length) {
                      for (var k = 0; k < results.length; k++) {
                        errors++;
                        $input.siblings(".form-validation").text(results[k].message).parent().addClass("has-error");
                      }
                    } else {
                      $input.siblings(".form-validation").text("").parent().removeClass("has-error")
                    }
                  }

                  if (captcha) {
                    if (captcha.length) {
                      return validateReCaptcha(captcha) && errors === 0
                    }
                  }

                  return errors === 0;
                }
                return true;
              })();

              // Stop request if builder or inputs are invalide
              if (isNoviBuilder || !isValidated)
                return false;

              $output.html('Submitting...').addClass('active');
            }
          });

          return false;
        }, $mailchimpItem, $email));
      }
    }

    // Campaign Monitor ajax subscription
    if (plugins.campaignMonitor.length) {
      for (i = 0; i < plugins.campaignMonitor.length; i++) {
        var $campaignItem = $(plugins.campaignMonitor[i]);

        $campaignItem.on('submit', $.proxy(function (e) {
          var data = {},
            url = this.attr('action'),
            dataArray = this.serializeArray(),
            $output = $("#" + plugins.campaignMonitor.attr("data-form-output")),
            $this = $(this);

          for (i = 0; i < dataArray.length; i++) {
            data[dataArray[i].name] = dataArray[i].value;
          }

          $.ajax({
            data: data,
            url: url,
            dataType: 'jsonp',
            error: function (resp, text) {
              $output.html('Server error: ' + text);

              setTimeout(function () {
                $output.removeClass("active");
              }, 4000);
            },
            success: function (resp) {
              $output.html(resp.Message).addClass('active');

              setTimeout(function () {
                $output.removeClass("active");
              }, 6000);
            },
            beforeSend: function (data) {
              // Stop request if builder or inputs are invalide
              if (isNoviBuilder || !isValidated($this.find('[data-constraints]')))
                return false;

              $output.html('Submitting...').addClass('active');
            }
          });

          // Clear inputs after submit
          var inputs = $this[0].getElementsByTagName('input');
          for (var i = 0; i < inputs.length; i++) {
            inputs[i].value = '';
            var label = document.querySelector('[for="' + inputs[i].getAttribute('id') + '"]');
            if (label) label.classList.remove('focus', 'not-empty');
          }

          return false;
        }, $campaignItem));
      }
    }

    // RD Mailform
    if (plugins.rdMailForm.length) {
      var i, j, k,
        msg = {
          'MF000': 'Successfully sent!',
          'MF001': 'Recipients are not set!',
          'MF002': 'Form will not work locally!',
          'MF003': 'Please, define email field in your form!',
          'MF004': 'Please, define type of your form!',
          'MF254': 'Something went wrong with PHPMailer!',
          'MF255': 'Aw, snap! Something went wrong.'
        };

      for (i = 0; i < plugins.rdMailForm.length; i++) {
        var $form = $(plugins.rdMailForm[i]),
          formHasCaptcha = false;

        $form.attr('novalidate', 'novalidate').ajaxForm({
          data: {
            "form-type": $form.attr("data-form-type") || "contact",
            "counter": i
          },
          beforeSubmit: function (arr, $form, options) {
            if (isNoviBuilder)
              return;

            var form = $(plugins.rdMailForm[this.extraData.counter]),
              inputs = form.find("[data-constraints]"),
              output = $("#" + form.attr("data-form-output")),
              captcha = form.find('.recaptcha'),
              captchaFlag = true;

            output.removeClass("active error success");

            if (isValidated(inputs, captcha)) {

              // veify reCaptcha
              if (captcha.length) {
                var captchaToken = captcha.find('.g-recaptcha-response').val(),
                  captchaMsg = {
                    'CPT001': 'Please, setup you "site key" and "secret key" of reCaptcha',
                    'CPT002': 'Something wrong with google reCaptcha'
                  };

                formHasCaptcha = true;

                $.ajax({
                  method: "POST",
                  url: "bat/reCaptcha.php",
                  data: {'g-recaptcha-response': captchaToken},
                  async: false
                })
                  .done(function (responceCode) {
                    if (responceCode !== 'CPT000') {
                      if (output.hasClass("snackbars")) {
                        output.html('<p><span class="icon text-middle mdi mdi-check icon-xxs"></span><span>' + captchaMsg[responceCode] + '</span></p>')

                        setTimeout(function () {
                          output.removeClass("active");
                        }, 3500);

                        captchaFlag = false;
                      } else {
                        output.html(captchaMsg[responceCode]);
                      }

                      output.addClass("active");
                    }
                  });
              }

              if (!captchaFlag) {
                return false;
              }

              form.addClass('form-in-process');

              if (output.hasClass("snackbars")) {
                output.html('<p><span class="icon text-middle fa fa-circle-o-notch fa-spin icon-xxs"></span><span>Sending</span></p>');
                output.addClass("active");
              }
            } else {
              return false;
            }
          },
          error: function (result) {
            if (isNoviBuilder)
              return;

            var output = $("#" + $(plugins.rdMailForm[this.extraData.counter]).attr("data-form-output")),
              form = $(plugins.rdMailForm[this.extraData.counter]);

            output.text(msg[result]);
            form.removeClass('form-in-process');

            if (formHasCaptcha) {
              grecaptcha.reset();
            }
          },
          success: function (result) {
            if (isNoviBuilder)
              return;

            var form = $(plugins.rdMailForm[this.extraData.counter]),
              output = $("#" + form.attr("data-form-output")),
              select = form.find('select');

            form
              .addClass('success')
              .removeClass('form-in-process');

            if (formHasCaptcha) {
              grecaptcha.reset();
            }

            result = result.length === 5 ? result : 'MF255';
            output.text(msg[result]);

            if (result === "MF000") {
              if (output.hasClass("snackbars")) {
                output.html('<p><span class="icon text-middle mdi mdi-check icon-xxs"></span><span>' + msg[result] + '</span></p>');
              } else {
                output.addClass("active success");
              }
            } else {
              if (output.hasClass("snackbars")) {
                output.html(' <p class="snackbars-left"><span class="icon icon-xxs mdi mdi-alert-outline text-middle"></span><span>' + msg[result] + '</span></p>');
              } else {
                output.addClass("active error");
              }
            }

            form.clearForm();

            if (select.length) {
              select.select2("val", "");
            }

            form.find('input, textarea').trigger('blur');

            setTimeout(function () {
              output.removeClass("active error success");
              form.removeClass('success');
            }, 3500);
          }
        });
      }
    }

    // Owl carousel
    if (plugins.owl.length) {
      for (var i = 0; i < plugins.owl.length; i++) {
        var c = $(plugins.owl[i]);
        plugins.owl[i].owl = c;

        initOwlCarousel(c);
      }
    }

    // Custom Toggles
    if (plugins.customToggle.length) {
      for (var i = 0; i < plugins.customToggle.length; i++) {
        var $this = $(plugins.customToggle[i]);

        $this.on('click', $.proxy(function (event) {
          event.preventDefault();

          var $ctx = $(this);
          $($ctx.attr('data-custom-toggle')).add(this).toggleClass('active');
        }, $this));

        if ($this.attr("data-custom-toggle-hide-on-blur") === "true") {
          $body.on("click", $this, function (e) {
            if (e.target !== e.data[0]
              && $(e.data.attr('data-custom-toggle')).find($(e.target)).length
              && e.data.find($(e.target)).length === 0) {
              $(e.data.attr('data-custom-toggle')).add(e.data[0]).removeClass('active');
            }
          })
        }

        if ($this.attr("data-custom-toggle-disable-on-blur") === "true") {
          $body.on("click", $this, function (e) {
            if (e.target !== e.data[0] && $(e.data.attr('data-custom-toggle')).find($(e.target)).length === 0 && e.data.find($(e.target)).length === 0) {
              $(e.data.attr('data-custom-toggle')).add(e.data[0]).removeClass('active');
            }
          })
        }
      }
    }

    // jQuery Count To
    if (plugins.counter.length) {
      for (var i = 0; i < plugins.counter.length; i++) {
        var $counterNotAnimated = $(plugins.counter[i]).not('.animated');
        $document.on("scroll", $.proxy(function () {
          var $this = this;

          if ((!$this.hasClass("animated")) && (isScrolledIntoView($this))) {
            $this.countTo({
              refreshInterval: 40,
              from: 0,
              to: parseInt($this.text(), 10),
              speed: $this.attr("data-speed") || 1000,
              formatter: function (value, options) {
                if ($this.attr('data-zero') === 'true') {
                  value = value.toFixed(options.decimals);
                  if (value < 10) {
                    return '0' + value;
                  }
                  return value;
                } else {
                  return value.toFixed(options.decimals);
                }
              }
            });
            $this.addClass('animated');
          }
        }, $counterNotAnimated))
          .trigger("scroll");
      }
    }

    // TimeCircles
    if (plugins.dateCountdown.length) {
      for (var i = 0; i < plugins.dateCountdown.length; i++) {
        var dateCountdownItem = $(plugins.dateCountdown[i]),
          time = {
            "Days": {
              "text": "Days",
              "show": true,
              color: dateCountdownItem.attr("data-color") ? dateCountdownItem.attr("data-color") : "#f9f9f9"
            },
            "Hours": {
              "text": "Hours",
              "show": true,
              color: dateCountdownItem.attr("data-color") ? dateCountdownItem.attr("data-color") : "#f9f9f9"
            },
            "Minutes": {
              "text": "Minutes",
              "show": true,
              color: dateCountdownItem.attr("data-color") ? dateCountdownItem.attr("data-color") : "#f9f9f9"
            },
            "Seconds": {
              "text": "Seconds",
              "show": true,
              color: dateCountdownItem.attr("data-color") ? dateCountdownItem.attr("data-color") : "#f9f9f9"
            }
          };

        dateCountdownItem.TimeCircles({
          color: dateCountdownItem.attr("data-color") ? dateCountdownItem.attr("data-color") : "rgba(247, 247, 247, 1)",
          animation: "smooth",
          bg_width: dateCountdownItem.attr("data-bg-width") ? dateCountdownItem.attr("data-bg-width") : 0.6,
          circle_bg_color: dateCountdownItem.attr("data-bg") ? dateCountdownItem.attr("data-bg") : "rgba(0, 0, 0, 1)",
          fg_width: dateCountdownItem.attr("data-width") ? dateCountdownItem.attr("data-width") : 0.03
        });

        (function (dateCountdownItem, time) {
          $window.on('load resize orientationchange', function () {
            if (window.innerWidth < 479) {
              dateCountdownItem.TimeCircles({
                time: {
                  "Days": {
                    "text": "Days",
                    "show": true,
                    color: dateCountdownItem.attr("data-color") ? dateCountdownItem.attr("data-color") : "#f9f9f9"
                  },
                  "Hours": {
                    "text": "Hours",
                    "show": true,
                    color: dateCountdownItem.attr("data-color") ? dateCountdownItem.attr("data-color") : "#f9f9f9"
                  },
                  "Minutes": {
                    "text": "Minutes",
                    "show": true,
                    color: dateCountdownItem.attr("data-color") ? dateCountdownItem.attr("data-color") : "#f9f9f9"
                  },
                  Seconds: {
                    "text": "Seconds",
                    show: false,
                    color: dateCountdownItem.attr("data-color") ? dateCountdownItem.attr("data-color") : "#f9f9f9"
                  }
                }
              }).rebuild();
            } else if (window.innerWidth < 767) {
              dateCountdownItem.TimeCircles({
                time: {
                  "Days": {
                    "text": "Days",
                    "show": true,
                    color: dateCountdownItem.attr("data-color") ? dateCountdownItem.attr("data-color") : "#f9f9f9"
                  },
                  "Hours": {
                    "text": "Hours",
                    "show": true,
                    color: dateCountdownItem.attr("data-color") ? dateCountdownItem.attr("data-color") : "#f9f9f9"
                  },
                  "Minutes": {
                    "text": "Minutes",
                    "show": true,
                    color: dateCountdownItem.attr("data-color") ? dateCountdownItem.attr("data-color") : "#f9f9f9"
                  },
                  Seconds: {
                    text: '',
                    show: false,
                    color: dateCountdownItem.attr("data-color") ? dateCountdownItem.attr("data-color") : "#f9f9f9"
                  }
                }
              }).rebuild();
            } else {
              dateCountdownItem.TimeCircles({time: time}).rebuild();
            }
          });
        })(dateCountdownItem, time);
      }
    }

    // jQuery Countdown
    if (plugins.countDown.length) {
      var i;
      for (i = 0; i < plugins.countDown.length; i++) {
        var countDownItem = plugins.countDown[i],
          d = new Date(),
          type = countDownItem.getAttribute('data-type'),
          time = countDownItem.getAttribute('data-time'),
          format = countDownItem.getAttribute('data-format'),
          settings = [];

        d.setTime(Date.parse(time)).toLocaleString();
        settings[type] = d;
        settings['format'] = format;
        $(countDownItem).countdown(settings);
      }
    }

    // Circle Progress
    if (plugins.circleProgress.length) {
      for (var i = 0; i < plugins.circleProgress.length; i++) {
        var circleProgressItem = $(plugins.circleProgress[i]);
        $document.on("scroll", $.proxy(function () {
          var $this = $(this);

          if (!$this.hasClass('animated') && isScrolledIntoView($this)) {

            var arrayGradients = $this.attr('data-gradient').split(",");

            $this.circleProgress({
              value: $this.attr('data-value'),
              size: $this.attr('data-size') ? $this.attr('data-size') : 175,
              fill: {gradient: arrayGradients, gradientAngle: Math.PI / 4},
              startAngle: -Math.PI / 4 * 2,
              emptyFill: $this.attr('data-empty-fill') ? $this.attr('data-empty-fill') : "rgb(245,245,245)",
              thickness: $this.attr('data-thickness') ? parseInt($this.attr('data-thickness'), 10) : 10

            }).on('circle-animation-progress', function (event, progress, stepValue) {
              $(this).find('span').text(String(stepValue.toFixed(2)).replace('0.', '').replace('1.', '1'));
            });
            $this.addClass('animated');
          }
        }, circleProgressItem))
          .trigger("scroll");
      }
    }

    // Linear Progress bar
    if (plugins.progressLinear.length) {
      for (i = 0; i < plugins.progressLinear.length; i++) {
        var progressBar = $(plugins.progressLinear[i]);
        $window.on("scroll load", $.proxy(function () {
          var bar = $(this);
          if (!bar.hasClass('animated-first') && isScrolledIntoView(bar)) {
            var end = parseInt($(this).find('.progress-value').text(), 10);
            bar.find('.progress-bar-linear').css({width: end + '%'});
            bar.find('.progress-value').countTo({
              refreshInterval: 40,
              from: 0,
              to: end,
              speed: 500
            });
            bar.addClass('animated-first');
          }
        }, progressBar));
      }
    }

    // Material Parallax
    if (plugins.materialParallax.length) {
      if (!isNoviBuilder && !isIE && !isMobile) {
        plugins.materialParallax.parallax();

        // heavy pages fix
        $window.on('load', function () {
          setTimeout(function () {
            $window.scroll();
          }, 500);
        });
      } else {
        for (var i = 0; i < plugins.materialParallax.length; i++) {
          var parallax = $(plugins.materialParallax[i]),
            imgPath = parallax.data("parallax-img");

          parallax.css({
            "background-image": 'url(' + imgPath + ')',
            "background-size": "cover"
          });
        }
      }
    }

    // Bootstrap Date time picker
    if (plugins.bootstrapDateTimePicker.length) {
      var i;
      for (i = 0; i < plugins.bootstrapDateTimePicker.length; i++) {
        var $dateTimePicker = $(plugins.bootstrapDateTimePicker[i]);
        var options = {};

        options['format'] = 'dddd DD MMMM YYYY - HH:mm';
        if ($dateTimePicker.attr("data-time-picker") == "date") {
          options['format'] = 'dddd DD MMMM YYYY';
          options['minDate'] = new Date();
        } else if ($dateTimePicker.attr("data-time-picker") == "time") {
          options['format'] = 'HH:mm';
        }

        options["time"] = ($dateTimePicker.attr("data-time-picker") != "date");
        options["date"] = ($dateTimePicker.attr("data-time-picker") != "time");
        options["shortTime"] = true;

        $dateTimePicker.bootstrapMaterialDatePicker(options);
      }
    }

    // Custom Waypoints
    if (plugins.customWaypoints.length && !isNoviBuilder) {
      initCustomScrollTo(plugins.customWaypoints);
    }

    // Jp Audio player
    if (plugins.jPlayerInit.length) {
      $html.addClass('ontouchstart' in window || 'onmsgesturechange' in window ? 'touch' : 'no-touch');

      $.each(plugins.jPlayerInit, function (index, item) {
        $(item).addClass('jp-audio-' + index);

        var mediaObj = jpFormatePlaylistObj($(item).find('.jp-player-list .jp-player-list-item')),
          playerInstance = initJplayerBase(index, item, mediaObj);

        if ($(item).data('jp-player-name')) {
          var customJpPlaylists = $('[data-jp-playlist-relative-to="' + $(item).data('jp-player-name') + '"]'),
            playlistItems = customJpPlaylists.find("[data-jp-playlist-item]");

          // Toggle audio play on custom playlist play button click
          playlistItems.on('click', customJpPlaylists.data('jp-playlist-play-on'), function (e) {
            var mediaObj = jpFormatePlaylistObj(playlistItems),
              $clickedItem = $(e.delegateTarget);

            if (!JSON.stringify(playerInstance.playlist) === JSON.stringify(mediaObj) || !playerInstance.playlist.length) {
              playerInstance.setPlaylist(mediaObj);
            }

            if (!$clickedItem.hasClass('playing')) {
              playerInstance.pause();

              if ($clickedItem.hasClass('last-played')) {
                playerInstance.play();
              } else {
                playerInstance.play(playlistItems.index($clickedItem));
              }

              playlistItems.removeClass('playing last-played');
              $clickedItem.addClass('playing');
            } else {
              playlistItems.removeClass('playing last-played');
              $clickedItem.addClass('last-played');
              playerInstance.pause();
            }

          });


          // Callback for custom playlist
          $(playerInstance.cssSelector.jPlayer).bind($.jPlayer.event.play, function (e) {

            var toggleState = function (elemClass, index) {
              var activeIndex = playlistItems.index(playlistItems.filter(elemClass));

              if (activeIndex !== -1) {
                if (playlistItems.eq(activeIndex + index).length !== 0) {
                  playlistItems.eq(activeIndex)
                    .removeClass('play-next play-prev playing last-played')
                    .end()
                    .eq(activeIndex + index)
                    .addClass('playing');
                }
              }
            };

            // Check if user select next or prev track
            toggleState('.play-next', +1);
            toggleState('.play-prev', -1);

            var lastPlayed = playlistItems.filter('.last-played');

            // If user just press pause and than play on same track
            if (lastPlayed.length) {
              lastPlayed.addClass('playing').removeClass('last-played play-next');
            }
          });


          // Add temp marker of last played audio
          $(playerInstance.cssSelector.jPlayer).bind($.jPlayer.event.pause, function (e) {
            playlistItems.filter('.playing').addClass('last-played').removeClass('playing');

            $(playerInstance.cssSelector.cssSelectorAncestor).addClass('jp-state-visible');
          });

          // Add temp marker that user want to play next audio
          $(item).find('.jp-next')
            .on('click', function (e) {
              playlistItems.filter('.playing, .last-played').addClass('play-next');
            });

          // Add temp marker that user want to play prev audio
          $(item).find('.jp-previous')
            .on('click', function (e) {
              playlistItems.filter('.playing, .last-played').addClass('play-prev');
            });
        }
      });

    }

    // CirclePlayer
    if (plugins.circleJPlayer.length) {
      $.each(plugins.circleJPlayer, function (index, item) {
        $(item).find('.cp-jplayer').addClass('cp-jplayer-' + index);
        $(item).find('.cp-container').addClass('cp-container-' + index);

        new CirclePlayer(".cp-jplayer-" + index,
          {
            oga: $(item).data('jp-oga'),
            m4a: $(item).data('jp-m4a'),
            mp3: $(item).data('jp-mp3')
          }, {
            cssSelectorAncestor: ".cp-container-" + index,
            supplied: "mp3, m4a",
            volume: 0.4
          });
      });
    }


    // Jp Video player
    if (plugins.jPlayerVideo.length) {
      $.each(plugins.jPlayerVideo, function (index, item) {
        var $item = $(item);

        $item.find('.jp-video').addClass('jp-video-' + index);

        new jPlayerPlaylist({
          jPlayer: item.getElementsByClassName("jp-jplayer")[0],
          cssSelectorAncestor: ".jp-video-" + index // Need too bee a selector not HTMLElement or Jq object, so we make it unique
        }, jpFormatePlaylistObj($(item).find('.jp-player-list .jp-player-list-item')), {
          playlistOptions: {
            enableRemoveControls: false
          },
          size: {
            width: "100%",
            height: "auto",
          },
          supplied: "webmv, ogv, m4v",
          useStateClassSkin: true,
          volume: 0.4
        });

        $(item).find(".jp-jplayer").on('click', function (e) {
          var $this = $(this);
          if ($('.jp-video-' + index).hasClass('jp-state-playing')) {
            $this.jPlayer("pause");
          } else {
            $this.jPlayer("play");
          }
        });

        var initialContainerWidth = $item.width();
        // this is the overall page container, so whatever is relevant to your page

        $window.resize(function () {
          if ($item.width() !== initialContainerWidth) {
            // checks current container size against it's rendered size on every resize.
            initialContainerWidth = $item.width();
            $item.trigger('resize', $item);
            //pass off to resize listener for performance
          }
        });
      });

      $window.on('resize', function (e) {
        $('.jp-video').each(function (index) {
          // find every instance of jplayer using a class in their default markup
          var $parentContainer = $(this).closest('.jp-video-init'),
            // finds jplayers closest parent element from the ones you give it (can chain as many as you want)
            containerWidth = $parentContainer.width(),
            //takes the closest components width
            ARWidth = 1280,
            ARHeight = 720;

          // Width and height figures used to calculate the aspect ratio (will not restrict your players to this size)

          var aspectRatio = ARHeight / ARWidth;

          var videoHeight = Math.round(aspectRatio * containerWidth);
          // calculates the appropriate height in rounded pixels using the aspect ratio
          $(this).find('.jp-jplayer').width(containerWidth).height(videoHeight);
          // and then apply the width and height!
        });
      })
        .trigger('resize');
    }

    // RD Calendar
    if (plugins.calendar.length) {
      var i;
      for (i = 0; i < plugins.calendar.length; i++) {
        var calendarItem = $(plugins.calendar[i]);

        calendarItem.rdCalendar({
          days: calendarItem.attr("data-days") ? calendarItem.attr("data-days").split(/\s?,\s?/i) : ['SUN', 'MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT'],
          month: calendarItem.attr("data-months") ? calendarItem.attr("data-months").split(/\s?,\s?/i) : ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
        });

        if (calendarItem.data('events-inline') === true) {
          calendarItem.on('rdc.refresh', function () {
            initRowEvents($('.rdc-table_has-events'));
            initEventsCounter();
          });

          initRowEvents($('.rdc-table_has-events'));
          initEventsCounter();
        }
      }


      $window.on('resize', function () {
        var eventToResize = $('.rdc-calendar-event-panel');

        if (eventToResize.length) {
          var eventInnerRow = eventToResize.find('.event-panel'),
            ch = eventToResize.find('.rdc-table_events').outerHeight();

          eventInnerRow.css({
            height: ch + 'px'
          });
        }
      });
    }

  });
}());

