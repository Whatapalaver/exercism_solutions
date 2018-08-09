//
// This is only a SKELETON file for the "Leap" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var Year = function (value) {
//
this.year = value;
//
};

Year.prototype.isLeap = function () {
/*text
  on every year that is evenly divisible by 4
    except every year that is evenly divisible by 100
      unless the year is also evenly divisible by 400
*/
//
if (this.year % 400 === 0)  {return true;
} else if (this.year % 100 === 0) {return false;
} else if (this.year % 4 === 0) {return true;
} else return false;
//
};

module.exports = Year;
