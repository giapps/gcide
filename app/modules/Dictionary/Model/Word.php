<?php

namespace Dictionary\Model;

use Application\Mvc\Model\Model;

class Word extends Model
{

    public function getSource()
    {
        return "word";
    }

    public function initialize()
    {
        $this->setSource("word");
    }

    public $id;
    public $word;
    public $hw;
    public $ent;
    public $parent_id;

    /**
     * @param mixed $id
     */
    public function setId($id)
    {
        $this->id = $id;
    }

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    public function getWord(){
        return $this->word;
    }

    public function setWord($word){
        $this->word = $word;
    }

    public function getHw(){
        return $this->hw;
    }

    public function setHw($hw){
        $this->hw = $hw;
    }

    public function getEnt(){
        return $this->ent;
    }

    public function setEnt($ent){
        $this->ent = $ent;
    }

}
