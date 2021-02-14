<%-- 
    Document   : emailSend
    Created on : Jan 23, 2021, 8:14:30 PM
    Author     : J2EE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap Popup Email Form - reusable form</title>

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <style>
            html,
            body {
                height: 100%;
            }

            .container 
            {
                height: 100%;
                width: 100%;
                display: flex;
                justify-content: center;
                align-items: center;
                background-image: url("images/ipad-632394_1920.jpg");
                background-size: cover;
                background-repeat:no-repeat;    
            }
            .container-box
            {
                display:inline-block; 
                padding:120px; 
                background: rgba(0, 0, 0, .5);
                border: 1px solid #333;	
            }


        </style>
        <script>
            $(function ()
            {
                function after_form_submitted(data)
                {
                    if (data.result == 'success')
                    {
                        $('form#reused_form').hide();
                        $('#success_message').show();
                        $('#error_message').hide();
                    } else
                    {
                        $('#error_message').append('<ul></ul>');

                        jQuery.each(data.errors, function (key, val)
                        {
                            $('#error_message ul').append('<li>' + key + ':' + val + '</li>');
                        });
                        $('#success_message').hide();
                        $('#error_message').show();

                        //reverse the response on the button
                        $('button[type="button"]', $form).each(function ()
                        {
                            $btn = $(this);
                            label = $btn.prop('orig_label');
                            if (label)
                            {
                                $btn.prop('type', 'submit');
                                $btn.text(label);
                                $btn.prop('orig_label', '');
                            }
                        });

                    }//else
                }

                $('#reused_form').submit(function (e)
                {
                    e.preventDefault();

                    $form = $(this);
                    //show some response on the button
                    $('button[type="submit"]', $form).each(function ()
                    {
                        $btn = $(this);
                        $btn.prop('type', 'button');
                        $btn.prop('orig_label', $btn.text());
                        $btn.text('Sending ...');
                    });


                    $.ajax({
                        type: "POST",
                        url: 'http://reusableforms.com/handler/p/bootstrap-popup-email-form',
                        data: $form.serialize(),
                        success: after_form_submitted,
                        dataType: 'json'
                    });

                });
            });
        </script>
        <style>
            #orig_article_block {
                position:fixed;
                left:0px;
                bottom:0px;
                height:60px;
                width:100%;
                background:#222;
                color:#fff;
                padding: 10px;
            }
            #orig_article_block a
            {
                color:#fff;
                text-decoration: underline;
            }

            /* IE 6 */
/*            * html #orig_article_block {
                position:absolute;
                top:expression((0-(footer.offsetHeight)+(document.documentElement.clientHeight ? document.documentElement.clientHeight : document.body.clientHeight)+(ignoreMe = document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop))+'px');
            }*/
        </style>
    </head>
    <body >
        <div class="container">
            <div class="container-box">
                <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Contact Us</button>
            </div>

            <!-- Modal -->
            <div id="myModal" class="modal fade" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Contact Us</h4>
                        </div>
                        <div class="modal-body">

                            <form role="form" method="post" id="reused_form">
                               
                                <div class="form-group">
                                    <label for="name">
                                        Name:</label>
                                    <input type="text" class="form-control" 
                                           id="name" name="name"   required maxlength="50">

                                </div>
                                <div class="form-group">
                                    <label for="email">
                                        Email:</label>
                                    <input type="email" class="form-control" 
                                           id="email" name="email" required maxlength="50">
                                </div>
                                <div class="form-group">
                                    <label for="name">
                                        Message:</label>
                                    <textarea class="form-control" type="textarea" name="message"
                                              id="message" placeholder="Your Message Here" 
                                              maxlength="4000" rows="7"></textarea>
                                </div>
                                <button type="submit" class="btn btn-lg btn-success btn-block" id="btnContactUs">Post It! &rarr;</button>

                            </form>
                            <div id="success_message" style="width:50%; height:50%; display:none; ">
                                <h3>Sent your message successfully!</h3>
                            </div>
                            <div id="error_message" 
                                 style="width:50%; height:50%; display:none; ">
                                <h3>Error</h3>
                                Sorry there was an error sending your form.

                            </div> 
                        </div>

                    </div>

                </div>
            </div>
        </div>

        <div id="orig_article_block">
            This is an example form for : <a href="http://reusableforms.com/d/p/bootstrap-popup-email-form"
                                             >"Bootstrap Popup Email Form"</a>. Read more <a href="http://reusableforms.com/d/p/bootstrap-popup-email-form">here</a>
        </div>

    </body>
</html>