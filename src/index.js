function helloWorld() {
  const element = document.createElement("div");

  element.innerHTML = "WEBPACK_PROJECT Hello World!!";

  return element;
}

document.body.appendChild(helloWorld());
