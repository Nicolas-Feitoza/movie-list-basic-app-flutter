/*
Add Supported Image Sizes  
                                 Min Res      Max Res  
poster   = Poster ............  500 x 750   2000 x 3000  
backdrop = Fanart ............ 1280 x 720   3840 x 2160  
still    = TV Show Episode ... 1280 x 720   3840 x 2160  
profile  = Actors Actresses ..  300 x 450   2000 x 3000  
logo     = TMDb Logo  

## API Supported Image Sizes  

|  poster  | backdrop |  still   | profile  |   logo   |
| :------: | :------: | :------: | :------: | :------: |
| -------- | -------- | -------- |    w45   |    w45   |
|    w92   | -------- |    w92   | -------- |    w92   |
|   w154   | -------- | -------- | -------- |   w154   |
|   w185   | -------- |   w185   |   w185   |   w185   |
| -------- |   w300   |   w300   | -------- |   w300   |
|   w342   | -------- | -------- | -------- | -------- |
|   w500   | -------- | -------- | -------- |   w500   |
| -------- | -------- | -------- |   h632   | -------- |
|   w780   |   w780   | -------- | -------- | -------- |
| -------- |  w1280   | -------- | -------- | -------- |
| original | original | original | original | original |  

Original Size is the size of the uploaded image.  
It can be between Minimum Resolution and Maximum Resolution.
*/

final Map<String, List<Map<String, dynamic>>> moviesByCategory = {
  'Action': [
    {
      'title': 'Vingadores', 
      'year': '2012', 
      'rating': 8.0,
      'image' : 'https://image.tmdb.org/t/p/w500/RYMX2wcKCBAr24UyPD7xwmjaTn.jpg'
      //'image': 'assets/avengers.jpg'
    },
    {
      'title': 'John Wick', 
      'year': '2014', 
      'rating': 7.4, 
     // 'image': 'assets/john_wick.jpg'
      'image': 'https://image.tmdb.org/t/p/w500/fZPSd91yGE9fCcCe6OoQr6E3Bev.jpg'
    },
    {
      'title': 'Duro de Matar', 
      'year': '1988', 
      'rating': 8.2, 
      //'image': 'assets/die_hard.jpg'
      'image': 'https://image.tmdb.org/t/p/w500/aJCpHDC6RoGz7d1Fzayl019xnxX.jpg'
    },
  ],
  'Comedy': [
    {
      'title': 'Se Beber, Não Case', 
      'year': '2009', 
      'rating': 7.7, 
      //'image': 'assets/hangover.jpg'
      'image': 'https://image.tmdb.org/t/p/w500/A0uS9rHR56FeBtpjVki16M5xxSW.jpg'
    },
    {
      'title': 'Superbad', 
      'year': '2007', 
      'rating': 7.6, 
      //'image': 'assets/superbad.jpg'
      'image': 'https://image.tmdb.org/t/p/w500/ek8e8txUyUwd2BNqj6lFEerJfbq.jpg'
    },
  ],
  'Drama': [
    {
      'title': 'O Poderoso Chefão', 
      'year': '1972', 
      'rating': 9.2, 
      //'image': 'assets/godfather.jpg'
      'image': 'https://image.tmdb.org/t/p/w500/3bhkrj58Vtu7enYsRolD1fZdja1.jpg'
    },
    {
      'title': 'À Espera de um Milagre', 
      'year': '1999', 
      'rating': 8.6, 
      //'image': 'assets/green_mile.jpg'
      'image': 'https://image.tmdb.org/t/p/w500/8VG8fDNiy50H4FedGwdSVUPoaJe.jpg'
    },
  ],
  'Science Fiction': [
    {
      'title': 'Interestelar', 
      'year': '2014', 
      'rating': 8.6, 
      //'image': 'assets/interstellar.jpg'
      'image': 'https://image.tmdb.org/t/p/w500/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg'
    },
    {
      'title': 'Matrix', 
      'year': '1999', 
      'rating': 8.7, 
      //'image': 'assets/matrix.jpg'
      'image': 'https://image.tmdb.org/t/p/w500/AfFD10ZqEx2vkxM2yvRZkybsGB7.jpg'
    },
  ],
};