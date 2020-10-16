library(tidyverse)
data("presidential")
presidential

class(presidential)

MASS::Boston
class(MASS::Boston)

as_tibble(MASS::Boston)

select(presidential, name)
select(presidential, name, party)
presidential[,c("name","party")]

filter(presidential, party == "Republican")
presidential[presidential$party == "Republican",]
subset(presidential, party == "Republican")

data1 <- filter(presidential, party == "Republican")
data2 <- select(data1, name)
data2

data2 <- select(filter(presidential, party == "Republican"), name)
data2

filter(presidential, party == "Republican")

data1 <- presidential %>%
  filter(start > 1973 & party == "Democratic")
data1 %>% 
  select(name)

presidential %>%   filter(party == "Republican")

data1 <- filter(presidential, party == "Republican")
(data2 <- select(data1, name))

select(filter(presidential, party == "Republican"), name)

presidential %>%   filter(party == "Republican")  %>%   select( name)
    

presidential %>%
  filter(party == "Republican")  %>%
  select( name)



presidential %>%   filter(party == "Republican")  %>%   select(name)

data2 <- presidential %>%   filter(party == "Republican")  %>%   select(name)
data2

presidential %>%
  filter(party == "Republican")  %>%
  select(name)

log(10)
10 %>% log()

sin(cos(log(10)))
10 %>% log() %>% cos() %>% sin()

presidential %>% names()
presidential %>% nrow()
presidential %>% head(2)


presidential %>% names()
presidential %>% nrow()


pres <- filter(presidential, start > 1973 & party == "Democratic")
class(pres)
select(pres, name)


pres <- filter(presidential, start > 1973 & party == "Democratic")
select(pres, name)


select(filter(presidential, start > 1973 & party == "Democratic"), name)

presidential %>%
  filter(start > 1973 & party == "Democratic") %>%
  select(name)


presidential %>%
  filter(start > 1973 & party == "Democratic")

filter(presidential, start > 1973 & party == "Democratic") %>% 
  select(name)

mutate(presidential, longitud = end - start)

mypresidents <- presidential %>%
  mutate(term_length = end - start)
mypresidents

presidential <- presidential %>%
  mutate(term_length = end - start)

head(mypresidents,2)

presidential %>% rename(nombre = name)

presidential %>% mutate(nombre = name) %>% select(nombre, start, end, party)


mypresidents %>% arrange(term_length)

mypresidents %>% arrange(desc(term_length))

mypresidents %>% arrange(desc(term_length), start)
mypresidents %>% arrange(desc(term_length), desc(start))
mypresidents %>% arrange(desc(term_length), party, start)


mypresidents %>% arrange(desc(term_length), party)


presidential %>% summarise(numero = n())

mypresidents %>% mutate(Demo = party == "Democratic")

mypresidents %>%
  summarize(
    N = n()) 

mypresidents %>%
  summarize(
    N = n(),
    m = mean(term_length)) 

summary(mypresidents$start)

mypresidents %>% summarise(
  minimo = min(start),
  maximo = max(start)
)


mypresidents %>%
  mutate(dems = party=="Democratic") %>% 
  summarize(
    N = n(),
    num_dems = sum(dems),
    m = mean(term_length)) 


mypresidents %>%
  summarize(
    N = n(),
    num_dems = sum(party == "Democratic"),
    m = mean(term_length)) 

mypresidents %>%
  summarise(
    N = n(), 
    num_dems = sum(party == "Democratic"),
    avg_term_length = mean(term_length)
  )

#install.packages("lubridate")
library(lubridate)
library(tidyverse)
mypresidents %>% 
  mutate(anno = year(start),
         mes  = month(end)
  )

mypresidents %>%
  summarize(
    N = n(), 
    first_year = min(year(start)), 
    last_year = max(year(end)),
    num_dems = sum(party == "Democratic"),
    avg_term_length = mean(term_length)
  )

mypresidents2 <- mypresidents %>% mutate(nueva_variable = party=="Democratic")

TRUE + TRUE
TRUE + FALSE


mypresidents %>%
  summarize(
    N = n(), 
    avg_term_length = mean(term_length)
  )


mypresidents %>%
  group_by(party) %>% 
  summarize(
    N = n(), 
    avg_term_length = mean(term_length)
  )

mypresidents %>%
  summarize(
    N = n(), 
    avg_term_length = mean(term_length)
  )


mypresidents %>%
  summarize(
    avg_term_length = mean(term_length)
  )

mypresidents %>%
  filter(party == "Democratic") %>% 
  summarize(
    avg_term_length = mean(term_length)
  )

mypresidents %>%
  filter(party == "Republican") %>% 
  summarize(
    avg_term_length = mean(term_length)
  )

## mas de un group_by
mypresidents %>%
  group_by(party, term_length) %>%
  summarize(
    N = n(),    avg_term_length = mean(term_length)
  ) %>% group_by(party)



mypresidents
mypresidents %>%
  group_by(party)

mypresidents %>%
  arrange(party)

%>% %>% %>% 
  
  log(10)
10 %>% log()

sin(cos(log(10)))

10 %>% log() %>% cos() %>% sin()

names(presidential)
presidential %>% names()
mypresidents %>% nrows()

x <- c(2,1,3,0)
x == 0 
x != 0 

!(x == 0)
x == 0 | x == 1 

x == 0 & x == 1 

x %in% c(0,1)

x[3] <- NA
x
is.na(x)
!is.na(x)


install.packages("nycflights13")
library(nycflights13)
data("flights")
flights


select(flights, year:arr_time)


select(flights, -(year:day))
