package dat.startcode.control;

import dat.startcode.model.exceptions.DatabaseException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;

abstract class Command
{

    private static HashMap<String, Command> commands;

    private static void initCommands() {
        commands = new HashMap<>();
        commands.put("login", new Login());
        commands.put("logout", new Logout());
        commands.put("about", new About());
        commands.put("kronhjort", new Kronhjort());
        commands.put("otto", new Otto());
        commands.put("marc", new Marc());
        commands.put("timi", new Timi());
        commands.put("patrick", new Patrick());

    }

    static Command from( HttpServletRequest request ) {
        String commandName = request.getParameter( "command" );
        if ( commands == null ) {
            initCommands();
        }
        return commands.getOrDefault(commandName, new UnknownCommand() );   // unknowncommand er default.
    }

    abstract String execute( HttpServletRequest request, HttpServletResponse response ) 
            throws DatabaseException;

}
