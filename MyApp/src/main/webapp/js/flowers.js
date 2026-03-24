function createFlower() {

    const flower = document.createElement("div");
    flower.innerHTML = "🌸";

    flower.style.position = "fixed";
    flower.style.left = Math.random() * window.innerWidth + "px";
    flower.style.top = "-20px";
    flower.style.fontSize = "25px";

    document.body.appendChild(flower);

    let fall = setInterval(function(){

        let top = parseInt(flower.style.top);

        if(top > window.innerHeight){
            clearInterval(fall);
            flower.remove();
        }

        flower.style.top = top + 5 + "px";

    },50);
}

setInterval(createFlower,300);
