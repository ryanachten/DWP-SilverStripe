<%-- DESCRIPTION: Holder page for housing a list
of all *published* articles in the system --%>
<%-- structure based on static/projects.html --%>
<%-- TODO: add <link rel="stylesheet" href="css/projects.css"> to controller --%>

<header>
  <!-- Filter form -->
  <form id="project-filtercontainer">
    <div class="row">
      <!-- Author search -->
      <div class="small-6 medium-3 columns">
        <label class="filter-label">Author
          <input type="text" placeholder="Enter author">
        </label>
      </div>
      <!-- Date select -->
      <div class="small-6 medium-2 columns">
        <label class="filter-label">Date
          <select>
            <option value="Course 1">Use SS date</option>
          </select>
        </label>
      </div>
      <!-- Course select -->
      <div class="small-6 medium-2 columns">
        <label class="filter-label">Course
          <select>
            <option value="Course 1">Course 1</option>
            <option value="Course 2">Course 2</option>
            <option value="Course 3">Course 3</option>
            <option value="Course 4">Course 4</option>
          </select>
        </label>
      </div>
      <!-- Subject search -->
      <div class="small-6 medium-3 columns">
        <label class="filter-label">Subject
          <input type="text" placeholder="Enter author">
        </label>
      </div>
      <!-- Keyword search -->
      <div class="small-12 medium-2 columns">
        <label class="filter-label">Keyword
          <input type="text" placeholder="Enter author">
        </label>
      </div>

    </div>
  </form>
</header>

<hr class="project-sectionbreak">

<main id="thumb-container">
  <%-- Loop through all of the articles added as a child to ArticleHolder --%>
  <% loop $Children %>
  <a class="thumb-article medium-6 large-4 columns" href="$Link">
    <div class="thumb-headerimg"></div>
    <div class="thumb-textcontainer">
      <h3>$Title</h3>
      <p class="thumb-author">Lester del Ray</p>
      <p class="thumb-date">15 March</p>
      <p class="thumb-description">Nick Denton if the news is that important, it'll find me we will make them pay Andy Carvin circulation Project Thunderdome DocumentCloud Gutenberg parenthesis, Politics &amp; Socks page masthead future of context cancel</p>
    </div>
  </a>
  <% end_loop %>
  
</main>
