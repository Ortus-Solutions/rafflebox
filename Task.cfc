component {
    function run( numeric delay="3000" ){
        var attendees   = fileRead( "list.txt" ).listToArray( chr( 10 ) );
        var winner      = randRange( 1, attendees.len() );
        print.blueLine( "Drum roll please....." & chr(10) ).toConsole();
        sleep( 3000 );
        print.greenLine( "The winner is : " & #attendees[ winner ]# & chr(10) & "You won a brand new...." );
    }
}
