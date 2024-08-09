function volte(event){
  window.location.replace('login.html')
}

document.addEventListener('keypress', function(event) {
  if (event.key === 'Enter') {
    window.location.replace('login.html');
  }
});
