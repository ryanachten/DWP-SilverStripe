<?php

  class ArticlePage extends Page{

    private static $can_be_root = false;
  }

  class ArticlePage_Controller extends Page_Controller{

    public function init(){

      parent::init();
      Requirements::css("{$this->ThemeDir()}/css/article.css");
    }

  }
 ?>
