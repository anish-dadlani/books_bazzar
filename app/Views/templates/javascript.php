<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
$(window).on('load', function(){
    $('#suggestions').hide();
});

$('.numberclass').keydown(function(e){
    if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 || 
        (e.keyCode == 65 && (e.ctrlKey === true || e.metaKey === true)) || (e.keyCode >= 35 && e.keyCode <= 40)) {
            return;
    }
    if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
        e.preventDefault();
    }
});

$(document).on('keydown','.numberclass',function(e){
    if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 || 
        (e.keyCode == 65 && (e.ctrlKey === true || e.metaKey === true)) || (e.keyCode >= 35 && e.keyCode <= 40)) {
            return;
    }
    if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
        e.preventDefault();
    }
});

function productSearch() {
    var search = $('#search').val();
    var filterby = $('#filter_search').val();
    if (search.length === 0) {
        $('#suggestions').hide();
    }
    else{
        $.ajax({
            type: "POST",
            url: "<?= base_url('category/search');?>",
            data: {search:search, filterby:filterby},
            success: function(data) {
                if (data.length > 0) {
                    $('#suggestions').show();
                    $('#autoSuggestionsList').addClass('auto_list');
                    $('#autoSuggestionsList').html(data);
                }
            }
        });
    }
}

function productSearch_() {
    var search = $('#search_').val();
    if (search.length === 0) {
        $('#suggestions').hide();
    }
    else{
        $.ajax({
            type: "POST",
            url: "<?= base_url('books/search');?>",
            data: {search:search},
            success: function(data) {
                if (data.length > 0) {
                    $('#suggestions').show();
                    $('#autoSuggestionsList').addClass('auto_list');
                    $('#autoSuggestionsList').html(data);
                }
            }
        });
    }
}
</script>