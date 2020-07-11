<?php
require("conexao.php");
// função do google maps
function parseToXML($htmlStr){
	$xmlStr=str_replace('<','&lt;',$htmlStr);
	$xmlStr=str_replace('>','&gt;',$xmlStr);
	$xmlStr=str_replace('"','&quot;',$xmlStr);
	$xmlStr=str_replace("'",'&#39;',$xmlStr);
	$xmlStr=str_replace("&",'&amp;',$xmlStr);
	return $xmlStr;
}

// selecionando as informações da tabela do Banco de dados
$result_markers = "SELECT *FROM centrohistorico where type = ('Rampa')";
$resultado_markers = mysqli_query($conn, $result_markers);

header("Content-type: text/xml");

// Iniciando o arquivo xml
echo '<markers>';

// interando com as linhas da tabela e criando um xml pra cada
while ($row_markers = mysqli_fetch_assoc($resultado_markers)){
  // Adicionando o documento xml
  echo '<marker ';
  echo 'pontodeinteresse="' . parseToXML($row_markers['pontodeinteresse']) . '" ';
  echo 'pontodereferencia="' . parseToXML($row_markers['pontodereferencia']) . '" ';
  echo 'lat="' . $row_markers['lat'] . '" ';
  echo 'lng="' . $row_markers['lng'] . '" ';
  echo 'type="' . $row_markers['type'] . '" ';
  echo '/>';
}

// Fim do arquivo xml
echo '</markers>';



