$(document).ready ->

  $alcool = $('#alcool')
  $gasolina = $('#gasolina')

  $div_resultado = $('#div_resultado')
  $resultado = $('#resultado')

  $btn_calcular = $('#btn_calcular')

  $div_resultado.hide()
  $btn_calcular.click ->
    $div_resultado.hide()
    $.ajax '/convert',
          type: 'GET'
          dataType: 'json'
          data: {
                  alcool: $alcool.val(),
                  gasolina: $gasolina.val()
                }
          error: (jqXHR, textStatus, errorThrown) ->
            alert textStatus
          success: (data, text, jqXHR) ->
            $resultado.removeClass();

            $resultado.text(data.mais_economico)
            if (data.mais_economico == 'Álcool')
              $resultado.addClass('green-text text-accent-3');
            else
              $resultado.addClass('red-text text-accent-3');

            $div_resultado.show()

      return false;

