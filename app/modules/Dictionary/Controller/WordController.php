<?php

namespace Dictionary\Controller;

use Application\Mvc\Controller;
use Dictionary\Model\Word;
use Phalcon\Exception;
use Phalcon\Mvc\Model\Query;

class WordController extends Controller
{
    public function lookupAction(){
        if ($this->request->isPost() == true) {
            if ($this->request->isAjax() == true) {

                $s = $this->request->getPost("s");
                //$s = mysqli_escape_string()

                $temp[] = array();
                $results = array();

                $conditions = "ent = :ent:";

                $parameters = array(
                    "ent" => $s
                );

                $words = Word::find(
                    array(
                        $conditions,
                        "bind" => $parameters
                    )
                );


                if($words->count()){
                    foreach ($words as $word) {
                        $results[] = $word->word;
                        $defs = Word::find(
                            array("parent_id=$word->id")
                        );
                        foreach($defs as $_def){
                            $results[] = $_def->word;
                        }
                    }

                    echo "<h1 class='centered'>We find <strong>" .count($results). "</strong> definition(s) for <strong>$s</strong></h1>";
                    foreach($results as $result){
                        echo $result;
                    }
                } else {
                    echo "<h1 class='centered'>We could not find any definition for <strong>$s</strong></h1>";
                }
            }
        }
    }
}
