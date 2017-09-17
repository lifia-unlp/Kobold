instance creation
from: aNoDefaultValue
	^ (super from: aNoDefaultValue)
		newLength: aNoDefaultValue textLengthMean + aNoDefaultValue textLengthStandardDeviation;
		yourself