<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="prjSiteDeRencontre.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="google-site-verification" content="n51P6yI5wya3UgdQvF4j95bxjlrvS3b9Wq5GyPyYpS4" />
    <title>Friandly.com Online Dating Site– Where Singles Click</title>
	<meta name="description" content="Match interests and make connections with  Friendly online dating site. Browse profiles, send messages and meet new people today. Try it free for 20 days!">
	
    <!-- Styles -->
    <link href="css/style2.css" rel="stylesheet">
    <link href="css/style1.css" rel="stylesheet">
	<script src="js/jquery-3.6.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	
    <!-- Google Analytics Content Experiment code -->
	<script>function utmx_section() { } function utmx() { } (function () {
            var
            k = '93782302-0', d = document, l = d.location, c = d.cookie;
            if (l.search.indexOf('utm_expid=' + k) > 0) return;
            function f(n) {
                if (c) {
                    var i = c.indexOf(n + '='); if (i > -1) {
                        var j = c.
                            indexOf(';', i); return escape(c.substring(i + n.length + 1, j < 0 ? c.
                                length : j))
                    }
                }
            } var x = f('__utmx'), xx = f('__utmxx'), h = l.hash; d.write(
                '<sc' + 'ript src="' + 'http' + (l.protocol == 'https:' ? 's://ssl' :
                    '://www') + '.google-analytics.com/ga_exp.js?' + 'utmxkey=' + k +
                '&utmx=' + (x ? x : '') + '&utmxx=' + (xx ? xx : '') + '&utmxtime=' + new Date().
                    valueOf() + (h ? '&utmxhash=' + escape(h.substr(1)) : '') +
                '" type="text/javascript" charset="utf-8"><\/sc' + 'ript>')
        })();
    </script><script>utmx('url', 'A/B');</script>
	<!-- End of Google Analytics Content Experiment code -->
	
	<script>

        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-56667868-1', 'auto');
        ga('require', 'displayfeatures');
        ga('send', 'pageview');

    </script>
	
	<script type="text/javascript">
        /* <![CDATA[ */
        var google_conversion_id = 1062502675;
        var google_custom_params = window.google_tag_params;
        var google_remarketing_only = true;
        /* ]]> */

        var __lc = {};
        __lc.license = 5720321;
        __lc.group = 14;

        (function () {
            var lc = document.createElement('script'); lc.type = 'text/javascript'; lc.async = true;
            lc.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'cdn.livechatinc.com/tracking.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(lc, s);
        })();
    </script>
	
	<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
	</script>
	<noscript>
		<div style="display:inline;">
			<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/1062502675/?value=0&amp;guid=ON&amp;script=0"/>
		</div>
	</noscript
</head>

<body style="background-color:black" ng-controller="SignupController as signup">
    <section class="container container-full split">
		<!--       -->
    	<div class="row home-page-top split"> 
			<!--   div gauche     -->   		
			<div class="col-sm-12 col-md-5 ll-voice-plug">
				<img class="hidden-sm hidden-xs" src="images/logoC.png" />
				<h1 class="stylin">MEET FUN<br>SINGLES!</h1>
<!--				<p class="redTxt">IN Toronto<span class="city">NORTH AMERICA</span></p> -->
				
            	
  			</div>
    		<!--  div droit  -->    		
    		<div class="col-sm-12 col-md-7 signup-home">

				    			<p>    			
    				<span>Friendly wants to put the excitement back in dating. We match your interests to help you break the ice and give you online dating tips along the way to make sure you have the best experience possible. Get started today.</span>
    			</p>    			
    			
    			<div class=" col-md-12 signup-login-holder">
    				<div class="col-md-1 col-sm-1 col-xs-0"></div>
    				
    				<div class="col-md-5 col-sm-5 col-xs-6">
    					<a style="float:right;" class="signup-home-btn" href="inscription.aspx">SIGN UP</a>
    				</div>
    				
    				<div class="col-md-5 col-sm-5 col-xs-6">
    					<a class="login-home-btn" href="connection.aspx">Login</a>
    				</div>
    				
    				<div class="col-md-1 col-sm-1 col-xs-0"></div>					
    			</div>
				
				<div class="clearfix"></div>

    		</div>
		</div>



		<div class="clearfix"></div>
    </section>
	
	<section class="section-two">
		<div class="overlay">
			<h1 class="light">Meet more people, spark more conversations and have more fun!</h1>
			<h3>SIGN UP NOW FOR YOUR 30-DAY FREE TRIAL.</h3>
		</div>
	</section>
	

	<section class="section-three">
		<div class="col-md-2 col-sm-2"></div>
		
		<div class="col-md-8 col-sm-8">
			<h1 class="light">Why Friendly </h1>
			<h2>Since 2001, Friendly.com has been committed to helping its members find dates, relationships and even soul mates. It's all in our:</h2>
			<div class="col-md-12">
				<div class="col-md-4">
					<div class="feature">
					
						<p>you can find your friend easily.</p>
						<div class="screen-shot"><img src="images/bg.jpg" /></div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="feature">
						
						<p>Easy-to-use search,<br> messaging and notifications to communicate with your friend .</p>
						<div class="screen-shot"><img src="images/img4.jpg" /></div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="feature">
						
						<p>With just one click, you can communicate with your friend.</p>
						<div class="screen-shot"><img src="images/img3.jpg" /></div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="col-md-2 col-sm-2"></div>
		<div class="clearfix"></div>
	</section>
	
	<div class="landing-footer">
		<div id="footer" class="hidden-sm hidden-xs">			
			<footer class="container">

					<div class="col-md-9">
						<p class="terms">All images design and other intellectual materials and copyrights © 2022 Friendly Ltd. All Rights Reserved. This is an adult service. By selecting any of the options above and/or creating your Lavalife profile, you are confirming that you are 18 years of age or older. 
						Please be sure you have read and agree to our <a href="privacy-policy.html" target="_blank">Privacy Policy</a> and <a href="terms-of-use.html" target="_blank">Terms of Use</a>.</p>
					</div>
				

			</footer>			
		</div>
	</div>
	
	

	<!--Old Browser Modal -->
	<div class="modal fade" id="oldBrowser" tabindex="-1" role="dialog" aria-labelledby="basicModal">
	  <div class="modal-dialog">
		<div class="modal-content">
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h4 class="modal-title" style="text-align:center;">
				<h3 style="text-align:center; color:red;">Outdated Browser</h3>
				 Hey there! Looks like you're using an outdated version of Internet Explorer.
				 Please download an up-to-date browser compatible with the latest web technology.
		    </h4>
		  </div>
		  <div class="modal-footer">
			<a style="margin:auto;" class="redBtn save" data-dismiss="modal">OKAY</a>
		  </div>
		</div>
	  </div>
	</div>
	
	<div class="scroll-to-top"></div>

  </body>
</html>
