package model;

public class Test {
	public static void main(String[] args) {
		Projeto teste = new Projeto(1, "Pedro", "Rua A", "Comercial", "Telhado", "15-08-1999", 12.7, 12000.0);
		for (int i = 1; i<9;i++) {
			System.out.print(teste.getColumnByIndex(i)+ " | ");
		}
	}
}
