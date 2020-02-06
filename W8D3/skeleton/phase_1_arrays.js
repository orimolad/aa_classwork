Array.prototype.uniq = function(){
    let arr2 = [];
    
    this.forEach((ele) =>{  
        if (!arr2.includes(ele)){
            arr2.push(ele);
        };
    });
    return arr2;
};


Array.prototype.twoSum = function(){
    let arr = [];
    let sum = 0;
    for (let i = 0 ; i < (this.length -1) ; i++){
        for (let j = (i + 1) ; j < this.length ; j++){
            sum = this[i] + this[j];
            if (sum === 0 ){
                arr.push([i,j]);
                debugger;
            }

        }

    };
    return arr;
}

let arr = [1,2,2,3,-3,-1,5];
console.log(arr.twoSum());


