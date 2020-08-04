class Eugine {
    var age: Int = 25
        private set;
};

fun countString(word: String, formula: (String)->Int)): Int {
    return formula(word);
}
fun main(args: Array<String>) {
    val hihiNum = countString("hihi") {
        input->input.length;
    }
    println(hihiNum);
}
