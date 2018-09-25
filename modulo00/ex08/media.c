

double average_vetor (double v[], int n) {

	int i;
	double soma = 0;

	for(i = 0; i < n; i++) {
		soma += v[i];
	}

	return soma / i;

};