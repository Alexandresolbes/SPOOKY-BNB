const sound = new Audio("Evil.mp3");

const react = document.getElementById("clickme");
const disable = () => {
  react.disable = true;
  react.innerText = "Bingo!";
  sound.play();
};
react.addEventListener("click", disable);
