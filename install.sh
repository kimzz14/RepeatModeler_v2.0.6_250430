conda create -n RepeatModeler_v2.0.6_250430 repeatmodeler=2.0.6=pl5321hdfd78af_0 repeatmasker=4.1.8=pl5321hdfd78af_0

#bioconda/noarch::repeatmasker-4.1.8-pl5321hdfd78af_0
#bioconda/noarch::repeatmodeler-2.0.6-pl5321hdfd78af_0

#RECON
#bioconda/linux-64::recon-1.08-h7b50bb2_9

#RepeatScout
#bioconda/linux-64::repeatscout-1.0.7-h7b50bb2_1

#TRF
#bioconda/linux-64::trf-4.09.1-h7b50bb2_7

#RMBlast
#bioconda/linux-64::rmblast-2.14.1-hdb21ba3_2

Bug Fix - Could not open *.translation file for reading!

Before
----------------------------------------------------------
my $genomeDB = $options{'database'};

if ( -s $genomeDB ) {

  $genomeDB = File::Spec->rel2abs($genomeDB);

}elsif ( -s "$genomeDB.nsq" ){

  $genomeDB = File::Spec->rel2abs("$genomeDB.nsq");

}

$genomeDB =~ s/(.+)\.n[nihs][rndiq]$/$1/;
----------------------------------------------------------

After
----------------------------------------------------------
my $genomeDB = $options{'database'};

if ( -s $genomeDB ) {

  $genomeDB = File::Spec->rel2abs($genomeDB);

}elsif ( -s "$genomeDB.njs" ){

  $genomeDB = File::Spec->rel2abs("$genomeDB.njs");

}

$genomeDB =~ s/(.+)\.n[nihsj][rndiqs]$/$1/;
----------------------------------------------------------
