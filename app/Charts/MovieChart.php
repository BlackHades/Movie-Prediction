<?php

namespace App\Charts;

use ConsoleTVs\Charts\Classes\ChartJs\Chart;

class MovieChart extends Chart
{
    /**
     * Initializes the chart.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
//        $this->displayLegend(false);
        $this->labels(['Success Rate', 'Failure Rate'])
            ->options(['legend' => ['display' => true]]);
    }

}
