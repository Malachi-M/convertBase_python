$('form').submit(function(e) {
    e.preventDefault();
    $.ajax({
            type: "GET",
            url: "/convertbase",
            data: {
                n: $('input[name = "n"]').val(),
                base: $('input[name = "base"]').val()
                },
            success: function(result){
                $('.query-result').html(result.result);
                $('.binary-result').html(result.binary);
                $('.hexdec-result').html(result.hexdec);
                $('.decimal-result').html(result.decimal);
            }
    });
});



var el = document.querySelector('.reset');
el.addEventListener("click",function(e){
    var number = document.querySelector('input[name = "n"]');
    var base = document.querySelector('input[name = "base"]');
    var result = document.querySelector('h1');
    
    var subresults = [].slice.call(document.querySelectorAll('section p'));
    
    subresults.map(function(item){
        item.innerHTML = " ";
    });
    
    console.log(result);
    result.innerHTML = " ";
    number.value = null;
    base.value = null;
});