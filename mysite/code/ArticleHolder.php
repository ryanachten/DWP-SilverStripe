<?php

  class ArticleHolder extends Page{

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
