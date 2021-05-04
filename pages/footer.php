<footer>
</footer>
    <script 
    src="https://code.jquery.com/jquery-3.6.0.min.js" 
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
    crossorigin="anonymous">
    </script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#searchBox").keyup(function() {
                var query = $('#searchBox').val();
                 
                 if (query.length > 1) {
                     $.ajax(
                         {
                            url:'index.php',
                            method:'POST',
                            data: {
                                search: 1,
                                q: query
                            },
                             success: function(data) {
                                $("#response").html(data);
                             },
                            dataType: 'text'
                         }
                     );
                 }
                 if (query.length == 0) {
                    $("#response").empty();
                 }
            });
        });
    </script>  
</body>
</html>