package me.yuechuan.database;

import java.awt.LayoutManager;
import java.awt.Color;
import java.awt.Font;
import java.awt.image.BufferedImage;
import java.io.IOException;

import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PiePlot3D;
import org.jfree.chart.title.TextTitle;
import org.jfree.data.general.DefaultPieDataset;

import javax.swing.ImageIcon;
import javax.swing.JPanel;
import javax.swing.GroupLayout;
import javax.swing.GroupLayout.Alignment;
import javax.swing.JLabel;

public class StatisticInfoPanel extends JPanel {

	private static final long serialVersionUID = 1L;

	public StatisticInfoPanel() {
		
		JLabel lblpic1 = new JLabel("");
		GroupLayout groupLayout = new GroupLayout(this);
		groupLayout.setHorizontalGroup(
			groupLayout.createParallelGroup(Alignment.LEADING)
				.addGroup(groupLayout.createSequentialGroup()
					.addContainerGap()
					.addComponent(lblpic1, GroupLayout.PREFERRED_SIZE, 363, GroupLayout.PREFERRED_SIZE)
					.addContainerGap(315, Short.MAX_VALUE))
		);
		groupLayout.setVerticalGroup(
			groupLayout.createParallelGroup(Alignment.LEADING)
				.addGroup(groupLayout.createSequentialGroup()
					.addContainerGap()
					.addComponent(lblpic1, GroupLayout.PREFERRED_SIZE, 340, GroupLayout.PREFERRED_SIZE)
					.addContainerGap(240, Short.MAX_VALUE))
		);
		setLayout(groupLayout);
		
		DefaultPieDataset dataType = new DefaultPieDataset();
		
		dataType.setValue("IE6", 156);
		dataType.setValue("IE7", 230);
		dataType.setValue("IE8", 45);
		dataType.setValue("火狐", 640);
		dataType.setValue("谷歌", 245);
		try {
			DefaultPieDataset data = dataType;
			// 生成普通饼状图除掉 3D 即可
			// 生产3D饼状图
			PiePlot3D plot = new PiePlot3D(data);
			JFreeChart chart = new JFreeChart(
					"用户使用的浏览器类型",            // 图形标题
					JFreeChart.DEFAULT_TITLE_FONT, // 标题字体
					plot,                          // 图标标题对象
					true                           // 是否显示图例
			);
			// 设置整个图片的背景色
			chart.setBackgroundPaint(new Color(255,255,255));
			// 设置图片有边框
			chart.setBorderVisible(true);
			// 配置字体
			Font kfont = new Font("宋体", Font.PLAIN, 12);    // 底部
			Font titleFont = new Font("宋体", Font.BOLD, 25); // 图片标题
			// 图片标题
			chart.setTitle(new TextTitle(chart.getTitle().getText(), titleFont));
			// 底部
			chart.getLegend().setItemFont(kfont);
					         
			BufferedImage image = chart.createBufferedImage(200,200);
			lblpic1.setIcon(new ImageIcon(image));
			
			//ChartUtilities.writeChartAsJPEG(response.getOutputStream(), 1.0f,
			//		chart, 500, 300, null);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
