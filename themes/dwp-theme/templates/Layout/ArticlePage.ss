<%-- DESCRIPTION: Individual page for housed inside of holder
 will contain publshed written content from user--%>
<%-- structure based on static/article.html --%>

<div id="article-headerimage" style="background-image:url('$HeaderImage.URL')"></div>

<main id="article-container">
  <h1>$Title</h1>
  <div id="article-info">
    <div id="article-progileimg"></div>
    <div id="article-infocontainer">
      <h4 class="subheader">$Author</h4>
      <p>$Date.Long</p>
    </div>
  </div>
  <article class="article-content">
    <blockquote id="article-headerquote">
      <% if $Teaser %>
        $Teaser
      <% else %>
        $Content.FirstSentence
      <% end_if %>
    </blockquote>
    <hr class="article-sectionbreak">
    <p id="article-body">
      $Content
    </p>
  </article>
</main>
