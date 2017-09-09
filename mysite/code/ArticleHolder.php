<?php

  class ArticleHolder extends Page{

    // Only allow article pages to be created within the article page holder
    // TODO: expand this with other types of articles
    private static $allowed_children = array(
      'ArticlePage'
    );
  }

  class ArticleHolder_Controller extends Page_Controller{

    public function init(){

      parent::init();
      Requirements::css("{$this->ThemeDir()}/css/projects.css");
    }
  }
?>
