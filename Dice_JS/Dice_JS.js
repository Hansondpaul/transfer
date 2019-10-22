"use strict";

class Die {
    Die(s) {
        this.side = s;
    }

    drawDie(x, y, n) {
        switch (n) {
            case 6:
                fill(255);
                rect(x, y, 50, 50, 10);
                fill(0);
                switch (Math.floor(Math.random() * 6) + 1) {
                    case 1:
                        ellipse(x+25,y+25,10,10);
                        break;
                    case 2:
                        ellipse(x+10,y+10,10,10);
                        ellipse(x+40,y+40,10,10);
                        break;
                    case 3:
                        ellipse(x+25,y+25,10,10);
                        ellipse(x+10,y+10,10,10);
                        ellipse(x+40,y+40,10,10);
                        break;
                    case 4:
                        ellipse(x+10,y+10,5,5);
                        break;
                    case 5:
                        ellipse(x+10,y+10,5,5);
                        break;
                    case 6:
                        ellipse(x+10,y+10,5,5);
                        break;
                }
                break;

        }
    }
}

var count;
var sides;
var dice;
var locations;

function setup() {
    "use strict";
    createCanvas(800, 800);
    background(0);
    frameRate(1);
    count = 1;
    sides = 6;
    dice = new Array(2);
    dice[0] = new Die(6);
    dice[1] = new Die(6);
}


function draw() {
    "use strict";
    var a;
    for (a = 0; a < dice.length; a += 1) {
        dice[a].drawDie((10 + 60 * a), 375, 6);
    }
}
