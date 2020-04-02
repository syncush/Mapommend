Mapommend
You should build a web application using RoR, the app purpose is to allow users to save their favorite geo-locations on a map and share it with the world(only if they want to).

Other users can:
View
 comment
like
Share - add these location to their own favorite

Geo marks can be public or private, public means other users can see it.

If a user decided to delete his mark all the comments, likes, shares on it should be deleted too.

Notes:
It is recommended to use leaflet.
You can use react / vanilla js, vanilla js is preferred because chaos is a ladder and the pain will stay forever.

For likes use the following gem votable.
Geo mark is a simple geo-point, no polygons or linestrings.

advantage:
For linux users who does not use wsl, use postgres + postgis to store the geopoint in the db otherwise just use 2 columns of long and lat.

Have fun.

run `rake routes` to see paths.

To `sign up` and `sign in` user devise routing

root is `/geo_marks`
to add a new `geo_mark` go to `/geo_marks/new`

use the `like` and `share` button from the `marker` on the map.


