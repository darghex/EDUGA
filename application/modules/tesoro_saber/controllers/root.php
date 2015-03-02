<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Root extends CI_Controller {

	/* CONTROLADOR DEL MODULO */

	var $variables = array();

	public function __construct()
	{
		parent::__construct();
		if (!$this->session->userdata('id_usuario'))  {   redirect( 'login/root/iniciar_sesion/'.base64_encode(current_url()) );  }
		
		/* configuracion generica del modulo */
		$this->variables=array('modulo'=>'tesoro_saber','id'=>'id','modelo'=>'model_tesoro');

		$mispermisos=$this->model_generico->mispermisos($this->session->userdata('id_roles'),$this->variables['modulo']);
		$this->variables['mispermisos']=json_decode($mispermisos->id_roles);  if (!in_array($this->session->userdata('id_roles'), $this->variables['mispermisos'])) {  redirect( 'inicio/root'); }   	$this->variables['diccionario']=$diccionario=$this->model_generico->diccionario(); 
	}

	/* funcion por defecto del controlador */
	public function index()
	{ /* llamo a la funcion lista para traer el listado de informacion */
		$this->lista();
	}

	/* FUNCION LISTA PARA TRAER EL LISTADO DE INFORMACION DE LA TABLA ASIGNADA AL MODULO */
	public function lista()
	{
		/* Cargo variables globales */
		$variables = $this->variables; $data['diccionario']=$this->variables['diccionario'];
		$data['mispermisos']=$variables['mispermisos'];
		
		$data['titulo']=$variables['modulo'];
		$data['menus']=$this->model_generico->menus_root_categorias();
		foreach ($data['menus'] as $key => $value) {
			$data['menus'][$key]->submenus=$this->model_generico->menus_root($value->id_categorias_modulos_app,$this->session->userdata('id_roles'));

		}
		/* Llamo a la funcion generica para traer el listado de informacion del modulo */
		$data['lista']=$this->model_generico->listado('tesoro_saber_categoria','');
		/* Envio header de la tabla de los campos que necesito mostrar */
		$data['titulos']=array('Nombre','Descripción', 'Estado','Opciones');
		/* Cargo vista de listado de informacion */
		$this->load->view('root/view_'.$variables['modulo'].'_lista',$data);
	}




	/* FUNCION LISTA PARA TRAER EL LISTADO DE INFORMACION DE LA TABLA ASIGNADA AL MODULO */
	public function preguntas($id_categoria)
	{
		/* Cargo variables globales */
		$variables = $this->variables; $data['diccionario']=$this->variables['diccionario'];
		$data['mispermisos']=$variables['mispermisos'];
		
		$data['titulo']="preguntas $id_categoria" ;
		$data['menus']=$this->model_generico->menus_root_categorias();

		foreach ($data['menus'] as $key => $value) {
			$data['menus'][$key]->submenus=$this->model_generico->menus_root($value->id_categorias_modulos_app,$this->session->userdata('id_roles'));

		}
		/* Llamo ala funcion generica para traer el listado de informacion del modulo */
		$data['lista']=$this->model_generico->listado('tesoro_saber_preguntas',array('id_tesoro_saber_categoria',$this->uri->segment(4)),array('tesoro_saber_preguntas.orden','asc'));
		/* Envio header de la tabla de los campos que necesito mostrar */
		$data['titulos']=array("Pregunta","Respuesta","Estado","Opciones");
		/* Cargo vista de listado de informacion */
		$this->load->view('root/view_'.$variables['modulo'].'_detalle_lista',$data);
	}


	public function respuestas_estudiantes ($id_encuestas) {

		/* Cargo variables globales */
		$variables = $this->variables; $data['diccionario']=$this->variables['diccionario'];
		$data['mispermisos']=$variables['mispermisos'];
		
		$data['titulo']=$variables['modulo'];
		$data['menus']=$this->model_generico->menus_root_categorias();
		foreach ($data['menus'] as $key => $value) {
			$data['menus'][$key]->submenus=$this->model_generico->menus_root($value->id_categorias_modulos_app,$this->session->userdata('id_roles'));

		}

		$data['titulos']=array("Curso","Encuesta","Usuario","Opciones");
		$this->load->model('model_encuestas');
		$data['lista_users']=$this->model_encuestas->get_respuestas_lista_usuarios ($id_encuestas);
		$this->load->view('root/view_'.$variables['modulo'].'_respuestas_lista',$data);
	}



	public function estadisticas ($id_encuestas) {



		/* Cargo variables globales */
		$variables = $this->variables; $data['diccionario']=$this->variables['diccionario'];
		$data['mispermisos']=$variables['mispermisos'];
		$this->load->model('model_encuestas');
		$data['titulo']=$variables['modulo'];
		$data['menus']=$this->model_generico->menus_root_categorias();
		foreach ($data['menus'] as $key => $value) {
			$data['menus'][$key]->submenus=$this->model_generico->menus_root($value->id_categorias_modulos_app,$this->session->userdata('id_roles'));
		}



		$data['preguntas']=$this->model_encuestas->get_preguntas($id_encuestas);
		foreach ($data['preguntas'] as $key => $value) {
			$data['preguntas'][$key]->total_respuestas=$this->model_encuestas->get_total_respuestas ($id_encuestas,$value->id_encuestas_detalle);
			$data['preguntas'][$key]->total_finalizados=$this->model_encuestas->get_encuesta_respondida($id_encuestas);
		}

		$this->load->view('root/view_'.$variables['modulo'].'_estadisticas',$data);

	}


	public function exportar ($id_encuestas) {


		/* Cargo variables globales */
		$variables = $this->variables; $data['diccionario']=$this->variables['diccionario'];
		$data['mispermisos']=$variables['mispermisos'];
		$this->load->model('model_encuestas');
		$data['titulo']=$variables['modulo'];
		$data['menus']=$this->model_generico->menus_root_categorias();
		foreach ($data['menus'] as $key => $value) {
			$data['menus'][$key]->submenus=$this->model_generico->menus_root($value->id_categorias_modulos_app,$this->session->userdata('id_roles'));
		}

		$this->load->helper('csv');


		$lista_tmp=$this->model_encuestas->get_respuestas_lista_usuarios_todos($id_encuestas);
		
		foreach ($lista_tmp as $key => $value) {
			if ($value->tipo_pregunta==1) {
				$lista_tmp[$key]->tipo_preg="Tipo test";
			}

			if ($value->tipo_pregunta==2) {
				$lista_tmp[$key]->tipo_preg="Elegir de una lista";
			}

			if ($value->tipo_pregunta==3) {
				$lista_tmp[$key]->tipo_preg="Campo de texto";
			}
			
		}

		






#encabezado del array
		$lista[0]=array('Curso','Nombres Completos','Correo','Pregunta','Tipo pregunta','Respuesta');	

## preparo el array para exportar
		foreach ($lista_tmp as $key => $value) {
			$lista[$key+1]=array(utf8_decode($value->titulo),utf8_decode($value->nombres)." ".utf8_decode($value->apellidos),$value->correo,utf8_decode($value->pregunta),$value->tipo_preg,utf8_decode($value->respuesta));


		}

		header('Content-Type: application/csv');
		header('Content-Disposition: attachement; filename="Encuesta '.utf8_decode($value->titulo).'.csv' . '"');
		echo array_to_csv($lista);
		exit;
















	}




	public function detalle ($id_encuestas,$id_usuario,$id_cursos) {

		/* Cargo variables globales del modulo*/
		$variables = $this->variables; $data['diccionario']=$this->variables['diccionario'];
		$data['menus']=$this->model_generico->menus_root_categorias();
		foreach ($data['menus'] as $key => $value) {
			$data['menus'][$key]->submenus=$this->model_generico->menus_root($value->id_categorias_modulos_app,$this->session->userdata('id_roles'));

		}
		/* Titulo = nombre del modulo */
		$data['titulo']=$variables['modulo'];

		$this->load->model('model_encuestas');

		$data['lista_respuestas']=$this->model_encuestas->get_respuestas($id_encuestas,$id_cursos,$id_usuario);




		/* Cargo vista del modulo */
		$this->load->view('root/view_'.$variables['modulo'].'_detalle',$data);



	}


	/* FUNCION NUEVO DATO */
	public function nuevo()
	{
		/* Cargo variables globales del modulo*/
		$variables = $this->variables; $data['diccionario']=$this->variables['diccionario'];
		$data['menus']=$this->model_generico->menus_root_categorias();
		foreach ($data['menus'] as $key => $value) {
			$data['menus'][$key]->submenus=$this->model_generico->menus_root($value->id_categorias_modulos_app,$this->session->userdata('id_roles'));

		}
		/* Titulo = nombre del modulo */
		$data['titulo']=$variables['modulo'];

		/* Cargo vista del modulo */
		$this->load->view('root/view_'.$variables['modulo'].'_nuevo',$data);
	}



	/* FUNCION NUEVO DATO */
	public function nueva_pregunta()
	{
		/* Cargo variables globales del modulo*/
		$variables = $this->variables; $data['diccionario']=$this->variables['diccionario'];
		$data['menus']=$this->model_generico->menus_root_categorias();
		foreach ($data['menus'] as $key => $value) {
			$data['menus'][$key]->submenus=$this->model_generico->menus_root($value->id_categorias_modulos_app,$this->session->userdata('id_roles'));

		}
		/* Titulo = nombre del modulo */
		$data['titulo']=$variables['modulo'];

		/* Cargo vista del modulo */
		$this->load->view('root/view_'.$variables['modulo'].'_detalle_nuevo',$data);
	}



	/* FUNCION GUARDAR INFORMACION */
	public function guardar()

	{ /* Cargo variables globales */
		$variables = $this->variables; $data['diccionario']=$this->variables['diccionario'];

		/* asigno variable id de lo que voy  aguardar (solo si es modo editar) */
		$id=$this->input->post ('id');

		/* Validaciones  basicas de lo que voy a editar */
		$this->form_validation->set_rules('nombre', 'Nombre', 'required|xss_clean');
		$this->form_validation->set_rules('descripcion', 'Descripcion', 'required|xss_clean');
		$this->form_validation->set_rules('id_estados', 'Estado', 'required|xss_clean');

		/* Si existe error en las validaciones, los muestra */
		if($this->form_validation->run() == FALSE)
		{ 

			if ($id)  { $this->editar($id); } else { $this->nuevo();  }
			
		}

		else {
			/* Asigno en array los valores de los campos llegados por el formulario */
			$data = array(
				'nombre' => $this->input->post ('nombre'),
				'descripcion' => $this->input->post ('descripcion'),
				'id_estados' => $this->input->post ('id_estados'),
				);

			/* Si tiene id, es porque es de editar y guarda la fecha de modificacion, de lo contrario, guarda fecha modificado y creado */
			//if ($id) { $data[$variables['id']]=$id; $data['fecha_modificado']=date('Y-m-d H:i:s',time());  $data['id_usuario_modificado']=$this->session->userdata('id_usuario');  } else {  $data['fecha_modificado']=date('Y-m-d H:i:s',time());  $data['id_usuario_modificado']=$this->session->userdata('id_usuario');  $data['fecha_creado']=date('Y-m-d H:i:s',time()); $data['id_usuario_creado']=$this->session->userdata('id_usuario');   }

			/* Guardo la informacion */
			$id=$this->model_generico->guardar('tesoro_saber_categoria',$data,$variables['id'],array($variables['id'],$id));

			/* Redirecciono al listado */
			$accion_url=base_url().$this->uri->segment(1).'/'.$this->uri->segment(2).'/index/'.$id.'/guardado_ok';
			redirect($accion_url);
		}
	}



	public function guardar_pregunta () {

		$variables = $this->variables; $data['diccionario']=$this->variables['diccionario'];
		/* asigno variable id de lo que voy  aguardar (solo si es modo editar) */
		$id=$this->input->post ('id_categoria');


		/* Validaciones  basicas de lo que voy a editar */
		$this->form_validation->set_rules('pregunta', 'Pregunta', 'required|xss_clean');
		$this->form_validation->set_rules('opcion1', 'Opción A', 'required|xss_clean');
		$this->form_validation->set_rules('opcion2', 'Opción B', 'required|xss_clean');
		$this->form_validation->set_rules('opcion3', 'Opción C', 'required|xss_clean');
		$this->form_validation->set_rules('opcion4', 'Opción D', 'required|xss_clean');
		$this->form_validation->set_rules('id_estados', 'Estado', 'required|xss_clean');
		$this->form_validation->set_rules('respuesta', 'Respuesta', 'required|xss_clean');
		$this->form_validation->set_rules('id_categoria', 'Categoria', 'required|xss_clean');


		

		/* Si existe error en las validaciones, los muestra */
		if($this->form_validation->run() == FALSE)
		{ 

			if ($id)  { $this->editar_pregunta($id); } else { $this->nueva_pregunta();  }
			
		}

		else {

			$data = array(
				'pregunta' => $this->input->post ('pregunta'),
				'rc' => $this->input->post ('respuesta'),
				'id_estados' => $this->input->post ('id_estados'),
				'id_estados' => $this->input->post ('id_estados'),
				'opcion1' => $this->input->post ('opcion1'),
				'opcion2' => $this->input->post ('opcion2'),
				'opcion3' => $this->input->post ('opcion3'),
				'opcion4' => $this->input->post ('opcion4'),
				'id_tesoro_saber_categoria' => $this->input->post ('id_categoria'),
				);

			
			//if ($id) { $data['id']=$id; $data['fecha_modificado']=date('Y-m-d H:i:s',time());  $data['id_usuario_modificado']=$this->session->userdata('id_usuario');  } else {  $data['fecha_modificado']=date('Y-m-d H:i:s',time());  $data['id_usuario_modificado']=$this->session->userdata('id_usuario');  $data['fecha_creado']=date('Y-m-d H:i:s',time()); $data['id_usuario_creado']=$this->session->userdata('id_usuario');   }


		
			/* Guardo la informacion */
			$id=$this->model_generico->guardar('tesoro_saber_preguntas',$data,'id',null);
			

			/* Redirecciono al listado */
			$accion_url=base_url().'tesoro_saber/root/preguntas/'.$this->input->post('id_categoria').'/'.$id.'/guardado_ok';
			redirect($accion_url);


		}


	}



// funcion para validar datos en cascada
	public function check_validador($id)
	{
		/* consulto en cascada si hay datos para asi evitar error entre llaves foraneas */
		$if_detalle=$this->model_generico->listado('cursos',array('id_categoria_cursos',$id));
		#krumo ($if_detalle);
		if (count ($if_detalle)==0)  {

			return true;
		}
		else {

			foreach ($if_detalle as $key => $value) {
				$cursos[]=$value->titulo;
			}

			$this->form_validation->set_message('check_validador', 'Existe cursos en esta categoria <b>('.implode(",", $cursos).')</b>, borrelos primero');
			return false;
		}

	}





	/* FUNCION BORRAR */
	public function borrar()
	{
		/*Cargo variables globales*/
		$variables = $this->variables; $data['diccionario']=$this->variables['diccionario'];
		/* Validacion basica del id */
		$this->form_validation->set_rules('id', 'Id', 'required|xss_clean|callback_check_validador');

		/*Asigno valor del id a una variable*/
		$id=$this->input->post('id');
		/*Llamo funcion borrar */
		

		if ($this->form_validation->run() == FALSE)
		{
			$this->lista();
		}
		else
		{
			$this->model_generico->borrar("tesoro_saber_categoria",array($variables['id']=>$this->input->post ('id')));
			/*Preparo redireccion al listado de informacion del modulo*/
			$accion_url=base_url().$this->uri->segment(1).'/'.$this->uri->segment(2).'/index/borrado_ok';
			redirect($accion_url);
		}

		
	}



	/* FUNCION BORRAR */
	public function borrar_pregunta($id_encuestas)
	{

		#echo base_url().$this->uri->segment(1).'/'.$this->uri->segment(2).'/preguntas/'.$id_encuestas.'/borrado_ok'; exit;
		/*Cargo variables globales*/
		$variables = $this->variables; $data['diccionario']=$this->variables['diccionario'];
		/* Validacion basica del id */
		$this->form_validation->set_rules('id', 'Id', 'required|xss_clean|callback_check_validador');

		/*Asigno valor del id a una variable*/
		$id=$this->input->post('id');
		/*Llamo funcion borrar */
		

		if ($this->form_validation->run() == FALSE)
		{
			$this->lista();
		}
		else
		{
			$this->model_generico->borrar('tesoro_saber_categoria',array('id'=>$this->input->post ('id')));
			/*Preparo redireccion al listado de informacion del modulo*/
			$accion_url=base_url().$this->uri->segment(1).'/'.$this->uri->segment(2).'/preguntas/'.$id_encuestas.'/borrado_ok';
			redirect($accion_url);
		}

		
	}



	/*FUNCION EDITAR */
	public function editar($id,$error_extra=null)
	{
		/*Cargo variables globales*/
		$variables = $this->variables; $data['diccionario']=$this->variables['diccionario'];
		$data['titulo']='categorias de preguntas juego tesoro del saber';
		$data['menus']=$this->model_generico->menus_root_categorias();
		foreach ($data['menus'] as $key => $value) {
			$data['menus'][$key]->submenus=$this->model_generico->menus_root($value->id_categorias_modulos_app,$this->session->userdata('id_roles'));

		}
		/*LLamo funcion para cargar informacion detalle para editarlo*/
		$data['detalle']=$this->model_generico->detalle('tesoro_saber_categoria',array($variables['id']=>$id));
		/*En caso de algun error extra, lo llevo a la vista para cargarlo*/
		$data['error_extra']=$error_extra;
		/*Llamo a la vista de edicion*/
		$this->load->view('root/view_'.$variables['modulo'].'_editar',$data);

	}

	/*FUNCION EDITAR */
	public function editar_pregunta($id_encuestas,$id_encuestas_detalle,$error_extra=null)
	{
		/*Cargo variables globales*/
		$variables = $this->variables; $data['diccionario']=$this->variables['diccionario'];
		$data['titulo']=$variables['modulo'];
		$data['menus']=$this->model_generico->menus_root_categorias();
		foreach ($data['menus'] as $key => $value) {
			$data['menus'][$key]->submenus=$this->model_generico->menus_root($value->id_categorias_modulos_app,$this->session->userdata('id_roles'));
		}
		/*LLamo funcion para cargar informacion detalle para editarlo*/
		$data['detalle']=$this->model_generico->detalle('tesoro_saber_preguntas',array('id_tesoro_saber_categoria'=>$id_encuestas_detalle));
		/*En caso de algun error extra, lo llevo a la vista para cargarlo*/
		$data['error_extra']=$error_extra;
		/*Llamo a la vista de edicion*/
		$this->load->view('root/view_'.$variables['modulo'].'_detalle_editar',$data);

	}



	/*FUNCION ORDENAR PARA EL LISTADO (ordena con arrastrar y soltar filas de la tabla de listado)*/
	public function ordenar()
	{
		/*Cargo variables globales*/
		$variables = $this->variables; $data['diccionario']=$this->variables['diccionario'];
		/*Cargo orden de listas*/
		$data = $this->input->post('data');
		/*Separo el orden traido por la coma*/
		$dataarray=explode (",",$data);
		/* por medio de un ciclo, empezar a actualizar el nuevo orden */
		foreach ($dataarray as $key => $value) {
			/* Actualizo nuevo orden de cada uno de los elementos */
			$this->model_generico->ordenar($variables['modulo'],array("orden"=>$key+1),array($variables['id'],$value));
		}

	}


	/*FUNCION ORDENAR PARA EL LISTADO (ordena con arrastrar y soltar filas de la tabla de listado)*/
	public function ordenar_preguntas()
	{
		/*Cargo variables globales*/
		$variables = $this->variables; $data['diccionario']=$this->variables['diccionario'];
		/*Cargo orden de listas*/
		$data = $this->input->post('data');
		/*Separo el orden traido por la coma*/
		$dataarray=explode (",",$data);
		/* por medio de un ciclo, empezar a actualizar el nuevo orden */
		foreach ($dataarray as $key => $value) {
			/* Actualizo nuevo orden de cada uno de los elementos */
			$this->model_generico->ordenar('encuestas_detalle',array("orden"=>$key+1),array('id_encuestas_detalle',$value));
		}

	}

	/* vista AJAX para la carga de preguntas*/
	public function cargar_preguntas()
	{
		$this->db->select("COUNT(id) as tamanio");
		$this->db->where('id_estados', "1" );
		$query = $this->db->get('tesoro_saber_preguntas');
		$row = current($query->result()) or null;
		
		$pos = rand(1, $row->tamanio -1);
		
		$query = $this->db->get('tesoro_saber_preguntas', $pos, 1);

		$pre = current($query->result()) or null;
		// reordenar aleatoriamente las opciones de respuesta
		$opciones = $this->rotar( array("r1","r2", "r3","r4") );
		

		$response = array('id' => $pre->id, 'pregunta' => $pre->pregunta, 
			$opciones[0] => array('label' => 'A', 'detalle' => $pre->opcion1), 
			$opciones[1] => array('label' => 'B', 'detalle' => $pre->opcion2), 
			$opciones[2] => array('label' => 'C', 'detalle' => $pre->opcion3), 
			$opciones[3] => array('label' => 'D', 'detalle' => $pre->opcion4),
			'rc' => $pre->rc );

		print json_encode($response);
	}



	/* Funcion que cambia el orden de las opciones de respuesta */
	private function rotar($array){
		
		$new_array = array();
		foreach ( $array as $item){
			$max = count($array);
			$pos = rand(1, $max) - 1;
			$elemento = current( array_splice( $array, $pos, 1) ) ;
			array_push($new_array, $elemento );

		}
		return $new_array; 
	}

	/* vista que se encarga de verificar la respuesta marcada por el usuario*/
	public function verificar()
	{

		$this->db->where('id', $_GET["pregunta"] );
		$this->db->where('id_estados', "1" );
		$query = $this->db->get('tesoro_saber_preguntas');
		$row = current($query->result()) or null;
		print json_encode(array('rc' =>  $row->rc ));
	}



}