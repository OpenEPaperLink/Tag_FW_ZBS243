<?php

exec("cat board/tagtype.h | grep \"#ifdef\" | grep M2_ZBS", $builds);

print_r($builds);

$ver = exec("cat settings.h | grep FW_VERSION | grep -v SUFFIX");
list($bla, $ver) = explode("FW_VERSION", $ver);
$ver = trim($ver);
$ver = substr($ver,2);

foreach($builds as $build){
	$build = substr($build, 7);
	echo "Now building $build...\n";
	exec("make clean > /dev/null");
	exec("make BUILD=".$build."> /dev/null");
	exec("mv main.bin ../binaries/".$build.".bin");
}

