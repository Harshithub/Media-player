
// This script adds a key binding.

using System.Reflection;

using mpvnet;

class Script
{
    public Script()
    {
        string content = "ctrl+w script-message my-message-1 my-argument-1";
        string sectionName = Assembly.GetExecutingAssembly().GetName().Name;
        CorePlayer core = Global.Core;
        core.commandv("define-section", sectionName, content, "force");
        core.commandv("enable-section", sectionName);
        core.ClientMessage += ClientMessage;
    }

    void ClientMessage(string[] args)
    {
        switch (args[0])
        {
            case "my-message-1":
                Msg.ShowInfo(args[1]);
                break;
        }
    }
}
