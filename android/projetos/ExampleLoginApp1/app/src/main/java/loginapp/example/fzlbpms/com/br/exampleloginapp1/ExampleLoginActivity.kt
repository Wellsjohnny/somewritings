package loginapp.example.fzlbpms.com.br.exampleloginapp1

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.TextView
import org.jetbrains.anko.toast


/*

    USA METODO ESTATITICO login
    DA CLASSE AppStaticServices
    PRA RETORNAR
    "Login realizado com sucesso" caso usuario seja admin e senha admin123
    OU
    "Usuario ou Senha Incorretos" para demais casos

 */
class ExampleLoginActivity : AppCompatActivity() {


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_example_login)

        val btLogin : Button = findViewById<Button>(R.id.btLogin)

        btLogin.setOnClickListener(View.OnClickListener {
            val textViewLogin: TextView = findViewById<TextView>(R.id.etUserName) as TextView
            val textViewSenha: TextView = findViewById<TextView>(R.id.epSenha) as TextView

            val loginResult: Boolean = AppStaticServices.login(
                textViewLogin.text.toString(),
                textViewSenha.text.toString())

            if( loginResult == true ){
                toast("Login realizado com Sucesso")
            }else{
                toast("Usuario ou Senha incorretos")
            }
        })
    }
}