function blastOff(number) {
	while (number > 0) {
		console.log(number);
		number -= 1;
	}
  
	if (number === 0) {
		console.log("Blast Off");
	}

	return number;
}

blastOff(10);
