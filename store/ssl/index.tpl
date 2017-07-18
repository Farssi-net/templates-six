<link href="{$WEB_ROOT}/templates/six/store/css/style.css" rel="stylesheet">

<div class="landing-page ssl">

    <div class="hero">
        <div class="container">
            <h2>SSL Certificates</h2>
            <h3>Secure your site and add trust & confidence for your visitors</h3>
        </div>
    </div>

    <div class="validation-levels">
        <div class="container">
            <h3>Choose your level of validation</h3>
            <div class="row">
                <div class="col-sm-6 col-md-4">
                    <div class="item">
                        <h4>Domain Validation (DV)</h4>
                        <img src="{$WEB_ROOT}/assets/img/marketconnect/symantec/ssl-dv-icon.png">
                        <span>Basic Security</span>
                        <p>Issued in minutes, ideal for blogs, social media & personal websites</p>
                        <a href="{routePath('store-ssl-certificates-dv')}" class="btn">Buy</a>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="item">
                        <h4>Organization Validation (OV)</h4>
                        <img src="{$WEB_ROOT}/assets/img/marketconnect/symantec/ssl-ov-icon.png">
                        <span>Strong business level SSL</span>
                        <p>Company identity included in certificate, ideal for business websites</p>
                        <a href="{routePath('store-ssl-certificates-ov')}" class="btn">Buy</a>
                    </div>
                </div>
                <div class="col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-0">
                    <div class="item">
                        <h4>Extended Validation (EV)</h4>
                        <img src="{$WEB_ROOT}/assets/img/marketconnect/symantec/ssl-ev-icon.png">
                        <span>Maximum Protection & Trust</span>
                        <p>Green address bar & company name displayed, ideal for ecommerce</p>
                        <a href="{routePath('store-ssl-certificates-ev')}" class="btn">Buy</a>
                    </div>
                </div>
            </div>
            <p><a href="#" class="show-all"><i class="fa fa-arrow-down"></i> Not sure? View all certificates</a></p>
        </div>
    </div>

    {include file="$template/store/ssl/shared/nav.tpl" current=""}

    <div class="content-block">
        <div class="container">

            <img src="{$WEB_ROOT}/assets/img/marketconnect/symantec/ssl.png" class="right-icon">

            <h3>What is SSL?</h3>

            <p>SSL Certificates enable data encryption on the internet and allow data to be transmitted securely from a web server to a browser. With SSL, your website can use the https protocol and will display a padlock in end users web browsers to indicate the connection is secure.</p>

            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vehicula urna nec risus posuere, sed auctor turpis scelerisque. Donec ut maximus turpis. Praesent efficitur gravida odio maximus aliquam. Suspendisse auctor id ligula eget gravida. Curabitur vitae hendrerit diam. Donec fringilla enim eget vehicula pulvinar.</p>

        </div>
    </div>

    <div class="standout-1">
        <div class="container" style="max-height:400px;overflow:hidden;">
            <h3>Browsers are changing, are you prepared?</h3>
            <img src="{$WEB_ROOT}/assets/img/marketconnect/symantec/browser-warning.jpg">
        </div>
        <div class="browser-notice">
            <div class="wrapper">
                <img src="{$WEB_ROOT}/assets/img/marketconnect/symantec/padlock-x.png">
                Web pages not served via HTTPS will be marked ‘not secure’ in <strong>Google Chrome</strong>
                and <strong>Mozilla Firefox</strong>. Could your website be one of them?
            </div>
        </div>
    </div>

    <div class="content-block browser-msg">
        <div class="container">
            <img src="{$WEB_ROOT}/assets/img/marketconnect/symantec/browser-usage.png">
            <span>As the world's most popular browsers, this will affect nearly 70% of global internet traffic and other browser companies will follow suit.</span>
        </div>
    </div>

    <div class="content-block detailed-info" id="sslDetail">
        <div class="container">

            <div class="panel">
              <div class="panel-heading">
                <h4 data-toggle="collapse" data-parent="#accordion" href="#collapseAllCerts" class="panel-title expand">
                   <span class="arrow"><i class="fa fa-chevron-right"></i></span>
                  <a href="#">View All SSL Certificates</a>
                </h4>
              </div>
              <div id="collapseAllCerts" class="panel-collapse collapse">
                <div class="panel-body">

                    {include file="$template/store/ssl/shared/currency-chooser.tpl"}

                    <ul class="ssl-certs-all">
                        {foreach $certificates as $type => $products}
                            {foreach $products as $product}
                                <li>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <h4>{$product->name}</h4>
                                            <p>{$product->description}</p>
                                        </div>
                                        <div class="col-sm-3 col-sm-offset-1">
                                            <div class="padded-cell price">
                                                from<br>
                                                <strong>{$product->pricing()->best()->yearlyPrice()}</strong>
                                            </div>
                                        </div>
                                        <div class="col-sm-2">
                                            <div class="padded-cell">
                                                <form method="post" action="{routePath('store-order')}">
                                                    <input type="hidden" name="pid" value="{$product->id}">
                                                    <button type="submit" class="btn btn-success btn-block">Buy Now</button>
                                                </form>
                                                <a href="{routePath("store-ssl-certificates-$type")}">Learn more</a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            {/foreach}
                        {/foreach}
                    </ul>

                </div>
              </div>
            </div>
            <div class="panel">
              <div class="panel-heading">
                <h4 data-toggle="collapse" data-parent="#accordion" href="#collapseFaq" class="panel-title expand">
                    <span class="arrow"><i class="fa fa-chevron-right"></i></span>
                  <a href="#">FAQ's</a>
                </h4>
              </div>
              <div id="collapseFaq" class="panel-collapse collapse">
                <div class="panel-body">

                    <h4>What is an SSL Certificate?</h4>

                    <p>SSL Certificates enable data encryption on the internet and allow data to be transmitted securely from a web server to a browser. With SSL, your website can use the https protocol and will display a padlock in end users web browsers to indicate the connection is secure.</p>

                    <h4>Why do I need an SSL Certificate?</h4>

                    <p>SSL Certificates are an essential part of the internet. They not only encrypt communication between your computer and the server where a website is located, but they also provide verification that a site is what it claims to be.</p>

                    <h4>What are the different types of SSL?</h4>

                    <p>There are 3 different levels of vetting that SSL Certificates are based upon. Domain Validated (DV) , Organization Validated (OV), and Extended Validation (EV). The major difference between the types of certificate relates to the information the Certificate Authority, RapidSSL, GeoTrust and Symantec, requires and validates in order to issue a certificate. The higher levels of certificate require more information, and often is displayed in the browser bar. EV SSL for example turns the browser bar green and displays the organization name to visitors to generate more trust.</p>

                </div>
              </div>
            </div>

        </div>
    </div>

    {include file="$template/store/ssl/shared/logos.tpl"}

</div>

<script>
$(function() {
  $(".expand").on( "click", function() {
    $expand = $(this).find(">:first-child");

    if($expand.html() == '<i class="fa fa-chevron-right"></i>') {
      $expand.html('<i class="fa fa-chevron-down"></i>');
    } else {
      $expand.html('<i class="fa fa-chevron-right"></i>');
    }
  });
  $('.show-all').click(function(e) {
    e.preventDefault();
    if (!$('#collapseAllCerts').hasClass('in')) {
        $('#collapseAllCerts').collapse('show');
    }
    $('html, body').animate({
        scrollTop: $('#sslDetail').offset().top
    }, 500);
  });
});
</script>