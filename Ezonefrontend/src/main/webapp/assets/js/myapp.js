$(function() {



	// SOLVEING THE ACTIVE MENU PROBLEM

	switch (menu) {

	case 'Aboutus':

		$('#about').addClass('active');

		break;

	case 'Contactus':

		$('#contact').addClass('active');

		break;

	break;

default:

	$('#home').addClass('active');



	break;

}



});