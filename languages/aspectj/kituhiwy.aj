public aspect Hello {
  before(): execution(* main(..)) { System.out.println("Hello World!"); }
}
