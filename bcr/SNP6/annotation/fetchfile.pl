$path="https://tcga-data.nci.nih.gov/tcgafiles/ftp_auth/distro_ftpusers/anonymous/tumor/brca/bcr/minbiotab/clin/";
`wget -O html.tmp $path`;
open(INPUT,"<./html.tmp") or die "failed";
$skip=8;
$iter=0;
while(<INPUT>)
{	$iter+=1;
	next if ($iter <= $skip);
	if(($a)=($_=~/a\shref="(.*)"/))
	{
		$name=$path.$a;
		`wget $name`;
	}
	
}

