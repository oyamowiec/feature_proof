$(document).ready(function() {
    // $(".feature-proof-wrapper").fadeIn("slow").addClass("toggle-wrapper");
    // $.fn.scrollEnd = function(callback, timeout) {
    //     $(this).scroll(function(){
    //         $(".feature-proof-wrapper").fadeOut("slow").removeClass("toggle-wrapper");
    //         var $this = $(this);
    //         if ($this.data('scrollTimeout')) {
    //             clearTimeout($this.data('scrollTimeout'));
    //         }
    //         $this.data('scrollTimeout', setTimeout(callback,timeout));
    //     });
    // };
    //
    // $(window).scrollEnd(function(){
    //     $(".feature-proof-wrapper").fadeIn("slow").addClass("toggle-wrapper");
    // }, 1000);

    function popup() {
        $("div.item").each(function (index, item) {
            setTimeout(function () {
                $(item).fadeIn().addClass('active').delay(5000).queue(function (next) {
                    $(item).fadeOut().removeClass('active');
                    next();
                });
            }, index * 5000);
        });
    }

    popup();
    setInterval(popup, 30000);

});