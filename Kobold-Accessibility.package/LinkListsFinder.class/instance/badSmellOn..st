bad smells
badSmellOn: events
| url xpathsList |
url:=events first url.
xpathsList:=events first xpathsList .
^ OverlookedContentBetweenLists downwardsOn:url threats: events domElements:xpathsList