<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Contactenos extends MY_Controller {

		public function index(){
		$this->contacto();
	}


	public function contacto(){


		$this->load->model("model_contenidos");
		$data['menu_header'] = $this->model_contenidos->cargar_menu();


		$this->load->model("model_catalogo");

		// carga informacion de las categorias
		$data_categorias['info_footer'] = $this->model_catalogo->cargar_categorias();

		// carga informacion de los hijos
		foreach( $data_categorias['info_footer'] as $key => $cat_row ){
			$data_categorias['info_footer'][$key]->hijos = $this->model_catalogo->cargar_hijos( $cat_row->id_catalogo_categoria );
		}


		$this->load->view('view_header');
		$this->load->view('view_menu', $data);
		$this->load->view('view_contacto' );
		$this->load->view('view_footer', $data_categorias);
	}

	public function contacto_enviado(){


		$this->load->model("model_contenidos");
		$data['menu_header'] = $this->model_contenidos->cargar_menu();


		$this->load->model("model_catalogo");

		// carga informacion de las categorias
		$data_categorias['info_footer'] = $this->model_catalogo->cargar_categorias();

		// carga informacion de los hijos
		foreach( $data_categorias['info_footer'] as $key => $cat_row ){
			$data_categorias['info_footer'][$key]->hijos = $this->model_catalogo->cargar_hijos( $cat_row->id_catalogo_categoria );
		}


		$this->load->view('view_header');
		$this->load->view('view_menu', $data);
		$this->load->view('view_correo_enviado' );
		$this->load->view('view_footer', $data_categorias);
	}






	// verifica datos email
	public function validacion_contacto(){



		$this->load->library('form_validation');
		$this->form_validation->set_rules('nombre', 'Nombre', 'required|xss_clean|min_length[2]');
		$this->form_validation->set_rules('ciudad', 'Ciudad', 'required|xss_clean|min_length[2]');
		$this->form_validation->set_rules('email', 'E-mail', 'required|xss_clean|valid_email');
		$this->form_validation->set_rules('telefono', 'Telefono', 'required|xss_clean|numeric|min_length[6]');
		$this->form_validation->set_rules('mensaje', 'Mensaje', 'required|xss_clean|min_length[10]');
		$this->form_validation->set_rules('asunto', 'Asunto', 'required|xss_clean');

		if ($this->form_validation->run() == FALSE){
		 	$this->contacto();
		 } else{

		$this->input->post("nombre_campo");

			$content = file_get_contents( site_url()."email_templates/plantilla_correo.html" );
			$content = str_replace("{nombre}",$this->input->post("nombre"), $content);
			$content = str_replace("{ciudad}",$this->input->post("ciudad"), $content);
			$content = str_replace("{email}",$this->input->post("email"), $content);
			$content = str_replace("{telefono}",$this->input->post("telefono"), $content);
			$content = str_replace("{mensaje}",$this->input->post("mensaje"), $content);
			$content = str_replace("{asunto}",$this->input->post("asunto"), $content);

            $config['mailtype'] = 'html';
			$this->load->library("email");
			$this->email->initialize($config);

			$this->email->from('contacto@webbost.net', 'Impot');
			$this->email->to('contacto@webbost.net');
			$this->email->subject('Contacto desde impot');
			$this->email->message( $content );
			#$this->email->send();

		 	$this->contacto_enviado();
		}



	}

}