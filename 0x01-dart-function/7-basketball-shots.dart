int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAscore =
      teamA['Free throws']! + teamA['2 pointers']! * 2 + teamA['3 pointers']! * 3;
  int teamBscore =
      teamB['Free throws']! + teamB['2 pointers']! * 2 + teamB['3 pointers']! * 3;
      if(teamAscore > teamBscore){
        return 1;
      }
      else if(teamAscore < teamBscore){
        return 2;
      }
      return 0;
}