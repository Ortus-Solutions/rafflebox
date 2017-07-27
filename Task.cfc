component {

    /**
    * @delay The delay for showing the winner in milliseconds. The default is 3 seconds.
    */
    function run( numeric delay="3000" ){
        var raw = fileRead( "list.txt" );
        var attendees = listToArray( raw, chr(10) );
        var winner = randRange( 1, attendees.len() );

        print
            .blueLine( "Drum roll please....." & chr(10) )
            .toConsole();

        sleep( delay );

        print.greenLine( "The winner is : " & #attendees[ winner ]# & chr(10) & "You won a brand new...." );
    }

}
