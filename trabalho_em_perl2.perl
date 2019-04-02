#!/usr/bin/perl

use 5.010;
use strict;


my $notap1;
my $notap2;
my $notama1;
my $notma2;
my $notamb1;
my $notamb2;
my $quantfaltas;
my $quantaulas;
my $mediafinala1;
my $mediafinala2;
my $mediafinala3;
my $presenca = 100;



print "Quantidade de Aulas no Semestre \n";
my $quantaulas=<>;
chomp $quantaulas;

print "Quantidade de Faltas no Semestre \n";
my $quantfaltas=<>;
chomp $quantfaltas;
$quantfaltas = ($quantfaltas*100);
$presenca = $quantfaltas/$quantaulas;
$presenca = 100 - $presenca;


print "Digite a sua Nota da Prova N1 \n";
my $notap1=<>;
chomp $notap1;

$notap1 = ($notap1*70)/100;

print "Digite a Nota do primeiro trabalho da N1\n";
my $notama1=<>;
chomp $notama1;

$notama1 = ($notama1*20)/100;
print "Digite a Nota do segundo trabalho da N1 \n";
my $notamb1=<>;
chomp $notamb1;

$notamb1 = ($notamb1*10)/100;


	$mediafinala1 = $notap1 + $notama1 + $notamb1;


	print "Digite a sua Nota da Prova N2 \n";
	my $notap2=<>;
	chomp $notap2;


	$notap2 = ($notap2*70)/100;


	print "Digite a Nota do primeiro trabalho da N2\n";
	my $notama2=<>;
	chomp $notama2;


	$notama2 = ($notama2*20)/100;

	print "Digite a Nota do segundo trabalho da N2 \n";
	my $notamb2=<>;
	chomp $notamb2;

	$notamb2 = ($notamb2*10)/100;
	
	
		$mediafinala2 = $notap2 + $notama2 + $notamb2;
		
				$mediafinala3 = ($mediafinala1+ 2* $mediafinala2)/3;
		
		

				if (( $presenca >= 75 ) and ($mediafinala3>= 5)){
			
				print "Aluno aprovado !!!! \n ";
				
				print "Media:  $mediafinala3 \n";
				
				print "Presenca do aluno: $presenca \n";		}

			
						if (( $presenca >= 75 ) and ($mediafinala3<5) and ($mediafinala3 == 3)){
			
				print "Aluno de Recuperacao !!!! \n ";
				
				print "Media:  $mediafinala3 \n";
				
				print "Presenca do aluno: $presenca \n";
		}		
		
				if (( $presenca >= 75 ) and ($mediafinala3 < 3)){
			
				print "Aluno Reprovado por Nota !!!! \n ";
				
				print "Media:  $mediafinala3 \n";
				
				print "Presenca do aluno: $presenca \n";
				
		}
					if ( $presenca < 75 ){
			
				print "Aluno Reprovado por Falta !!!! \n ";
				
				print "Media:  $mediafinala3 \n";
				
				print "Presenca do aluno: $presenca \n";
		}


exit;