<div class="unit size4of5">
    <div class="unit size1of4">
        <article>
            <div class="content">
                <div class="red "></div>
                <div class="lightgrey "></div>
                <div class="mediumgrey "></div>
                <div class="darkgrey "></div>
                <div class="redtitle">$Title</div>
                $Content
            </div> 
            <div class="red2">
                <div class="right-arrow"></div>
                <span class="letmehelp">“Make Fitness part of Your everyday</br>Life”</span> 
            </div>
        </article>
    </div> 
    <div class="unit size3of4"> 
        <div id="Stage" class="Lucie"></div>
    </div>


</div> 

<div class="unit size1of5">

    <div>
        <div class="Quoteleft">“</div>
        <div class="Quoteright">”</div>
        <% control Testimonial(1) %>   
        <strong>$Name</strong><br /><br />
        $Testimonial.LimitCharacters(200)<br />

        <a href="$Link" class="read_more">Read more...</a></br>
        <% end_control %>


    </div>

    <% control Page(About) %> 
    <div class="blacktitle">$Title</div><div class="blacktitlenext"></div>
    $trimedcontent
    </br>
    <a href="$Link" class="read_more">Read more...</a></br>

    <% end_control %> 
</div>



<div class="homebottom unit size1of1 ">

    <% control getgoalobject %> 
    <div class="homepagebottomcontainers">
        <a href="$Link">
            <div class="photocontainer">
                <div class="animatedtitle">$TextField</div>
                $Photo.CroppedImage(300,250)
                <div class="slideup">$TextareaField.LimitCharacters(130)</div>
                <div class="triangle1"></div>
                <div class="triangle2"></div>
            </div>
        </a>
        <div class="phototitlebel">$TextField</div>
    </div>
    <% end_control %> 


</div> 









<script type="text/javascript" charset="utf-8" src="{$ThemeDir}/templates/luciepersonaltraining_edgePreload.js"></script>  