<header class="header" role="banner">
    <div class="inner">
        <% include Navigation %>
<!--        <div class="unit size4of4 lastUnit">
            <a href="$BaseHref" class="brand" rel="home">
                <h1>$SiteConfig.Title</h1>
                <% if $SiteConfig.Tagline %>
                <p>$SiteConfig.Tagline</p>

                <% end_if %>
            </a>
            <% if $SearchForm %>
            <span class="search-dropdown-icon">L</span>
            <div class="search-bar">
                $SearchForm
            </div>
            <% end_if %>
            
        </div>-->
    </div>
    <div class="floatingmenu">
        <div class="floatingmenuiner">
        <% include Navigation %>
        </div>
    </div>
   
</header>