<%-- default page type --%>
<!DOCTYPE html>
<html>
  <head>
    <% base_tag %>
    $MetaTags
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="http://cdn.foundation5.zurb.com/foundation.css" />
    <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
    <script src="http://cdn.foundation5.zurb.com/foundation.js"></script>

    <!-- Custom styles / src -->
    <link rel="stylesheet" href="$ThemeDir/css/nav.css">
    <link rel="stylesheet" href="$ThemeDir/css/about.css">
  </head>

  <body>
    <nav class="top-bar" data-topbar role="navigation">
      <ul class="title-area">
        <li class="name">
          <h1><a href="$AbsoluteBaseUrl">orwell</a></h1>
        </li>
        <li class="toggle-topbar menu-icon"><a href="#"><span></span></a></li>
      </ul>

      <section class="top-bar-section">
        <ul class="right">
          <li><div>
            <img class="topnav-search" src="$ThemeDir/img/foundation_icons/fi-magnifying-glass.svg" alt="" >
              <input class="topnav-search" type="search" placeholder="Search">
          </div></li>
          <li><img id="topnav-profile" src="$ThemeDir/img/foundation_icons/fi-torso.svg" alt="" ></li>
        </ul>

        <ul class="left">
          <li class="has-dropdown">
            <a href="#">Menu</a>
            <ul class="dropdown">
              <%-- loops through primary navigation --%>
              <% loop Menu(1) %>
                <li><a href="$Link" class="$LinkMode" title="Go to the $Title page">$MenuTitle</a></li>
              <% end_loop %>
            </ul>
          </li>
        </ul>
      </section>
    </nav>

    <main id="about-container">
      <h1>$Title</h1>
      <%-- TODO: not sure if we need breadcrumbs
      if so, update themes accordingly --%>
      $Breadcrumbs
      <article id="about-body">

        <%-- pulls content from the cms WYSIWYG editor --%>
        $Content
      </article>
    </main>

    <!-- Required for the hamburger menu to expand -->
    <script type="text/javascript">
      $(document).foundation();
    </script>
  </body>
</html>
