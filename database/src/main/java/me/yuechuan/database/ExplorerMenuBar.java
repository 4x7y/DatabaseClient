package me.yuechuan.database;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;

public class ExplorerMenuBar extends JMenuBar 
{	
	public ExplorerMenuBar(final Explorer editor) {
		
		
		JMenu mnFile = new JMenu("File");
		add(mnFile);
		
		JMenuItem mntmImport = new JMenuItem("Import");
		mnFile.add(mntmImport);
		
		mntmImport.addActionListener(new ActionListener()
		{
			public void actionPerformed(ActionEvent e)
			{
				if (e.getSource() instanceof JMenuItem)
				{ 
		            //System.out.println(celFilePath); 
					
				}
			}
		});
		
		JMenuItem mntmExport = new JMenuItem("Export");
		mnFile.add(mntmExport);
		
		mntmExport.addActionListener(new ActionListener()
		{
			public void actionPerformed(ActionEvent e)
			{
				if (e.getSource() instanceof JMenuItem)
				{
					//AboutDialog ad = new AboutDialog(editor.getFrame());
				}
			}
		});
		
		JMenu mnOpen = new JMenu("Open");
		add(mnOpen);
		
		JMenu mnEdit = new JMenu("Edit");
		add(mnEdit);
		
		JMenu mnRun = new JMenu("Run");
		add(mnRun);
	}
	
    public JMenu add(JMenu c) {
        super.add(c);
        return c;
    }
    
    
}
