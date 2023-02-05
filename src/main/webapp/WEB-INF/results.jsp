<%@ page import="model.Canzone" %><%--
  Created by IntelliJ IDEA.
  User: migli
  Date: 07/01/2023
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Risultati</title>
    <script type='text/javascript' src='//www.midijs.net/lib/midi.js'></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container">
<%
Canzone c1 = (Canzone) request.getAttribute("canzone1");
Canzone c2 = (Canzone) request.getAttribute("canzone2");
int[] array = (int[]) request.getAttribute("editDistanceArray");
%>
    <figure class="text-center">
        <h1 class="display-5">Distanza tra <br><%=c1.getTitoloArtista()%> <br>e<br> <%=c2.getTitoloArtista()%></h1>
    </figure>
    <div class="card">
            <%
            if (array[0]!=-1 && array[1]==-1){
            %>
        <div class="card-header">
            Note senza durata
        </div>
        <div class="card-body">
            <p class="card-text">La similarita tra le note (senza considerare la durata) è <%=array[0]%></p>
            <p class="card-text">La barra sottostante mostra quanto i brani sono simili sulla base del criterio scelto. Più la barra è colorata, più i brani sono simili</p>
            <div class="progress">
                <%
                    if (array[0]>100){
                %>
                <div class="progress-bar bg-info" role="progressbar" style="width: 0%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
            <%
                }else{
            %>
                <div class="progress-bar bg-info" role="progressbar" style="width: <%=100-array[0]%>%" aria-valuenow="<%=array[0]%>" aria-valuemin="0" aria-valuemax="100"></div>
                <%
                    }
                %>
            </div>
            <%
                if(array[0]==0){
            %>
            <p class="card-text">Le due canzoni sono uguali.</p>
            <%
                }else if(array[0]<=30 && array[0]!=0){
            %>
            <p class="card-text">Tra le due canzoni c'è un possibile plagio.</p>
            <%
                }else if(array[0]>30 && array[0]<=50){
            %>
            <p class="card-text">Le due canzoni sono molto somiglianti.</p>
            <%
                }else if(array[0]>50 && array[0]<=75){
            %>
            <p class="card-text">C'è qualche somiglianza tra le due canzoni.</p>
            <%
                } else if(array[0]>75){
            %>
            <p class="card-text">Le due canzoni sono molto diverse.</p>
        </div>
        <%
                }
            }
        %>

        <%
            if (array[1]!=-1 && array[0]==-1){
        %>
        <div class="card-header">
            Note con durata
        </div>
        <div class="card-body">
            <p class="card-text">La similarita tra le note (considerando la durata) è <%=array[1]%></p>
            <p class="card-text">La barra sottostante mostra quanto i brani sono simili sulla base del criterio scelto. Più la barra è colorata, più i brani sono simili</p>
            <div class="progress">
                <%
                    if (array[1]>100){
                %>
                <div class="progress-bar bg-info" role="progressbar" style="width: 0%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                <%
                }else{
                %>
                <div class="progress-bar bg-info" role="progressbar" style="width: <%=100-array[1]%>%" aria-valuenow="<%=array[1]%>" aria-valuemin="0" aria-valuemax="100"></div>
                <%
                    }
                %>
            </div><%
            if(array[1]==0){
        %>
            <p class="card-text">Le due canzoni sono uguali.</p>
            <%
            }else if(array[1]<=30 && array[1]!=0){
            %>
            <p class="card-text">Tra le due canzoni c'è un possibile plagio.</p>
            <%
            }else if(array[1]>30 && array[1]<=50){
            %>
            <p class="card-text">Le due canzoni sono molto somiglianti.</p>
            <%
            }else if(array[1]>50 && array[1]<=75){
            %>
            <p class="card-text">C'è qualche somiglianza tra le due canzoni.</p>
            <%
            } else if(array[1]>75){
            %>
            <p class="card-text">Le due canzoni sono molto diverse.</p>
        </div>
        <%
                }
            }
        %>
        </div>

        <%
            if (array[2]!=-1 && array[1]==-1){
        %>
        <div class="card-header">
            Intervalli
        </div>
        <div class="card-body">
            <p class="card-text">La similarita tra gli intervalli è <%=array[2]%></p>
            <p class="card-text">La barra sottostante mostra quanto i brani sono simili sulla base del criterio scelto. Più la barra è colorata, più i brani sono simili</p>
            <div class="progress">
                <%
                    if (array[2]>100){
                %>
                <div class="progress-bar bg-info" role="progressbar" style="width: 0%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                <%
                }else{
                %>
                <div class="progress-bar bg-info" role="progressbar" style="width: <%=100-array[2]%>%" aria-valuenow="<%=array[2]%>" aria-valuemin="0" aria-valuemax="100"></div>
                <%
                    }
                %>
            </div>
            <%
                if(array[2]==0){
            %>
            <p class="card-text">Le due canzoni sono uguali.</p>
            <%
            }else if(array[2]<=30 && array[2]!=0){
            %>
            <p class="card-text">Tra le due canzoni c'è un possibile plagio.</p>
            <%
            }else if(array[2]>30 && array[2]<=50){
            %>
            <p class="card-text">Le due canzoni sono molto somiglianti.</p>
            <%
            }else if(array[2]>50 && array[2]<=75){
            %>
            <p class="card-text">C'è qualche somiglianza tra le due canzoni.</p>
            <%
            } else if(array[2]>75){
            %>
            <p class="card-text">Le due canzoni sono molto diverse.</p>
        </div>
    <%
            }
        }
    %>

        <%
            if (array[0]!=-1 && array[1]!=-1 && array[2]!=-1){
        %>
        <div class="card-header">
            Note senza e con durata, intervalli
        </div>
        <div class="card-body">
            <p class="card-text">La similarita tra le note (senza considerare la durata) è <%=array[0]%></p>
            <p class="card-text">La similarita tra le note (considerando la durata) è <%=array[1]%></p>
            <p class="card-text">La similarita tra gli intervalli è <%=array[2]%></p>
            <p class="card-text">Le barre sottostanti mostrano quanto i brani sono simili sulla base dei criteri scelti. Più le barre sono colorate, più i brani sono simili</p>
            <div class="progress">
                <%
                    if (array[0]>100){
                %>
                <div class="progress-bar bg-info" role="progressbar" style="width: 0%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                <%
                }else{
                %>
                <div class="progress-bar bg-info" role="progressbar" style="width: <%=100-array[0]%>%" aria-valuenow="<%=array[0]%>" aria-valuemin="0" aria-valuemax="100"></div>
                <%
                    }
                %>
            </div>
            <%
                if(array[0]==0){
            %>
            <p class="card-text">Le due canzoni sono uguali sulla base delle note senza durata.</p>
            <%
            }else if(array[0]<=30 && array[0]!=0){
            %>
            <p class="card-text">Tra le due canzoni, sulla base delle note senza durata, c'è un possibile plagio.</p>
            <%
            }else if(array[0]>30 && array[0]<=50){
            %>
            <p class="card-text">Le due canzoni, sulla base delle note senza durata, sono molto somiglianti.</p>
            <%
            }else if(array[0]>50 && array[0]<=75){
            %>
            <p class="card-text">C'è qualche somiglianza tra le due canzoni sulla base delle note senza durata.</p>
            <%
            } else if(array[0]>75){
            %>
            <p class="card-text">Le due canzoni, sulla base delle note senza durata, sono molto diverse.</p>
        </div>
<%
        }
%>
            <br>
            <div class="progress">
                <%
                    if (array[1]>100){
                %>
                <div class="progress-bar bg-info" role="progressbar" style="width: 0%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                <%
                }else{
                %>
                <div class="progress-bar bg-info" role="progressbar" style="width: <%=100-array[1]%>%" aria-valuenow="<%=array[1]%>" aria-valuemin="0" aria-valuemax="100"></div>
                <%
                    }
                %>
            </div>
            <%
                if(array[1]==0){
            %>
            <p class="card-text">Le due canzoni, sulla base delle note considerando anche la durata, sono uguali.</p>
            <%
            }else if(array[1]<=30 && array[1]!=0){
            %>
            <p class="card-text">Tra le due canzoni c'è un possibile plagio, sulla base delle note considerando anche la durata.</p>
            <%
            }else if(array[1]>30 && array[1]<=50){
            %>
            <p class="card-text">Le due canzoni, sulla base delle note considerando anche la durata, sono molto somiglianti.</p>
            <%
            }else if(array[1]>50 && array[1]<=75){
            %>
            <p class="card-text">C'è qualche somiglianza tra le due canzoni, sulla base delle note considerando anche la durata.</p>
            <%
            } else if(array[1]>75){
            %>
            <p class="card-text">Le due canzoni, sulla base delle note considerando anche la durata, sono molto diverse.</p>
            <%
                    }
            %>
            <br>
            <div class="progress">
                <%
                    if (array[2]>100){
                %>
                <div class="progress-bar bg-info" role="progressbar" style="width: 0%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                <%
                }else{
                %>
                <div class="progress-bar bg-info" role="progressbar" style="width: <%=100-array[2]%>%" aria-valuenow="<%=array[2]%>" aria-valuemin="0" aria-valuemax="100"></div>
                <%
                    }
                %>
            </div>
            <%
                if(array[2]==0){
            %>
            <p class="card-text">Le due canzoni, sulla base degli intervalli, sono uguali.</p>
            <%
            }else if(array[2]<=30 && array[2]!=0){
            %>
            <p class="card-text">Tra le due canzoni c'è un possibile plagio, sulla base degli intervalli.</p>
            <%
            }else if(array[2]>30 && array[2]<=50){
            %>
            <p class="card-text">Le due canzoni, sulla base degli intervalli, sono molto somiglianti.</p>
            <%
            }else if(array[2]>50 && array[2]<=75){
            %>
            <p class="card-text">C'è qualche somiglianza tra le due canzoni, sulla base degli intervalli.</p>
            <%
            } else if(array[2]>75){
            %>
            <p class="card-text">Le due canzoni, sulla base degli intervalli, sono molto diverse.</p>
            <%
                    }
            %>
        <%
            }
        %>

<div class="row justify-content-md-center">
        <div class="col-md-auto">
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title"><%=c1.getTitoloArtista()%></h5>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            <a href="#" class="card-link" onclick="MIDIjs.play('<%=c1.getUrl()%>');" style="text-decoration: none">
                                Riproduci tutta la canzone </a>
                            <br>
                            <a href="#" onclick="MIDIjs.stop();" style="text-decoration: none">
                                Stop </a>
                        </li>
                        <li class="list-group-item">
                            Riproduci solo la parte considerata per la similarità
                            <audio controls style="width: 230px">
                                <source src="<%=c1.getUrlM()%>" type="audio/mp3">
                            </audio>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-md-auto">
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title"><%=c2.getTitoloArtista()%></h5>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            <a href="#" class="card-link" onclick="MIDIjs.play('<%=c2.getUrl()%>');" style="text-decoration: none">
                                Riproduci tutta la canzone
                            </a>
                            <br>
                            <a href="#" onclick="MIDIjs.stop();" style="text-decoration: none">
                                Stop </a>
                        </li>
                        <li class="list-group-item">
                            Riproduci solo la parte considerata per la similarità
                            <audio controls style="width: 230px">
                                <source src="<%=c2.getUrlM()%>" type="audio/mp3">
                            </audio>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
<br>
<button type="button" class="btn btn-outline-light">
    <a href="index.html" style="text-decoration: none">Torna alla home</a>
</button>
</div>
</body>
</html>
