const mergeSort = function (arrA, arrB) {
  let singleSorted = [];

  while (arrA.length && arrB.length) {
    if (arrA[0] < arrB[0]) {
      singleSorted.push(arrA[0]);
      arrA.shift();
    } else {
      singleSorted.push(arrB[0]);
      arrB.shift();
    }
  }
};

let arrA = [4, 9, 1, 7];
let arrB = [4, 6, 7, 2];

let array = mergeSort(arrA, arrB);
console.log(array);
