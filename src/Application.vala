public class MyApp : Gtk.Application {

    public MyApp () {
            Object (
                    application_id: "com.github.Throdoin.wally",
                    flags: ApplicationFlags.FLAGS_NONE
            );
    }

    protected override void activate () {
        var main_window = new Gtk.ApplicationWindow (this);
        var button1 = new Gtk.Button.with_label _("Static wallpaper");
        var label1 = new Gtk.Label _("Welcome to Wally");
        button1.margin = 50; 
        main_window.default_height = 900;
        main_window.default_width = 1310;
        main_window.title = _("Wally - your wallpaper solution!");  
        main_window.add (button1);
        main_window.add (label1);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        var app = new MyApp ();
        return app.run (args);
    }
}
