opendir(DIR,"./");
@FILES=readdir(DIR);
foreach(@FILES)
{	if(/\.txt/)
	{	$filename=$_;
		$head=`head -1 $_`;
		@head=split(/\s/,$head);
		foreach(@head)
		{	print $filename,"\t",$_,"\n";
		}
	}
}
