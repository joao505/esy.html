    let Nível = 1;
    let ImagemCeu = document.getElementById("ceu");
    localStorage.setItem(`level_${cpf}`, Nível);
    const cpf = currentUserCPF;
    const userData = JSON.parse(localStorage.getItem(cpf));
    userData.level = Nível;
    localStorage.setItem(cpf, JSON.stringify(userData));
    const users = JSON.parse(localStorage.getItem('users'));
    const userIndex = users.findIndex(user => user.cpf === cpf);
    users[userIndex].level = Nível;
    localStorage.setItem('users', JSON.stringify(users));

function voltar(addEventListener) {
    window.location.replace('login.html')
}

function verificar(bt){
    if (Nível == 1) {
        if (bt.textContent == 'SIM') {
            location.href = "errou0.html";
        } else {
            if (Nível == 1) {
                ImagemCeu.src = "fotos IA/IA1.jpg";
                Nível++;
            }
        }
    } else if (Nível == 2) {
        if (bt.textContent == 'NÃO') {
            location.href = "errou1.html";
            
        } else {
            if (Nível == 2) {
                ImagemCeu.src = "fotos nIA/nao IA2.jpg";
                Nível++;
            }
        }
    }
    else if (Nível == 3) {
        if (bt.textContent == 'SIM') {
            location.href = "errou0.html";
            
        } else {
            if (Nível == 3) {
                ImagemCeu.src = "fotos IA/IA2.jpg";
                Nível++;
            }
        }
    }
    else if (Nível == 4) {
        if (bt.textContent == 'NÃO') {
            location.href = "errou1.html";
            
        } else {
            if (Nível == 4) {
                ImagemCeu.src = "fotos IA/IA3.jpg";
                Nível++;
            }
        }
    }

    else if (Nível == 5) {
        if (bt.textContent == 'NÃO') {
            location.href = "errou1.html";
            
        } else {
            if (Nível == 5) {
                ImagemCeu.src = "fotos nIA/nao IA3.jpg";
                Nível++;
            }
        }
    }

    else if (Nível == 6) {
        if (bt.textContent == 'SIM') {
            location.href = "errou0.html";
            
        } else {
            if (Nível == 6) {
                ImagemCeu.src = "fotos IA/IA4.jpg";
                Nível++;
            }
        }
    }

    else if (Nível == 7) {
        if (bt.textContent == 'NÃO') {
            location.href = "errou1.html";
            
        } else {
            if (Nível == 7) {
                ImagemCeu.src = "fotos IA/IA5.jpg";
                Nível++;
            }
        }
    }

    else if (Nível == 8) {
        if (bt.textContent == 'NÃO') {
            location.href = "errou1.html";
            
        } else {
            if (Nível == 8) {
                ImagemCeu.src = "fotos IA/IA6.jpg";
                Nível++;
            }
        }
    }

    else if (Nível == 9) {
        if (bt.textContent == 'NÃO') {
            location.href = "errou1.html";
        } else {
            if(Nível == 9) {
                ImagemCeu.src = "fotos IA/IA7.jpg";
                Nível++;
            }
        }
    }

    else if (Nível == 10) {
        if (bt.textContent == 'NÃO') {
            location.href = "errou1.html";
        } else {
            if(Nível == 10) {
                ImagemCeu.src = "fotos nIA/nao IA4.jpg";
                Nível++;
            }
        }
    }

    else if (Nível == 11) {
        if (bt.textContent == 'SIM') {
            location.href = "errou0.html";
        } else {
            if(Nível == 11) {
                ImagemCeu.src = "fotos IA/IA8.jpg";
                Nível++;
        }

}
}

else if (Nível == 12) {
    if (bt.textContent == 'NÃO') {
        location.href = "errou1.html";
    } else {
        if(Nível == 12) {
            ImagemCeu.src = "fotos nIA/nao IA7.jpg";
            Nível++;
    }

}
}

else if (Nível == 13) {
    if (bt.textContent == 'SIM') {
        location.href = "errou0.html";
    } else {
        if(Nível == 13) {
            ImagemCeu.src = "fotos nIA/nao IA5.jpg";
            Nível++;
    }
}
}

else if (Nível == 14) {
    if (bt.textContent == 'SIM') {
        location.href = "errou0.html";
    } else {
        if(Nível == 14) {
            ImagemCeu.src = "fotos nIA/nao IA6.jpg";
            Nível++;
    }
}
}

else if (Nível == 14) {
    if (bt.textContent == 'SIM') {
        location.href = "errou0.html";
    } else {
        if(Nível == 14) {
            ImagemCeu.src = "fotos nIA/nao IA6.jpg";
            Nível++;
    }
}
}

else if (Nível == 15) {
    if (bt.textContent == 'SIM') {
        location.href = "errou0.html";
    } else {
        if(Nível == 15) {
            ImagemCeu.src = "fotos IA/IA9.jpg";
            Nível++;
    }
}
}

else if (Nível == 16) {
    if (bt.textContent == 'NÃO') {
        location.href = "errou1.html";
    } else {
        if(Nível == 16) {
            ImagemCeu.src = "fotos IA/IA10.jpg";
            Nível++;
    }
}
}

else if (Nível == 17) {
    if (bt.textContent == 'NÃO') {
        location.href = "errou1.html";
    } else {
        if(Nível == 17) {
            ImagemCeu.src = "fotos nIA/nao IA9.jpg";
            Nível++;
    }
}
}

else if (Nível == 18) {
    if (bt.textContent == 'SIM') {
        location.href = "errou0.html";
    } else {
        if(Nível == 18) {
            ImagemCeu.src = "fotos nIA/nao IA10.jpg";
            Nível++;
    }
}
}

else if (Nível == 19) {
    if (bt.textContent == 'SIM') {
        location.href = "errou0.html";
    } else {
        if(Nível == 19) {
            ImagemCeu.src = "fotos nIA/nao IA11.jpg";
            Nível++;
    }
}
}

else if (Nível == 20) {
    if (bt.textContent == 'SIM') {
        location.href = "errou0.html";
    } else {
        if(Nível == 20) {
            ImagemCeu.src = "fotos IA/IA11.jpg";
            Nível++;
    }
}
}

else if (Nível == 21) {
    if (bt.textContent == 'NÃO') {
        location.href = "errou1.html";
    } else {
        if(Nível == 21) {
            ImagemCeu.src = "fotos IA/IA12.jpg";
            Nível++;
    }
}
}

else if (Nível == 22) {
    if (bt.textContent == 'SIM') {
       alert("Parabéns!")
       location.href="parabens.html"
    } else {
        if(Nível == 22) {
            location.href="errou1.html"
    }
}
}

}
//#FINAL
//else if (Nível == '' ) {
//if (bt.textContent == ') {
//alert("Parabéns!");
//location.href = "parabens.html";
//} else {
//location.href = "errou .html";
//}
//}