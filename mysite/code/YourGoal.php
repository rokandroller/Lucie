<?php

class YourGoal extends DataObject {

    public static $db = array(
        'TextField' => 'Varchar(255)',
        'TextareaField' => 'Text'
    );
    
    
    public static $has_one = array(
        'YourGoalsPage' => 'YourGoalsPage',
        'Photo' => 'Image',
    );

    public function getCMSFields() {
        return new FieldList(
                new UploadField('Photo', 'Image'),
                new TextField('TextField', 'Title'), 
                new TextareaField('TextareaField', 'Discription')
               
        );
    }
    //resize image for small list 
      public function getThumbnail() {
      if ($Image = $this->Photo()) {
         return $Image->CMSThumbnail();
        } else {
         return '(No Image)';
      }
   } 

}