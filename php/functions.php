<?php

include realpath(__DIR__ . '/../../Evo/php/functions.php');

function customHauptmerkmale($params, &$smarty) {
    if ($params['Hauptmerkmale']) {
        $MerkmalFilter = $params['MerkmalFilter'];
        $Hauptmerkmale = explode(',', $params['Hauptmerkmale']);

        $Hauptmerkmale_helper = array();
        foreach ($Hauptmerkmale as $kMerkmal) {
            $Hauptmerkmale_helper[$kMerkmal] = new stdClass();
        }

        $Output = new stdClass();
        $Output->haupt = $Hauptmerkmale_helper;
        $Output->weitere = array();

        if (isset($Hauptmerkmale) && !empty($Hauptmerkmale)) {
            foreach ($MerkmalFilter as $Merkmal) {
                $kMerkmal = $Merkmal->kMerkmal;
                if (in_array($kMerkmal, $Hauptmerkmale)) {
                    $Output->haupt[$kMerkmal] = $Merkmal;
                } else {
                    $Output->weitere[$kMerkmal] = $Merkmal;
                }
            }
        } else {
            $Output->weitere = $MerkmalFilter;
        }
        foreach ($Output->haupt as $kMerkmal => $Merkmal) {
            if (!isset($Merkmal->kMerkmal)) {
                unset($Output->haupt[$kMerkmal]);
            }
        }

        $smarty->assign($params['return'], $Output);
    }
}

$smarty->register_function("customHauptmerkmale", "customHauptmerkmale");