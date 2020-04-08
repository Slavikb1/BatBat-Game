package al.artofsoul.batbatgame.main;

import javax.swing.JFrame;

/**
 * @author N.Kolaba
 */

public class BatBatGame {

	public static void main(String[] args) {
		JFrame window = new JFrame("BatBat Game");
		window.add(new GamePanel());
		window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		window.setResizable(false);
		window.pack();
		window.setLocationRelativeTo(null);
		window.setVisible(true);
	}

}