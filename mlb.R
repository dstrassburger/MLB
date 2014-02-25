library(XML)

#new comment

xmlurl<-"http://gd2.mlb.com/components/game/mlb/year_2012/month_06/day_11/miniscoreboard.xml"

doc<-xmlTreeParse(xmlurl,useInternalNodes=TRUE)

xpathSApply(doc,'//games/*',xmlGetAttr,'away_team_runs') 
xpathSApply(doc,'//games/*',xmlGetAttr,'time')
xpathSApply(doc,'//games/game/game_media/*',xmlGetAttr,'title')
xpathSApply(doc,'//games/game[@home_team_runs='2']/game_media/media/@headline)


top<-xmlRoot(doc)

xmlName(top)

names(top)

names(top[[1]])

#Get nodes with attributes equaling a specifier
nodes<-getNodeSet(top,"//games/game[@home_team_runs > '0']")

getNodeSet(top,"//games/game[@home_team_runs > '0']")
getNodeSet(nodes,"//games/game[@venue='Dodger Stadium']")

sapply(nodes,function(x) xmlGetAttr(x,"game_media/@title"))

xmlSApply(top,xmlGetAttr,"id")

xmlSApply(top,xmlGetAttr,"venue")