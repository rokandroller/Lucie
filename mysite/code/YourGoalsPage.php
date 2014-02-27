<?php

class YourGoalsPage extends Page {

    public static $has_many = array(
        'YourGoals' => 'YourGoal' 
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $config = GridFieldConfig_RecordEditor::create();
        
                
        $config->getComponentByType('GridFieldDataColumns')->setDisplayFields(array(
                          
            'Thumbnail' => 'Thumbnail',
            'TextField' => 'Title',
            'TextareaField' => 'Discription'
             ));
        $YourGoalsField = new GridField(
                'YourGoals', 'YourGoals', $this->YourGoals(), $config
        );
        $fields->addFieldToTab('Root.YourGoals', $YourGoalsField);
        return $fields;
    }

} 
class YourGoalsPage_Controller extends Page_Controller {
    }


