component {
    function run( numeric delay="2000" ){
        var attendees   = fileRead( "list.txt" ).listToArray( chr( 10 ) );
        
        // read in past winners
        if( fileExists( "winners.txt" ) ){
            var winners = fileRead( "winners.txt" ).listToArray( chr( 10 ) );
        } else {
            var winners = [];
        }

        // Filter out past winners
        attendees = attendees.filter( (item) => !arrayContainsNoCase( winners, item ) );

        // pick a winner
        var winner = randRange( 1, attendees.len() );
        
        print.blueLine( "Drum roll please....." & chr(10) ).toConsole();
        sleep( arguments.delay );
        print.greenLine( "The winner is : " & #attendees[ winner ]# & chr(10) & "You won a brand new...." );

        // store the winner
        winners.append( attendees[ winner ] );
        fileWrite( "winners.txt", winners.toList( chr(10) ) );
    }
}
