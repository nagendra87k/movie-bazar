<?php
include 'vendor/autoload.php';

use Dilab\Network\SimpleRequest;
use Dilab\Network\SimpleResponse;
use Dilab\Resumable;

$request = new SimpleRequest();
$response = new SimpleResponse();

$resumable = new Resumable($request, $response);
$resumable->tempFolder = '../../../uploads/videos/tmps';
$resumable->uploadFolder = '../../../uploads/videos';
$resumable->setFilename('rest');
$resumable->process();
if (true === $resumable->isUploadComplete()) { // true when the final file has been uploaded and chunks reunited.
    $extension = $resumable->getExtension();
    echo $filename = $resumable->getFilename();
    die;
}