<?php

  class ArticlePage extends Page{

    // Article metadata fields, assigned to CMS below
    private static $db = array(
      'Date' => 'Date',
      'Teaser' => 'Text',
      'Author' => 'Varchar'
    );

    // Prevent an article page from being created outside of the article page holder
    private static $can_be_root = false;

    // Assign db fields to CMS UI
    public function getCMSFields(){

      $fields = parent::getCMSFields();

      $fields->addFieldToTab('Root.Main', DateField::create('Date', 'Date of article')
        ->setConfig('showcalendar', true),
        Content);
      $fields->addFieldToTab('Root.Main', TextareaField::create('Teaser'), Content);
      // FIXME: need to be able to assign multiple authors to a single article
      $fields->addFieldToTab('Root.Main', TextField::create('Author', 'Author of article'), Content);

      return $fields;
    }
  }

  class ArticlePage_Controller extends Page_Controller{

    public function init(){

      parent::init();
      Requirements::css("{$this->ThemeDir()}/css/article.css");
    }

  }
 ?>
