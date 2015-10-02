<div id="content">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div id="ajaxloading" class="centered" style="display:none;">
                    <div class="item">
                        <div class="item-inner">
                            <div class="item-loader-container">
                                <div class="la-pacman la-2x">
                                    <div></div>
                                    <div></div>
                                    <div></div>
                                    <div></div>
                                    <div></div>
                                    <div></div>
                                    <div></div>
                                    <div></div>
                                    <div></div>
                                    <div></div>
                                    <div></div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="result">

                </div>
            </div>
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>

<div id="about">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 centered">
                <div id="description">
                    <p>
                        The <dfn>GNU Collaborative International Dictionary of English</dfn>,
                        or <dfn>GCIDE</dfn> for short, is a free dictionary derived from
                    </p>

                    <div style="text-align: center">
                        Webster's Revised Unabridged Dictionary<br>
                        Version published 1913<br>
                        by the C. &amp; G. Merriam Co.<br>
                        Springfield, Mass.<br>
                        Under the direction of<br>
                        Noah Porter, D.D., LL.D.
                    </div>
                    <p>
                        and supplemented with some new definitions, in particular from
                        <a href="http://wordnet.princeton.edu/">WordNet</a>.
                    </p>

                    <p>The dictionary is created by Patrick J. Cassidy, and proof-read and
                        supplemented by volunteers from around the world.
                    </p>

                    <p>I create this simple dictionary according to guide from this website
                        <a href="http://gcide.gnu.org.ua/">gcide</a>. This is just for fun project where I am able to try some new
                        technology such as Yona CMS.
                    </p>

                </div>
            </div>
        </div>
    </div>
</div>

<div id="download">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 centered">
                <h1>Download</h1>
                <p>
                    You can download whole source code of this project <a href="https://github.com/giapps/gcide">on Github</a>
                </p>
            </div>
        </div>
    </div>
</div>

<div id="license">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 centered">
                <h1>License</h1>
                <p>
                    <b>GNU CIDE</b> is free dictionary; you can redistribute it and/or
                    modify it under the terms of the <a rel="license" href="http://www.gnu.org/licenses/gpl.html">GNU
                        General Public License</a> as published by the Free
                    Software Foundation; either version&nbsp;3 of the License, or (at your
                    option) any later version.</p>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    jQuery(document).ready(function(){
        jQuery('#lookup').submit(function(e){
            e.preventDefault();
            var term = jQuery('#lookup input[name="q"]').val();
              // Send the data using post
            var posting = $.post( '{{ url.path() }}word/lookup', { s: term } );
            jQuery('#ajaxloading').attr('style','display:block;');
            jQuery('#content').attr('style','background:#98bff6;');
            //style="background:#98bff6;"

          // Put the results in a div
          posting.done(function( data ) {
            //var content = jQuery( data ).find( "#content" );
            jQuery( "#result" ).empty().append( data );
            jQuery('#ajaxloading').attr('style','display:none;');
            jQuery('#content').attr('style','');
            jQuery(window).scrollTop(0);
          });
        });
    });
</script>