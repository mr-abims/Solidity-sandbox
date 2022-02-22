function average(arrayOfNumbers) {
    let a = 0;
    for(let i = 0;i < arrayOfNumbers.length; i++){
        a = a + arrayOfNumbers[i];
    }
    console.log(a / arrayOfNumbers.length)
    return a / arrayOfNumbers.length;
    
}

average([1,4,5,6,7,8,])