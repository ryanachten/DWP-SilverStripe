<%-- default page type --%>
<!DOCTYPE html>
<html>
  <head>
    <% base_tag %>
    $MetaTags
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

  </head>

  <body>

    <%-- Injects navigation from Includes/TopBar.ss --%>
    <% include TopBar %>

    <%-- Injects content from Layout --%>
    $Layout

  </body>
</html>
