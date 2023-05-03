library(tidyverse)

all <- read_csv("/db2/users/shnam/01.ASK-Onco/v.22.2.1/11.ASK-Onco_SL/v1/KG_all_pairs_test_predictions.csv", 
                col_select = c("node_a", "node_b", "prediction"))
all %>%
  filter(node_a == 672 | node_b == 672) %>%
  ggplot(aes(prediction)) + geom_histogram()

# 찾아둔 11개 유전자에 대한 데이터를 한번에 뽑아서 스코어 분포 비교
# 파트너 유전자의 유전자명 추가한 후 전달할 상위 유전자 리스트 정리
# 동인님이 보내준 유전자 쌍에 대한 스코어 추가