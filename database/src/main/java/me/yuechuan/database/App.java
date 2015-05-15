package me.yuechuan.database;

import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;
import me.yuechuan.database.ExplorerMenuBar;

public class App 
{
	public static void main( String[] args )
    {
        try {
            // Set cross-platform Java L&F (also called "Metal")
        	UIManager.setLookAndFeel(
            UIManager.getCrossPlatformLookAndFeelClassName());
        	//UIManager.getLookAndFeel());
        } 
        catch (UnsupportedLookAndFeelException e) {
        	// handle exception
        }
        catch (ClassNotFoundException e) {
        	// handle exception
        }
        catch (InstantiationException e) {
        	// handle exception
        }
        catch (IllegalAccessException e) {
        	// handle exception
        }
        
        Explorer explorer = new Explorer();
        explorer.createFrame(new ExplorerMenuBar(explorer)).setVisible(true);
    }
}


