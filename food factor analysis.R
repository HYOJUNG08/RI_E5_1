install.packages("psych")
install.packages("GPArotation")
library(psych)
library(GPArotation)

#상품 중분류/구매개수 기준
#데이터 가공
food_mcls_N_product=read.csv("food_mcls_N_product_by_cust.csv", header = T, stringsAsFactors=T)
name=food_mcls_N_product[,1]
food_mcls_N_product = data.frame(food_mcls_N_product, row.names = name)
food_mcls_N_product = food_mcls_N_product[,-1]
View(food_mcls_N_product)
str(food_mcls_N_product)

#유효한 요인의 개수 판단
#고유값 중 1이상('Kaiser 규칙')
state.factor=principal(food_mcls_N_product, rotate="none")
state.factor$values #유효한 요인의 개수=34개 

#요인분석
state.varimax=principal(food_mcls_N_product, nfactors = 4, rotate="varimax")
state.varimax
#34개의 요인들로 전체 분산의 62%를 설명함.

#상품 중분류/장바구니 기준
#데이터 가공
food_mcls_N_rct_by_cust=read.csv("food_mcls_N_rct_by_cust.csv", header = T, stringsAsFactors=T)
name=food_mcls_N_rct_by_cust[,1]
food_mcls_N_rct_by_cust = data.frame(food_mcls_N_rct_by_cust, row.names = name)
food_mcls_N_rct_by_cust = food_mcls_N_rct_by_cust[,-1]
View(food_mcls_N_rct_by_cust)
str(food_mcls_N_rct_by_cust)

#유효한 요인의 개수 판단
#고유값 중 1이상('Kaiser 규칙')
state.factor=principal(food_mcls_N_rct_by_cust, rotate="none")
state.factor$values #유효한 요인의 개수=32개 

#요인분석
state.varimax=principal(food_mcls_N_rct_by_cust, nfactors = 4, rotate="varimax")
state.varimax
#32개의 요인들로 전체 분산의 62%를 설명함.

#상품 대분류/구매개수 기준
food_mcls_N_rct_by_cust=read.csv("food_hlv_N_rct_by_cust.csv", header = T, stringsAsFactors=T)
name=food_mcls_N_rct_by_cust[,1]
food_mcls_N_rct_by_cust = data.frame(food_mcls_N_rct_by_cust, row.names = name)
food_mcls_N_rct_by_cust = food_mcls_N_rct_by_cust[,-1]
View(food_mcls_N_rct_by_cust)
str(food_mcls_N_rct_by_cust)

#유효한 요인의 개수 판단
#고유값 중 1이상('Kaiser 규칙')
state.factor=principal(food_mcls_N_rct_by_cust, rotate="none")
state.factor$values #유효한 요인의 개수=3개 

#요인분석
state.varimax=principal(food_mcls_N_rct_by_cust, nfactors = 3, rotate="varimax")
state.varimax
#33개의 요인들로 전체 분산의 63%를 설명함.

#상품 대분류/장바구니 기준
food_mcls_N_rct_by_cust=read.csv("food_hlv_N_product_by_cust.csv", header = T, stringsAsFactors=T)
name=food_mcls_N_rct_by_cust[,1]
food_mcls_N_rct_by_cust = data.frame(food_mcls_N_rct_by_cust, row.names = name)
food_mcls_N_rct_by_cust = food_mcls_N_rct_by_cust[,-1]
View(food_mcls_N_rct_by_cust)
str(food_mcls_N_rct_by_cust)

#유효한 요인의 개수 판단
#고유값 중 1이상('Kaiser 규칙')
state.factor=principal(food_mcls_N_rct_by_cust, rotate="none")
state.factor$values #유효한 요인의 개수=3개 

#요인분석
state.varimax=principal(food_mcls_N_rct_by_cust, nfactors = 3, rotate="varimax")
state.varimax
#33개의 요인들로 전체 분산의 52%를 설명함.