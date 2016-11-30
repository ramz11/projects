<#import "/template.ftlh" as template/>
<#import "/spring.ftl" as spring/>

<#assign additionalCss>
    <link rel="stylesheet" href="${contextroot}/assets/css/landing-page.css">
</#assign>

<@template.render additionalCss=additionalCss>

    <!-- Header -->
   <#include "header.ftlh"/>
    <!-- /.intro-header -->

    <!-- Page Content -->
	<a  name="services"></a>
    <div class="content-section-a">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">L’approche non directive créatrice MD (ANDC)</h2>
                    <p class="lead">Fondée par Colette Portelance  D. Sc. Éd., l’approche non directive créatrice (ANDC) est une approche thérapeutique humaniste inspirée par les travaux de Carl Roger,  
                    de Georgi Lozanov ainsi que de la thérapie Gestalt.<br>
                     Elle favorise chez l’aidé la connaissance de soi tout en l’emmenant à puiser en lui et créer ses propres ressources afin de vivre des relations plus satisfaisantes avec lui-même 
                     ainsi que son entourage. Tel que le nom l’indique, c’est une approche non directive.  Donc, le thérapeute n’offre aucun conseil. Selon cette approche, 
                     l’aidé détient en lui le potentiel et la capacité à puiser dans ses ressources les réponses qui lui conviennent le mieux. Ceci l’emmène à récupérer le pouvoir sur sa vie 
                     et retrouver sa liberté. </p>
                </div>
                <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                    <img class="img-responsive" src="${contextroot}/assets/img/side.jpg" alt="drawing of planet earth">
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-a -->
 <div class="content-section-b">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">Quel est le rôle du Thérapeute en relation d’aide</h2>
                    <p class="lead">Le thérapeute offre une écoute empathique et respectueuse au rythme de l’aidé tout au long de son cheminement. Son rôle est de l’accompagner dans son vécu émotif dans l’ici et maintenant de la relation avec sensibilité,  sans aucune interprétation ni jugements. Chaque
									 rencontre offre à l’aidé une expérience relationnelle saine et authentique dans un environnement de confidentialité et de respect. 
									 Il offre un effet miroir en montrant objectivement à l’aidé son fonctionnement afin de favoriser une meilleur connaissance de soi. </p>
                </div>
                <div class="col-lg-5 col-sm-pull-6  col-sm-6">
                    <img class="img-responsive" src="${contextroot}/assets/img/picture1.png" alt="picture of butterflies">
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-b -->

    <div class="content-section-a">

        <div class="container">

            <div class="row">
                <div class="col-lg-5 col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">Qui suis-je</h2>
                    <p class="lead">Passionnée des relations humaines, j’ai commencé mon cheminement d’études en sciences sociales avec une spécialisation approfondie en psychologie.
                     Par la suite, j’ai croisé sur mon chemin l’approche non directive créatrice qui m’a permis de déployer mon être et me créer en tant que thérapeute en relation d’aide avec ma propre 
                     couleur. C’est avec beaucoup de sensibilité, de respect et en toute confidentialité qu’il me fera plaisir de vous accompagner dans tout ce que vous traversez dans le moment présent. 
                     Tel qu’un papillon en pleine transformation dans son cocon,  suite aux efforts qu’il met en place afin de déchirer son cocon, il arrive à entrainer ses ailes. 
                     C’est ce qui lui permet de prendre son vol. Tout cela pour dire que c’est un privilège pour moi de pouvoir être témoin de cette transformation et découvrir ce trésor qui se cache en vous. </p>
                </div>
                <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                    <img class="img-responsive" src="${contextroot}/assets/img/pic1.png" alt="picture of a butterfly">
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-a -->

	<a  name="contact"></a>
    <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <h2</h2>
                </div>
                 <div class="col-lg-6">
                   
                </div>
                </div>
            </div>
        </div>
        <!-- /.container -->
    </div>
    <!-- /.banner -->
</@template.render>