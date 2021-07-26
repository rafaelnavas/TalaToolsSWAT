#' @title
#' get_crop_par
#'
#' @description
#' Obtiene los parámetros de un cultivo
#'
#' @param crop Nombre del cultivo (4 letras, e.g. "SOYB")
#' @param model_dir Directorio del proyecto SWAT
#'
#' @examples
#' #get_crop_par(crop="SOYB",model_dir = "C:/model")

get_crop_par = function(crop,model_dir){

  plant_data = readLines(paste0(model_dir, "/plant.DAT"))
  plant_list = strsplit(plant_data, " ")
  plant_line = (1:length(plant_list))[unlist(lapply(plant_list, function(x){any(x==crop)}))]

  out = data.frame(
  ICNUM = as.numeric(strsplit(plant_data[plant_line],"\\s+")[[1]][2]),
  CPNM = strsplit(plant_data[plant_line],"\\s+")[[1]][3],
  IDC = as.numeric(strsplit(plant_data[plant_line],"\\s+")[[1]][4]),

  BIO_E = as.numeric(strsplit(plant_data[plant_line+1],"\\s+")[[1]][2]),
  HVSTI = as.numeric(strsplit(plant_data[plant_line+1],"\\s+")[[1]][3]),
  BLAI = as.numeric(strsplit(plant_data[plant_line+1],"\\s+")[[1]][4]),
  FRGRW1 = as.numeric(strsplit(plant_data[plant_line+1],"\\s+")[[1]][5]),
  LAIMX1 = as.numeric(strsplit(plant_data[plant_line+1],"\\s+")[[1]][6]),
  FRGRW2 = as.numeric(strsplit(plant_data[plant_line+1],"\\s+")[[1]][7]),
  LAIMX2 = as.numeric(strsplit(plant_data[plant_line+1],"\\s+")[[1]][8]),
  DLAI = as.numeric(strsplit(plant_data[plant_line+1],"\\s+")[[1]][9]),
  CHTMX = as.numeric(strsplit(plant_data[plant_line+1],"\\s+")[[1]][10]),
  RDMX = as.numeric(strsplit(plant_data[plant_line+1],"\\s+")[[1]][11]),

  T_OPT = as.numeric(strsplit(plant_data[plant_line+2],"\\s+")[[1]][2]),
  T_BASE = as.numeric(strsplit(plant_data[plant_line+2],"\\s+")[[1]][3]),
  CNYLD = as.numeric(strsplit(plant_data[plant_line+2],"\\s+")[[1]][4]),
  CPYLD = as.numeric(strsplit(plant_data[plant_line+2],"\\s+")[[1]][5]),
  PLTNFR_1 = as.numeric(strsplit(plant_data[plant_line+2],"\\s+")[[1]][6]),
  PLTNFR_2 = as.numeric(strsplit(plant_data[plant_line+2],"\\s+")[[1]][7]),
  PLTNFR_3 = as.numeric(strsplit(plant_data[plant_line+2],"\\s+")[[1]][8]),
  PLTPFR_1 = as.numeric(strsplit(plant_data[plant_line+2],"\\s+")[[1]][9]),
  PLTPFR_2 = as.numeric(strsplit(plant_data[plant_line+2],"\\s+")[[1]][10]),
  PLTPFR_3 = as.numeric(strsplit(plant_data[plant_line+2],"\\s+")[[1]][11]),

  WSYF = as.numeric(strsplit(plant_data[plant_line+3],"\\s+")[[1]][2]),
  USLE_C = as.numeric(strsplit(plant_data[plant_line+3],"\\s+")[[1]][3]),
  GSI = as.numeric(strsplit(plant_data[plant_line+3],"\\s+")[[1]][4]),
  VPDFR = as.numeric(strsplit(plant_data[plant_line+3],"\\s+")[[1]][5]),
  FRGMAX = as.numeric(strsplit(plant_data[plant_line+3],"\\s+")[[1]][6]),
  WAVP = as.numeric(strsplit(plant_data[plant_line+3],"\\s+")[[1]][7]),
  CO2HI = as.numeric(strsplit(plant_data[plant_line+3],"\\s+")[[1]][8]),
  BIOEHI = as.numeric(strsplit(plant_data[plant_line+3],"\\s+")[[1]][9]),
  RSDCO_PL = as.numeric(strsplit(plant_data[plant_line+3],"\\s+")[[1]][10]),
  ALAI_MIN = as.numeric(strsplit(plant_data[plant_line+3],"\\s+")[[1]][11]),

  BIO_LEAF = as.numeric(strsplit(plant_data[plant_line+4],"\\s+")[[1]][2]),
  MAT_YRS = as.numeric(strsplit(plant_data[plant_line+4],"\\s+")[[1]][3]),
  BMX_TREES = as.numeric(strsplit(plant_data[plant_line+4],"\\s+")[[1]][4]),
  EXT_COEF = as.numeric(strsplit(plant_data[plant_line+4],"\\s+")[[1]][5]),
  BMDIEOFF = as.numeric(strsplit(plant_data[plant_line+4],"\\s+")[[1]][6]),
  RSR1C = as.numeric(strsplit(plant_data[plant_line+4],"\\s+")[[1]][7]),
  RSR2C = as.numeric(strsplit(plant_data[plant_line+4],"\\s+")[[1]][8]))

  return(out)
}

