<%-- Pull latest articles via HomePage_Controller --%>
<% loop $LatestArticles(1) %>
  <a class="latest-article" href="article.html">
    <div class="latest-textcontainer">
      <h2>$Title</h2>
      <p class="latest-author">$Author</p>
      <p class="latest-date">$Date.Long</p>
      <p class="latest-description">
        <% if $Teaser %>
          $Teaser
        <% else %>
          $Content.FirstSentence
        <% end_if %>
      </p>
    </div>
  </a>
<% end_loop %>


  <main id="thumb-container">
    <div class="thumb-section medium-12 large-6 columns">
      <h5 class="thumb-sectionheader">Creative</h5>
      <hr class="thumb-sectionbreak">

      <%-- Pull latest articles via HomePage_Controller --%>
      <%-- FIXME: change to Category 1 --%>
      <% loop $LatestArticles(2) %>
        <a class="thumb-article medium-12 large-6 columns" href="$Link">
          <div class="thumb-headerimg"
            style="background-image:url('$HeaderImage.URL')"></div>
          <div class="thumb-textcontainer">
            <h3>$Title</h3>
            <p class="thumb-author">$Author</p>
            <p class="thumb-date">$Date.Long</p>
            <p class="thumb-description">
              <% if $Teaser %>
                $Teaser
              <% else %>
                $Content.FirstSentence
              <% end_if %>
            </p>
          </div>
        </a>
      <% end_loop %>
    </div>

    <div class="thumb-section medium-12 large-6 columns">
      <h5 class="thumb-sectionheader">Journalism</h5>
      <hr class="thumb-sectionbreak">

      <%-- Pull latest articles via HomePage_Controller --%>
      <%-- FIXME: change to Category 2 --%>
      <% loop $LatestArticles(2) %>
        <a class="thumb-article medium-12 large-6 columns" href="$Link">
          <div class="thumb-headerimg"
            style="background-image:url('$HeaderImage.URL')"></div>
          <div class="thumb-textcontainer">
            <h3>$Title</h3>
            <p class="thumb-author">$Author</p>
            <p class="thumb-date">$Date.Long</p>
            <p class="thumb-description">
              <% if $Teaser %>
                $Teaser
              <% else %>
                $Content.FirstSentence
              <% end_if %>
            </p>
          </div>
        </a>
      <% end_loop %>
    </div>

  </main>
