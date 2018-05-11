package buscadorDePalabras;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
//import java.util.StringTokenizer;

public class BoyerMoore {
	private final int R; // the radix
	private int[] right; // the bad-character skip array
	private String pat; // or as a string

	public static String reverse(String txt) {
		if ((null == txt) || (txt.length() <= 1)) {
			return txt;
		}
		return reverse(txt.substring(1)) + txt.charAt(0);
	}

	public static void a(String t) {
		String[] palabras = t.split(" ");

		for (String i : palabras) {
			System.out.print(reverse(i) + " ");
		}
	}

	public BoyerMoore(String pat) {
		this.R = 256;
		this.pat = pat;

		right = new int[R];
		for (int c = 0; c < R; c++)
			right[c] = -1;
		for (int j = 0; j < pat.length(); j++)
			right[pat.charAt(j)] = j;
	}

	public ArrayList<Integer> search(String txt) {
		int M = pat.length();
		int N = txt.length();
		ArrayList<Integer> newArrayInt = new ArrayList<Integer>();
		int skip;
		for (int i = 0; i <= N - M; i += skip) {
			skip = 0;
			for (int j = M - 1; j >= 0; j--) {
				if (pat.charAt(j) != txt.charAt(i + j)) {
					skip = Math.max(1, j - right[txt.charAt(i + j)]);
					break;
				}
			}
			if (skip == 0) {
				newArrayInt.add(i); // found
				skip++;
			}
		}
		return newArrayInt; // not found
	}

	public static void main(String[] args) throws IOException {


		
		InputStreamReader leer = new InputStreamReader(System.in);
		BufferedReader buff = new BufferedReader(leer);

		System.out.println("Ingrese el texto");
		String txt = buff.readLine();
		System.out.println("Ingrese la palabra a Buscar");
		String pat = buff.readLine();

		BoyerMoore boyermoore1 = new BoyerMoore(pat);

		ArrayList<Integer> offset = boyermoore1.search(txt);

		// StringTokenizer a = new StringTokenizer(offset);

		int veces = offset.size();

		// for (int x=txt.length()-1;x>=0;x--)sCadenaInvertida = sCadenaInvertida +
		// txt.charAt(x);

		System.out.println("Se repitio la palabra: " + pat);
		System.out.println("Numero de Veces que se repite: " + veces);
		System.out.println("Posisiones en las que se repite: " + offset);
		System.out.println("Desa girar el texto conservanto el orden(1) o desea girarlo completamente (2)");
		int opcion = buff.read();
		if (opcion == 49)
			a(txt);
		else
			System.out.println("El Texto Invertido es: " + reverse(txt));

		
		
	}
}
