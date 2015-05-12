package me.yuechuan.database;


import java.awt.Color;
import java.awt.Component;

import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.TableCellRenderer;

public class EvenOddRender implements TableCellRenderer {

	public static final DefaultTableCellRenderer DEFAULT_RENDERER = new DefaultTableCellRenderer();

	public Component getTableCellRendererComponent(JTable table, Object value,
			boolean isSelected, boolean hasFocus, int row, int column) {
		Component renderer =
				DEFAULT_RENDERER.getTableCellRendererComponent(table, value,
						isSelected, hasFocus, row, column);
		Color foreground, background;

		if (column==0) {
			foreground = Color.WHITE;
			if(row%2 == 0) {
				background = new Color(220,120,120);
			}
			else
			{
				background = new Color(200,100,100);
			}
		}  else {
			foreground = Color.BLACK;
			background = Color.WHITE;
		}
		renderer.setForeground(foreground);
		renderer.setBackground(background);

		return renderer;
	}
}