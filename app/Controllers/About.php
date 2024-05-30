<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\Model_Biodata;


class About extends BaseController
{
    public function index()
    {
        // Membuat instance dari Model_Biodata
        $biodataModel = new Model_Biodata();

        // Mengambil data biodata menggunakan metode getBiodata()
        $data = $biodataModel->getBiodata();

        // Mengirim data ke tampilan personal/about
        return view('personal/about', ['data' => $data]);
    }
}
