#' Données du Baromètre COVID19
#'
#' Base de données issue de la septième vague d'enquête réalisée par le Baromètre COVID 19
#' (26-31 mai 2020), administrée par internet par IPSOS. Seules certaines variables ont été
#' sélectionnées.
#'
#' @format Une base de données avec 5000 individus et 54 variables :
#' \describe{
#'   \item{jour}{Jour de l'interview}
#'   \item{appareil}{Type d'appareil utilisé pour répondre au questionnaire}
#'   \item{sexe}{Genre du participant}
#'   \item{age}{Age du participant}
#'   \item{departement}{Département}
#'   \item{region}{Région}
#'   \item{agglo}{Catégorie d'agglomération}
#'   \item{emploi}{Situation professionnelle actuelle}
#'   \item{pcs}{Catégorie Socio-Professionnelle du participant}
#'   \item{marital}{Situation familiale}
#'   \item{covid_mort}{Avez-vous dans votre entourage (famille ou amis proches) quelqu'un qui a dû être hospitalisé ou qui est mort du fait du coronavirus ?}
#'   \item{covid_grave}{Sur une échelle de 0 à 10, comment évaluez-vous la gravité de l’épidémie de coronavirus aujourd'hui ?}
#'   \item{gestes_mains}{Se laver les mains plusieurs fois par jour à l’eau et au savon}
#'   \item{gestes_gel}{Utiliser du gel hydroalcoolique}
#'   \item{gestes_toux}{ousser ou éternuer dans son coude ou un mouchoir}
#'   \item{gestes_mouchoir}{Utiliser des mouchoirs à usage unique et les jeter}
#'   \item{gestes_dist}{Maintenir une distance d’au moins 1 mètre avec les personnes hors de mon foyer}
#'   \item{gestes_contact}{Ne pas serrer la main ni embrasser}
#'   \item{gestes_groupes}{Éviter les regroupements (transports en commun, fêtes, etc.)}
#'   \item{gestes_maison}{Rester chez soi}
#'   \item{gestes_masque}{Porter un masque}
#'   \item{rencontre_amis}{Combien de fois avez-vous rencontré des amis au cours des 7 derniers jours, en dehors de votre domicile, que vous ayez respecté les règles de distanciation sociale ou pas ?}
#'   \item{rencontre_parents}{Combien de fois avez-vous rencontré des parents au cours des 7 derniers jours, en dehors de votre domicile, que vous ayez respecté les règles de distanciation sociale ou pas ?}
#'   \item{rencontre_collegue}{Combien de fois avez-vous rencontré des collègues de travail au cours des 7 derniers jours, en dehors de votre domicile, que vous ayez respecté les règles de distanciation sociale ou pas ?}
#'   \item{pbm_triste}{Au cours des deux dernières semaines, à quelle fréquence avez-vous été dérangé(e) par les problèmes suivants :  Vous sentir triste, déprimé(e) ou désespéré(e) ?}
#'   \item{pbm_nerveux}{Au cours des deux dernières semaines, à quelle fréquence avez-vous été dérangé(e) par les problèmes suivants : Éprouver un sentiment de nervosité, d’anxiété ou de tension ?}
#'   \item{pbm_inquiet}{Au cours des deux dernières semaines, à quelle fréquence avez-vous été dérangé(e) par les problèmes suivants : Être incapable d’arrêter de vous inquiéter ou de contrôler vos inquiétudes ?}
#'   \item{pbm_interet}{Au cours des deux dernières semaines, à quelle fréquence avez-vous été dérangé(e) par les problèmes suivants : Avoir peu d’intérêt ou de plaisir à faire des choses ?}
#'   \item{situation_pro1}{En cette période de déconfinement, quelle est votre situation professionnelle ? Cochez toutes les réponses qui correspondent à votre situation. [Première réponse cochée]}
#'   \item{situation_pro2}{En cette période de déconfinement, quelle est votre situation professionnelle ? Cochez toutes les réponses qui correspondent à votre situation. [Deuxième réponse cochée]}
#'   \item{situation_pro3}{En cette période de déconfinement, quelle est votre situation professionnelle ? Cochez toutes les réponses qui correspondent à votre situation. [Troisième réponse cochée]}
#'   \item{situation_pro4}{En cette période de déconfinement, quelle est votre situation professionnelle ? Cochez toutes les réponses qui correspondent à votre situation. [Quatrième réponse cochée]}
#'   \item{logement_pieces}{Combien de pièces possède le logement dans lequel vous vivez en ce moment ? (SANS COMPTER salle(s) de bain et toilettes) }
#'   \item{logement_personnes}{Combien de personnes vivent actuellement dans ce logement (y compris vous-même) ?}
#'   \item{diplome}{Quel est le diplôme le plus élevé que vous ayez obtenu ?}
#'   \item{formation}{Votre formation supérieure est à dominante... ?}
#'   \item{politique}{Vous-même, diriez-vous que vous vous situez... ?}
#'   \item{essais_cliniques}{De laquelle de ces deux opinions vous sentez vous le plus proche ?}
#'   \item{mesures_science}{De laquelle de ces deux opinions vous sentez vous le plus proche ?}
#'   \item{chercheurs_bien}{Voici un certain nombre d'opinions que nous avons recueillies. Pour chacune d'elles, voulez-vous me dire si vous êtes d'accord ou pas ? Les chercheurs sont des gens dévoués qui travaillent pour le bien de l'humanité}
#'   \item{chercheurs_curieux}{Voici un certain nombre d'opinions que nous avons recueillies. Pour chacune d'elles, voulez-vous me dire si vous êtes d'accord ou pas ? Les chercheurs travaillent plus pour satisfaire leur propre curiosité que pour rendre service  aux gens}
#'   \item{chercheurs_pharma}{Voici un certain nombre d'opinions que nous avons recueillies. Pour chacune d'elles, voulez-vous me dire si vous êtes d'accord ou pas ? Les chercheurs servent trop souvent les intérêts de l’industrie, notamment pharmaceutique}
#'   \item{lecon}{Selon vous, quelle est la principale leçon à tirer de la crise du coronavirus parmi les deux suivantes ?}
#'   \item{conf_science}{Vous diriez qu'aujourd'hui, compte tenu de l'état de la science sur le coronavirus, vous avez... ?}
#'   \item{conf_scientifiques}{Diriez-vous qu'aujourd'hui, compte tenu de l'action des scientifiques sur le coronavirus vous avez ... ?}
#'   \item{proche_famille}{Depuis le début de l’épidémie de coronavirus, vous diriez que vous êtes confiant ou pas lorsque les personnes suivantes se retrouvent proches de vous : Des personnes de votre famille mais qui ne vivent pas dans votre foyer}
#'   \item{proche_immeuble}{Depuis le début de l’épidémie de coronavirus, vous diriez que vous êtes confiant ou pas lorsque les personnes suivantes se retrouvent proches de vous : Des personnes de votre immeuble}
#'   \item{proche_quartier}{Depuis le début de l’épidémie de coronavirus, vous diriez que vous êtes confiant ou pas lorsque les personnes suivantes se retrouvent proches de vous : Des personnes de votre quartier}
#'   \item{proche_inconnu}{Depuis le début de l’épidémie de coronavirus, vous diriez que vous êtes confiant ou pas lorsque les personnes suivantes se retrouvent proches de vous : Des personnes que vous ne connaissez pas}
#'   \item{proche_asiatique}{Depuis le début de l’épidémie de coronavirus, vous diriez que vous êtes confiant ou pas lorsque les personnes suivantes se retrouvent proches de vous : Des personnes d'origine asiatique}
#'   \item{proche_etranger}{Depuis le début de l’épidémie de coronavirus, vous diriez que vous êtes confiant ou pas lorsque les personnes suivantes se retrouvent proches de vous : Des personnes dont vous vous dites qu'elles sont étrangères}
#'   \item{proche_ages}{Depuis le début de l’épidémie de coronavirus, vous diriez que vous êtes confiant ou pas lorsque les personnes suivantes se retrouvent proches de vous : Des personnes âgées}
#'   \item{proche_ado}{Depuis le début de l’épidémie de coronavirus, vous diriez que vous êtes confiant ou pas lorsque les personnes suivantes se retrouvent proches de vous : Des adolescents, des jeunes adultes}
#'   \item{proche_sdf}{Depuis le début de l’épidémie de coronavirus, vous diriez que vous êtes confiant ou pas lorsque les personnes suivantes se retrouvent proches de vous : Des personnes sans domicile fixe (SDF)}
#' }
#' @source \url{https://datacovid.org/data/}
"covid7"
