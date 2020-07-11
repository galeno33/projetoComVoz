document.getElementById("falar").addEventListener("click",()=>{
   ler(document.getElementById("menssage").innerText);
});

function ler(menssage){
    speechSynthesis.speak(new SpeechSynthesisUtterance(menssage));
}
//codigo para implementar o api de voz na linha 172 do index.html 
document.getElementById("litoral").addEventListener("click", ()=>{
    litoranea(document.getElementById("litoral").innerText);
});

function litoranea(litoral){
    speechSynthesis.speak(new SpeechSynthesisUtterance(litoral));
}

//codigo para implementar o api de voz na linha 196 do index.html 
document.getElementById("espigaocosteiro").addEventListener("click", ()=>{
    costeiro(document.getElementById("espigaocosteiro").innerText);
});

function costeiro(espigaocosteiro){
    speechSynthesis.speak(new SpeechSynthesisUtterance(espigaocosteiro));
}

//codigo para implementar o api de voz na linha 215 do index.html 
document.getElementById("centro").addEventListener("click", ()=>{
    costeiro(document.getElementById("centro").innerText);
});

function costeiro(centro){
    speechSynthesis.speak(new SpeechSynthesisUtterance(centro));
}