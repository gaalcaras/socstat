library(tidyverse)
library(rlang)

covid <- read_tsv(here::here("data-raw", "data", "Datacovid_BD_Vague_7.tsv"))
covid_d <- read_tsv(here::here("data-raw", "data", "Dictionnaire_codes_Vague_7.tsv"))

covid_d <- covid_d %>%
  fill(Question)

recode_var <- function(x, dict) {
  var_name <- as_label(substitute(x))
  codes <- dict %>%
    filter(Question == var_name)
  factor(x, codes$Code, codes$Signification, ordered = TRUE)
}

covid <- covid %>%
  mutate_at(vars(covid_d$Question), .funs = recode_var, dict = covid_d)

covid_r <- covid %>%
  select(jour = JOURV7,
         appareil = DEVICE,
         sexe = SEXE,
         age = AGE2,
         departement = DEP,
         region = REG12,
         agglo = AGGLO5,
         emploi = EMP,
         pcs = PCSI,
         marital = MAR,
         covid_mort = A3BIS,
         covid_grave = B1Q,
         starts_with("B2_"),
         starts_with("B6"),
         starts_with("C5"),
         starts_with("C6"),
         logement_pieces = C8Q,
         logement_personnes = C9QA,
         diplome = C10,
         formation = C11,
         politique = D60A,
         essais_cliniques = D60,
         mesures_science = D61,
         starts_with("D62"),
         lecon = D63,
         conf_science = D65,
         conf_scientifiques = D66,
         starts_with("D68")
  ) %>%
  rename(
    gestes_mains = B2_0,
    gestes_gel = B2_1,
    gestes_toux = B2_2,
    gestes_mouchoir = B2_3,
    gestes_dist = B2_4,
    gestes_contact = B2_5,
    gestes_groupes = B2_6,
    gestes_maison = B2_7,
    gestes_masque = B2_8,
    rencontre_amis = B6Q_0,
    rencontre_parents = B6Q_1,
    rencontre_collegue = B6Q_2,
    pbm_triste = C51,
    pbm_nerveux = C52,
    pbm_inquiet = C53,
    pbm_interet = C54,
    situation_pro1 = C6_0,
    situation_pro2 = C6_1,
    situation_pro3 = C6_2,
    situation_pro4 = C6_3,
    chercheurs_bien = D62_0,
    chercheurs_curieux = D62_1,
    chercheurs_pharma = D62_2,
    proche_famille = D68_0,
    proche_immeuble = D68_1,
    proche_quartier = D68_2,
    proche_inconnu = D68_3,
    proche_asiatique = D68_4,
    proche_etranger = D68_5,
    proche_ages = D68_6,
    proche_ado = D68_7,
    proche_sdf = D68_8
  )

covid7 <- covid_r

usethis::use_data(covid7, overwrite = TRUE)
