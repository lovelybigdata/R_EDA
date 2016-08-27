# 黨不能沒有柱姐!
# 檔不能沒有註解!
# 在程式碼前面的井號就是註解

123 # 前面是123

# Windows若顯示中文異常請執行以下執令
# abc <- "中文"
# abc
# Sys.setlocale(category = "LC_ALL", locale = "cht")
# Sys.getlocale()


# 加減乘除的練習
# 井號(#)是註解不會執行
# ===================

123+456

123-456

123*456

123/456

# ===================

#丟骰子dice,丟1次
# : 冒號可以快速產生向量
# 例 1:6 意指 1 2 3 4 5 6 
sample(1:6,1)

#丟骰子dice,丟2次
sample(1:6,2)

#丟骰子dice,丟3次
sample(1:6,3)

# ===================

#標準常態機率抽樣 (平均數=0,標準差=1)

# 產生100個隨機抽樣變數
rnorm(100)
# 產生299個隨機抽樣變數
rnorm(299)
# 產生999個隨機抽樣變數
rnorm(999)

# ===================
# 查詢有那些機率分配
?distribution

#如何把資料存起來?
# 觀察一下x的變化
x <- 123+456
x

x <- 123-456
x

x <- 123*456
x

x <- 123/456  
x

# 繪製直方圖
# 直方圖(次數分配圖)
# Histogram

w1 <- rnorm(10)    #產生10個常態機率隨機變數
w1plot <- hist(w1) #繪製直方圖將圖形存到變數中
plot(w1plot)  #顯示圖形

w2 <- rnorm(100)   #產生100個常態機率隨機變數
w2plot <- hist(w2) #繪製直方圖將圖形存到變數中
plot(w2plot)  #顯示圖形

w3 <- rnorm(999)   #產生999個常態機率隨機變數
w3plot <- hist(w3) #繪製直方圖將圖形存到變數中
plot(w3plot)  #顯示圖形


#套件安裝
# 請試著自行安裝套件 cowsay
install.packages("cowsay")

# 以下套件電腦教室已安裝完成
# 學員課後使用自己筆電時，把註解去除即可安裝
# 以下套件因為安裝時需時較久，所以事先請助教協助安裝完成
#install.packages("data.table)  #套件用途 ETL & 快速讀取
#install.packages("dplyr") #套件用途 ETL
#install.packages("readxl")     #套件用途 讀取EXCEL格式
#install.packages("openxlsx")   #套件用途 輸出EXCCL格式
#install.packages("lubridate")  #套件用途 時間格式處理


# 如何查詢套件用途?
?cowsay # 此套件功能較簡單，所以沒有專屬文件檔
?data.table
?dplyr
?readxl # 此套件功能較簡單，所以沒有專屬文件檔
?lubridate
# 或
help(cowsay) # 此套件功能較簡單，所以沒有專屬文件檔
help(data.table)
help(dplyr)
help(readxl)# 此套件功能較簡單，所以沒有專屬文件檔
help(lubridate)



###
library("cowsay")
say("R 超好玩 deR!")


###

say("R 超好玩 deR!","cow")

say("R 超好玩 deR!","smallcat")

say("R 超好玩 deR!","ghost")
# 觀察一下你看到了什麼
# 想一想，為什麼要使用參數呢?
# 想一想，如果沒有參數的話，會怎麼樣?

# 黨不能沒有柱姐!
# 檔不能沒有註解!
# 在程式碼前面的井號就是註解
123 # 前面是123
# Windows若顯示中文異常請執行以下執令
# abc <- "中文"
# abc
# Sys.setlocale(category = "LC_ALL", locale = "cht")
# 
# 資料型態，主要分為2種  數字與文字
# 以下範例為 Atomic Vector
# 文字
my_name <- "KA"
# 數字
microsoft_mouse_price <- 699 

# Atomic Vector

# 假設你是一個冰店的老闆
# 販賣以下三種冰品
ice <-  c("紅豆","巧克力","香草")
# 價格分格為
price <- c(30,35,20)
# 銷售分別為
sale_N <-   c(2,7,6)

# 這種一個變數中存著不只一個數字，就是向量
# 注意，向量中只能存同種型態的資料
# 方法一
30*2+35*7+20*6

# 方法二
# 計算營業額
# 第一步 算出 30*2  35*7 20*6
price*sale_N 
# 計算總營業額，使用sum 加總
sum(price*sale_N)

# 多了一個產品(新增芒果冰的銷售)
ice <-  c("紅豆","巧克力","香草","芒果")
price <- c(30,35,20,79)
sale_N <-  c(2,7,6,9)

# 方法一
30*2+35*7+20*6+79*9

# 方法二 
# 計算營業額
price*sales 
# 計算總營業額
sum(price*sale_N)

# 建立你的第一個data.frame
sale_info <- data.frame(
  ice  ,
  price ,  
  sale_N  , stringsAsFactors = FALSE)
# 確認是否建立成功
sale_info

# 找出最高的銷售額的品名
sale_info$price * sale_info$sale_N
# 先算出每筆的營業額?
# 想一想 60是指?
# 想一想 711是指?


# data.frame 基本操作
# 
# 資訊抽取

# 方法一 
# 使用數字選取
# 使用名字選取

sale_info[1]
sale_info[2]
sale_info[3]


sale_info[1,2]
sale_info[,2:3]
sale_info[,]

# dplyr 初體驗
select(sale_info , c(1,2) )
select(sale_info , c(3,1,2) )
select(sale_info ,1:2  )

t1 <- select(sale_info , price , ice )
filter(t1 , price > 30 )
filter(t1 , price > 70 )
filter(sale_info , ice == "巧克力" )
sale_info[  ice == "巧克力" , ]
sale_info[  price > 70 ]


#

#方法二
select(sale_info , price , ice )


sale_info
sale_info[1,2] #捉出第1個ROW，第2個欄位內的資料
sale_info[1,3] #捉出第1個ROW，第3個欄位內的資料
sale_info[2,]  #捉出第2個ROW
sale_info[ice == "巧克力",]  #捉出第2個ROW
sale_info[price >  25 ,]    # 價格大於25元 避免與後續dplyr發生混亂，要改掉
sale_info[price >  40 ,]    # 價格大於40元
sale_info[,"ice"] #選擇品名欄位  # 避免發生混亂，要改掉
sale_info[,"sales"] #選擇銷售額欄位
sale_info[,"price"] # 選擇價格欄位
# dplyr 簡單明瞭  
select(sale_info , c(price , sales)  )
# 簡化成
select(sale_info , price , sales)



sale_info[,c("price","ice") ] # 選擇價格欄位、品名欄位

# 確認資料結構 str
str(sale_info)
# 資料結構應該如下
# 'data.frame':	4 obs. of  3 variables:
#   $ ice  : chr  "紅豆" "巧克力" "香草" "芒果"
# $ price: num  30 35 20 79
# $ sales: num  2 7 6 9




# 資料變更
# 紅豆冰原價30元，價格調漲5元
sale_info[1,2] <- 35
sale_info
# 紅豆冰原價30元，價格調漲5元，調回原價
sale_info[1,2] <- 30
sale_info

# 建立新欄位 銷售額(營收)
sale_info$revenue <- sale_info$price * sale_info$sales
sale_info
# 單項產品營收大於200元
sale_info$revenue > 200
sale_info[ sale_info$revenue > 200 ,]

# 資料排序, 升序排列
order(sale_info$price)
sale_info[  order(sale_info$price), ]


# 將排序後的結果儲存
sale_info <- sale_info[ order(sale_info$price), ]
# 補充降序排列
sale_info[  order(sale_info$price ,decreasing =TRUE),]

## 後續將介紹 dplyr 
## 部份資料操作將會更簡單

# 移除欄位 revenue 
sale_info$revenue <- NULL

# 移除資料紀錄(不要選資料紀錄)
# 移掉巧克力的紀錄(ICE不要巧克力)
# 多用filter (少用) 不要教這個
# sale_info <- sale_info[ -2,] 
# 移掉巧克力、香草的紀錄(ICE不要巧克力、香草)
# sale_info[ -c(2,3) ,] 

# 建立你的第一個data.frame (備註:資料復原)
sale_info <- data.frame(
  ice  ,
  price ,  
  sales  , stringsAsFactors = FALSE)

# 使用WINDOWS進行讀取，需要指定編碼
# WINDOWS不直接支援UTF8

class.point <- read.csv("class_points.csv",encoding = "big5")

# read Excel File
# 使用 xlsx 可以避開 Excel 中無法直接存取UTF8 CSV中文編碼的問題
library(readxl)
class.point <- read_excel("class_points.xlsx")
# MAC/WINDWSOWS 

# 繪製全班的次數分配圖(直方圖)
hist(class.point$Point)
# 課後作業
# 選取分數高於60分的同學姓名
more60 <-  class.point[class.point$Point > 60, 2]
more50 <-  class.point[class.point$Point > 50, 2]

# 看前幾筆資料 head,預設輸出前6筆資料
head(class.point) 
# 看後幾筆資料 tail,預設輸出最後6筆資料
tail(class.point)

# 有幾筆(n)資料(row) nrow
nrow(class.point)
# 有幾欄呢 ncol
ncol(class.point)

# 將資料輸出
# 輸出成CSV
write.csv(more60 , "more60.csv")

# 補充教材
# 如果要輸出好幾個SHEET的狀況
l <- list("more50" = more50, "more60" = more60)
write.xlsx(l, "multi_sheet.xlsx")

# 輸出成EXCEL
library(openxlsx)
# windows 有時需要調整ZIP所在目錄
# ubuntu 有時也需要
# MAC不用設定
Sys.setenv(R_ZIPCMD= "C:/Rtools/bin/zip")

write.xlsx(more60 , "more60.xlsx")




# 補充教材，在R中讀取超大資料檔 fread
# data.table 可與 dplyr 混用
library(data.table)
test.data <- fread("train.csv")

# 課後作業 
ice <-  c("紅豆","巧克力","香草","芒果")
price <- c(30,35,20,79)
sale_N2 <-  sample( 2:10 , 4*100 , replace = TRUE)

# 建立data.frame , 400 rows
sale_info2 <- data.frame(
  ice  ,
  price ,  
  sale_N2   , stringsAsFactors = FALSE)

# 確認是否建立成功sale_info2
sale_info2

#
#紅豆冰的總銷售額?
sum(filter(sale_info2 , ice == "紅豆" )[2] * filter(sale_info2 , ice == "紅豆" )[3] )

#紅豆冰銷售量大於3的總銷售額? 有幾筆資料呢?
sum(filter(sale_info2 , ice == "紅豆" & sale_N2 > 3 )[2] * filter(sale_info2 , ice == "紅豆" & sale_N2 > 3 )[3] )
nrow(filter(sale_info2 , ice == "紅豆" & sale_N2 > 3 )[2] * filter(sale_info2 , ice == "紅豆" & sale_N2 > 3 )[3] )

#紅豆冰 + 芒果冰 的總銷售額?
sum(filter(sale_info2 , ice == "紅豆" | ice == "芒果" )[2] * filter(sale_info2 , ice == "紅豆" | ice == "芒果" )[3] )


sale_info2 %>% str


### pipeline 介紹

library(readxl)
class.point <- read_excel("class_points.xlsx")

# 分數大於60分的是那些人?
class.point %>% filter(Point > 60) %>% select(name)  %>% View
# 分數大於60分的是那些人,分數多少?
class.point %>% filter(Point > 60) %>% select(name,Point)  %>% View



# 傳統寫法
View(class.point[class.point$Point>60,"name" ])
View(class.point[class.point$Point>60, c("name","Point") ])


# 分數大於60分的有幾人且小於90的有幾人?
class.point %>% filter(Point > 60 & Point < 90 ) %>% nrow

# 分數大於60分的有幾人且小於90的是那些人?
class.point %>% filter(Point > 60 & Point < 90 ) %>% select(name)%>% View

# 傳統寫法
View(class.point[class.point$Point>60 & class.point$Point < 90 ,"name" ])

# ==========================

# Day 2 Workshop
# 載入package
library(data.table)
library(dplyr)
library(tidyr)
library(lubridate)
library(ggplot2)
library(readxl)
library(openxlsx)

# 檢視目前工作目錄位置
getwd()
# 設定工作目錄位置
setwd("/Users/LaiR/Desktop/R_EDA_by_KA_201609/")


star_01_menu <- fread("01_star/01_big5/star_01_menu.csv")
star_02_store <- fread("01_star/01_big5/star_02_store.csv")

## mac
star_01_menu <- fread("01_star/02_utf8/star_01_menu.csv")
star_02_store <- fread("01_star/02_utf8/star_02_store.csv")


#價格高於170元的飲料編號
star_01_menu %>% filter(price > 170) %>% select( product_id)
#飲料品項數量
#不考慮大小杯  (排除重覆 distinct)
star_01_menu %>% select(product) %>% distinct %>% nrow


#將飲料依咖啡因升序排序?最高6名?最低6名?
star_01_menu %>% arrange(Caffeine) %>% tail
star_01_menu %>% arrange(Caffeine) %>% head
#降序排列(由大到小)
star_01_menu %>% arrange( desc(Caffeine)) %>%  View

#將飲品中咖啡因含量區分為高(H)低(L)

#繪製咖啡因的直方圖(#補充教材)
star_01_menu %>% select(Caffeine) %>%  ggplot(data =.,aes(Caffeine)) + geom_histogram()

# 定義 高>=200  

star_01_menu2 <- star_01_menu %>%  mutate( Caffeine_Level = ifelse(  Caffeine >= 200 , "H" , "L" ))

# 補充目前還不支援 mutate 
# star_01_menu$Caffeine_Level <- case_when(star_01_menu$Caffeine >= 200 ~ "H" , star_01_menu$Caffeine <200 ~ "L")

#平均價格(mean)、最高價格(max)、數量(n)
star_01_menu2 %>% group_by(Caffeine_Level) %>% summarise( avg_price = mean(price) , max_price = max(price) , cnt = n())


# 星巴克的總店數
star_02_store %>% nrow


# 過濾出以下地址
# 電話以"02-"開頭
star_02_store %>%   filter( star_phone %like% "02-")


# 地址中含有”忠孝” ( %like% )
star_02_store  %>% filter( star_address %like% "忠孝") %>% select(star_address)

# 地址中含有"忠孝"或"中正"
star_02_store  %>% filter( star_address %like% "忠孝" |star_address %like% "中正" )%>% select(star_address)

# 地址中含有"忠孝" 和 "中正"
star_02_store  %>% filter( star_address %like% "忠孝" & star_address %like% "中正" )%>% select(star_address)

# 分布在那些區域(zip_code)

# 那個地區的家數最多?

#



star_03_order_main <- fread("01_star/01_big5/star_03_order_main.csv")
star_04_order_detail <- fread("01_star/01_big5/star_04_order_detail.csv")

# mac
star_03_order_main <- fread("01_star/02_utf8/star_03_order_main.csv")
star_04_order_detail <- fread("01_star/02_utf8/star_04_order_detail.csv")


# 5大動詞 示範
# 選擇需要的欄位 產名名稱
star_01_menu %>% select(product_item , price ) 


# 有幾種飲品呢
star_01_menu %>% group_by(product) %>% distinct() %>% nrow()

# 繪製卡路里的直方圖(補充教材)
star_01_menu %>% select(Caffeine) %>%  ggplot(data =.,aes(Caffeine)) + geom_histogram()








# 選出"咖啡"的飲料，有那些
star_menu %>% filter(  product %like% '星冰樂'  )  %>% select(product ) %>% unique 

# 選出"瑪奇朵"的飲料，有幾種
star_menu %>% filter(  product %like% '瑪奇朵'  )  %>% select(product ) %>% unique 



# 顯示店名與電話
star_02_store %>% select(star_store, star_phone)
# 顯示店名與電話 , 只顯示"02-"開頭的電話
star_02_store %>% select(star_store, star_phone) %>%  filter( star_phone %like%  "02-")

# 顯示店名、地址、電話 , 只顯示地址帶有"淡水"的店名
star_02_store %>% select(star_store, star_address , star_phone) %>%  filter( star_address %like%  "淡水")


# 99 個郵遞區號
star_02_store %>% group_by(zip_code) %>%
  summarise( n()  ) 

# 99 個郵遞區號,列出顯示
star_02_store %>% group_by(zip_code) %>% summarise( n()  ) %>% View

# 99 個郵遞區號,列出顯示，為新欄位取名字
star_02_store %>% group_by(zip_code) %>% summarise( mycount = n()  )  

# 那個地區的星巴克最多數量的前3名?
star_02_store %>% group_by(zip_code) %>%
  summarise( mycount = n()  )  %>% arrange(-mycount) %>%
  head(3)

# 全台灣那些有展店(郵遞區號)的星巴克數量只有1間?
star_02_store %>% group_by(zip_code) %>% 
  summarise( mycount = n()  ) %>% filter(mycount = 1  )  
# 郵遞區號 200是那個地區呢?
star_02_store %>% filter( zip_code == "200")

# 星期的銷量?
# 轉換日期為時間格式
star_03_order_main %>% str

star_03_order_main$order_date <- as.Date(star_03_order_main$order_date )  
# 以星期做集群  -- 要再順一下
star_03_order_main %>%  group_by( weekdays(order_date)) %>% summarise( day_count = n() %>% arrange( - day_count)  
                                                                       
                                                                       # 以月份做集群  
                                                                       star_03_order_main %>%  group_by( months(order_date)) %>% summarise( day_count = n()) %>% arrange( - day_count) 
                                                                       
                                                                       # 以月份+星期做集群 (此時中間要夾個 ungroup)
                                                                       star_03_order_main %>%  group_by( months(order_date) ,weekdays(order_date) ) %>% summarise( day_count = n()) %>% ungroup %>% arrange( - day_count) 
                                                                       
                                                                       #star_03_order_main %>%  group_by( months(order_date) ,weekdays(order_date) ) %>% summarise( day_count = n())   %>% arrange( - day_count) 
                                                                       
                                                                       
                                                                       # 星期的效應比月份的效應強
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       
                                                                       # 連結 JOIN
                                                                       # 左連結範例1
                                                        star_join_1 <- 
                                                        left_join( star_03_order_main , star_02_store ,
           by = "store_id")  
                                                                       
                                                                       # 左連結範例2
                                                                       star_join_2 <- left_join( star_03_order_main , star_04_order_detail , by = "order_id")  %>% left_join( . , star_01_menu , by = "product_id")
                                                                       
                                                                       
                                                                       # test code for ppt   
                                                                       star_join_3 <- 
                                                                         left_join(star_03_order_main,star_04_order_detail,by="order_id") %>%
                                                                         left_join(star_01_menu,by="product_id") %>% 
                                                                         left_join(star_02_store,by ="store_id")  
                                                                       
                                                                       # 左連結範例3
                                                                       star_join_3 <- left_join( star_03_order_main , star_04_order_detail , by = "order_id")  %>% left_join( . , star_01_menu , by = "product_id") %>% left_join(., star_02_store , by = "store_id") 
                                                                       
                                                                       star_join_3
                                                                       
                                                                       
                                                                       
                                                                       # 不同品項購買的杯量會不同嗎?
                                                                       star_join_3 %>% group_by( cup_size) %>% summarise( n())
                                                                       
                                                                       # cup_size   n()
                                                                       # (chr) (int)
                                                                       # 1     中杯 48882
                                                                       # 2     大杯 29660
                                                                       # 3   特大杯 18684
                                                                       # 4     小杯  2773
                                                                       
                                                                       # 中杯的品項都是些什麼呢?
                                                                       # 咖啡?
                                                                       # 星冰樂?
                                                                       # 摩卡?
                                                                       star_join_3 %>% filter( cup_size == "中杯" & product %like% "咖啡")   %>% nrow
                                                                       star_join_3 %>% filter( cup_size == "中杯" & product %like% "星冰樂")   %>% nrow
                                                                       star_join_3 %>% filter( cup_size == "中杯" & product %like% "摩卡")    %>% nrow
                                                                       # 你的答案是
                                                                       
                                                                       # 營業總額是多少呢
                                                                       star_join_3 %>% summarise( sum(price* sale_n))
                                                                       
                                                                       # 那一種產品最受歡迎，賣出數量?總銷售額?
                                                                       # 看法1:數量
                                                                       star_join_3 %>% group_by( product) %>%  summarise( revenue =  sum(price* sale_n),  my_count=n())%>% arrange(-revenue)
                                                                       # 看法2:銷售量
                                                                       star_join_3 %>% group_by( product) %>%  summarise( revenue =  sum(price* sale_n),  my_count=n())%>% arrange(-my_count )
                                                                       
                                                                       ###
                                                                       # 週報示範
                                                                       
                                                                       today()
                                                                       
                                                                       # 你們公司如何定義一週呢?
                                                                       # 先來示範最簡單的狀況
                                                                       # 星期日 ~ 星期六  
                                                                       # 小型電商? (七天)
                                                                       # 星期四 ~ 星期五
                                                                       
                                                                       # 今天
                                                                       today()
                                                                       # 明天
                                                                       today()+1
                                                                       # 後天
                                                                       today()+2
                                                                       
                                                                       # 昨天
                                                                       today()-1
                                                                       # 前天
                                                                       today()-2
                                                                       
                                                                       
                                                                       # ymd("2016-09-04") %>% wday()
                                                                       # [1] 1
                                                                       # ymd("2016-09-05") %>% wday()
                                                                       # [1] 2
                                                                       # ymd("2016-09-06") %>% wday()
                                                                       # [1] 3
                                                                       
                                                                       
                                                                       this_week = today() - wday( today()) + 1  -2
                                                                       本週最後一天
                                                                       this_week_end = this_week +6
                                                                       上一週第一天
                                                                       last_week = this_week - 7
                                                                       上一週第一天
                                                                       last_week_end = last_week + 6 
                                                                       
                                                                       ifelse(wday(today())==6,
                                                                              ( today() - wday( today()) + 1 -2),
                                                                              ( today() - wday( today()) + 1 +5 ) )
) %>% as.Date()
ifelse(wday(df$time)==1,7,wday(df$time)-1)

# 如果是星期五、星期六、星期日


today()-wday(today())+ 1 +
  if_else( wday(today())>= 6 , 5 ,  -2 )

if (wday(today())>= 6) { ( today() - wday( today()) + 1 -2)} else {( today() - wday( today()) + 1 +5 )}

if_else(   wday(today())>= 6 ,( today() - wday( today()) + 1 -2) ,( today() - wday( today()) + 1 +5 ))

# 資料驗證
# ymd("2016-08-27")-wday( ymd("2016-08-27"))+1+ifelse(wday(ymd("2016-08-27"))>=6,5,-2)
# 
# ymd("2016-09-02")-wday( ymd("2016-09-02"))+1+ifelse(wday(ymd("2016-09-02"))>=6,5,-2)
# 
# ymd("2016-09-04")-wday( ymd("2016-09-04"))+1+ifelse(wday(ymd("2016-09-04"))>=6,5,-2)
# 
# ymd("2016-09-09")-wday( ymd("2016-09-09"))+1+ifelse(wday(ymd("2016-09-09"))>=6,5,-2)
# 
# ymd("2016-09-10")-wday( ymd("2016-09-10"))+1+ifelse(wday(ymd("2016-09-10"))>=6,5,-2)






today() %>% if_else(wday(.))>= 6, wday(.)+1+5,
wday(.)+1-2 ) %>% as.Date(., origin = "1900-01-01")




floor_date(today())


ymd("2016-09-04") - 7
# 總是回傳最近的星期一
# R中認為一個星期的第一天是星期一
w_Last1_start <- as.Date(cut( today() , "weeks")) -1
w_Last1_end  <-  w1_start + 6

m_Last1_start <- as.Date(cut( today() , "month"))  
m_Last1_end  <- today()

# 月報
# 找出本月第一天
# as.Date(cut( today() , "months")) 
# #找出上月的第一天
# as.Date(cut( today() , "months")  )  %m-% months(1)
# #找出上月的最後一天a
# as.Date(cut( today() , "months")  )  - 1

找出本月第1天
this_month_start = floor_date( today() , "month") 
找出本月最後1天
this_month_end = ceiling_date( today() , "month") - 1
找出上個月第1天
this_month_start  %m-%  months(1)  



# 那前2週呢?
# w_Last2_start <- w_Last1_start - 7*1
# w_Last2_end   <- w_Last1_end   - 7*1
# 依次推類
# 進階可以使用迴圈方式批次產生時間區間

# 前1週前10名總銷售量
w1_totalSales <- star_join_3 %>% filter(order_date >= w_Last1_start &  order_date <= w_Last1_end ) %>%  group_by(product) %>% summarise( total_sales = sum(sale_n* price)) %>% arrange(desc(total_sales)) %>% head(10)

# 前1個月前10名總銷售量

m1_totalSales <- star_join_3 %>% filter(order_date >= m_Last1_start &  order_date <= m_Last1_end ) %>%  group_by(product) %>% summarise( total_sales = sum(sale_n* price)) %>% arrange(desc(total_sales)) %>% head(10)

raw_data_star <-  star_join_3 %>% filter(order_date >= m_Last1_start &  order_date <= m_Last1_end )  

# 一次寫入多張sheet 到 XLSX 中
l = list(  W_top10 = w1_totalSales,
           M_top10 = m1_totalSales,
           Rawdata = raw_data_star) 

write.xlsx( l , file = "report.xlsx" , asTable = TRUE,tableStyle = "TableStyleLight2") 


#### read excel file
library(readxl)
library(dplyr)
library(tidyr)


mrt <- mrt %>% as.data.frame()   
mrt$松山機場 
mrt  <-   read.csv("02_MRT/01_big5/mrt_201605.csv")

# mac 
# mrt  <-   read.csv("02_MRT/02_utf8/mrt_201605.csv")


# 確認讀取有無正確
mrt  %>% str
mrt  %>% class

# 實務上,儘量減少使用中文欄位名稱

# windows  
mrt %>% select(1,松山機場) %>% filter(.$松山機場 > 20000) 

# MAC/ Linux  
# mrt %>% select(1,松山機場) %>% filter( 松山機場 > 20000)

mrt %>% select(1,中山國中) %>% filter(.$中山國中 > 20000) 



abc <- data.frame( x = c(123,456) , 松山機場 = 2 )
abc$松山機場  
# to tidy data

mrt %>% View

# gatherGather columns into key-value pairs.

# 寫法1  
tidy_mrt <- gather(mrt,site,people, -DATE ) 

# 寫法2,使用pipeline更直覺 tidy_mrt <- mrt %>% gather( site,people, -DATE )

tidy_mrt %>% filter(people > 20000 ) %>% View

tidy_mrt %>% filter(people > 20000) %>% group_by(site) %>% summarise(cnt = n(),Total = sum(people)) %>% arrange(desc(Total)) %>% View

# n個欄位併成2個欄位
# 

# unite Demo 

tidy_mrt %>% filter(people > 20000 ) %>% group_by(site) %>% summarise( cnt = n() , Total = sum(people) , AVG = round(mean(people))) %>% arrange(desc(Total)) %>% unite(Total_cnt_AVG,Total,cnt,AVG) %>% View

# 直接把字串拆掉，把原本一欄直接拆成三欄
# convert 參數:文字轉數字
tidy_mrt  %>% separate(DATE,c("Year","Month","Day"),sep="-",convert = TRUE)

# 結合 tidyr & dplyr
tidy_mrt  %>% separate( DATE , c("Year","Month","Day"),sep="-" , convert = TRUE) %>% filter( Day >= 12 & Day <= 20) %>% spread( Day,people)  %>% View

# 

spread(tidy_mrt , site , people)
# 給人看的時候
ff %>% spread( site , people )

# 大於1萬人時 ?
# n() is ok

# 現有的捷運站有幾個啊
# 108個!

ifelse(weekdays(ff$DATE)=="星期六" , "YES" ,"No")

# ifelse(weekdays(ff$DATE)=="星期六","Y","N")
# ifelse(weekdays(ff$DATE)=="星期日","Y","N")
# ifelse(weekdays(ff$DATE)=="星期六" | weekdays(ff$DATE)=="星期日" ,"Y","N")
# ifelse(weekdays(DATE)=="星期六" | weekdays(DATE)=="星期日" ,"Y","N")
# ff %>% ifelse(weekdays(DATE)=="星期六" | weekdays(DATE)=="星期日" ,"Y","N")
ff2 <- ff %>% mutate( holiday = ifelse(weekdays(DATE)=="星期六" | weekdays(DATE)=="星期日","Y","N"))

# 上班日(非假日)
ff2 %>%  group_by(holiday ,site) %>% summarise( sum_p = sum(people)) %>% spread( holiday , sum_p , 3 ) %>% arrange(desc(Y)) %>% View

# 非上班日(假日)
ff2 %>%  group_by(holiday ,site) %>% summarise( sum_p = sum(people)) %>% spread( holiday , sum_p , 3 ) %>% arrange(desc(N)) %>% View


ff %>% select(site) %>%  unique() %>% count()

ff %>% filter( site %like% '車')
# 車站名稱中有"車"

ff %>% filter( site %like% '貓')
# 車站名稱中有"貓"



p10k <-  ff %>% group_by(site) %>% filter( people > 30000)  %>% group_by(site) %>% summarise( day_10k = n() ) %>% filter(day_10k > 30) %>% select(site)  %>% .$site

ff %>% filter( people > 50000)%>% group_by(site)  %>% summarise( p1 = sum(people), top_n(10, people )) %>% arrange(-p1)

# 每天都有破1萬的車站
ff2 <- ff %>% filter( site %in% p10k )

ff2 %>% spread( site , people ) 
ff2 %>% spread( site , people ,   convert = FALSE ) %>% View
ff2 %>% group_by(site) %>% mutate( my_n = n() , total_pop = sum(people))   


ff2 %>% count( DATE , site )
ff2 %>% count(  site )


# top_n 要搭配 tally
# 轉個彎
ff %>% filter( people > 10000)%>% group_by(site) %>%  tally(people) %>% top_n(10)  %>% arrange(-n) %>% spread(site,n)

# 總比例
ff %>% mutate( rate1 =  percent(people/sum(people)))

# 佔當天的比例
f11 <- ff %>% group_by( DATE ) %>% mutate( rate2 = percent(people / sum(people) )) %>% select(DATE,rate2,site) %>% spread( DATE , rate2) 

# 
ff %>% group_by( DATE ) %>% mutate( rate2 = (people / sum(people)   ))  

#

ff %>% expand( DATE=   seq( as.Date("2016-05-01") , as.Date("2016-10-01") , by = "days") , site )

ff %>% group_by( DATE ) %>% mutate( rate2 =  ( sum(people) )) %>% arrange(DATE)

#  補充資訊
# raw_data_mrt <- fread("02_MRT/01_big5/mrt_address_raw.csv"  )

# mac
# raw_data_mrt <- fread("02_MRT/02_utf8/mrt_address_raw.csv" , header = TRUE)


raw_data_mrt    
# 字串切割
# 在第3個位置切割
raw_data_mrt %>% separate( site_address ,c("zip5" ,"address"),3)  
# 在第3、第5個位置切割
raw_data_mrt %>% separate( site_address ,c("zip_code" ,"others","address"),c(3,5))  

# 把相同的郵遞區號的捷運站給秀出來
# 暫時想不到實務上的用處
tt1 %>% separate( site_address , c("zip_code" ,"others","address"  ) , c(3,5) )  %>% select(site,zip_code) %>% nest(site)  %>% unnest(data)

# speed to get dummy data
# 中間補資料用-暫時想不到用處 
d1 <- ff %>% expand( DATE=   seq( as.Date("2016-06-01") , as.Date("2016-06-02") , by = "days") , site ) 
d1
# 
# 週報使用捷運的人流
# 作業就用反過來的資料就好

# 2 
tt2 <- ff %>% select(site) %>%  unique()  

# zip_code 結合原本的地址的資料
# 營業額加總後 與 台北捷運的人流做過簡單的相關係系
# 備註：因為是假資料，所以可能不太準 :)
# 但實際上你可以拿自己的資料進行再次驗證
# complete() 可以濾掉一些不滿5萬，但卻還是會顯示的資料列
#
# 這個是用到正規表達式的概念
df %>% extract(x, "A" , "([a-z])")
