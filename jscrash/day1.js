function average(arrayOfNumbers) {
    let a = 0;
    for(let i = 0;i < arrayOfNumbers.length; i++){
        a = a + arrayOfNumbers[i];
    }
    console.log(a / arrayOfNumbers.length)
    return a / arrayOfNumbers.length;
    
}

average([1,4,5,6,7,8,])



function meanOfMultipleArrays(allArrays){
    let newArr =[];
    for(let i = 0; i<allArrays.length; i++){
        let avr = average(allArrays[i])
        newArr.push(avr)
    }
    console.log(newArr)
    console.log(average(newArr))

}
meanOfMultipleArrays([
    [2,4],
    [4,9],
    [0,3],
    [5,9]
    [2,1],
    [3,9],
    [5,7],
    


])


[[2,4,5],[1.5,6],[6,9,0]]