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

<%-- Required for the hamburger menu to expand --%>
<script type="text/javascript">
  $(document).foundation();
</script>
