<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Contacto extends CI_Controller {

	public function index()
	{
		$this->cargar_contacto();
	}

	public function contacto_enviado (){
        $data_header['contenido1']=$this->model_contenidos->get_contenido_texto(1);
		$data_header['count_packs']=$this->model_contenidos->cargar_mis_packs($this->session->userdata('id_cliente'),'');
		$this->load->model("model_contenidos");
		$this->load->view('view_header',$data_header);
		$this->load->view('view_correo_enviado' );
		$this->load->view('view_footer');

	}

	public function validacion_contacto (){
		$data_header['count_packs']=$this->model_contenidos->cargar_mis_packs($this->session->userdata('id_cliente'),'');
		$this->load->library('form_validation');


		$this->load->model('model_formulario');
		$correo_contactop=$this->model_formulario->get_correo_contacto();

		
		$this->form_validation->set_rules('nombre', 'Nombre y Apellido', 'required|xss_clean|min_length[10]');
		$this->form_validation->set_rules('email', 'E-mail', 'required|xss_clean|valid_email');
		$this->form_validation->set_rules('telefono', 'Telefono', 'required|xss_clean|numeric|min_length[6]');
		$this->form_validation->set_rules('mensaje', 'Mensaje', 'required|xss_clean|min_length[10]');

		if ($this->form_validation->run() == FALSE){
			$this->cargar_contacto();
		} else{

			$content = file_get_contents( site_url()."email_templates/plantilla_correo.html" );
			$content = str_replace("{nombre}",$this->input->post("nombre"), $content);
			$content = str_replace("{email}",$this->input->post("email"), $content);
			$content = str_replace("{telefono}",$this->input->post("telefono"), $content);
			$content = str_replace("{mensaje}",$this->input->post("mensaje"), $content);

			$config['mailtype'] = 'html';
			$this->load->library("email");
			$this->email->initialize($config);

			$this->load->model('model_admin');
			$conf = $this->model_admin->get_contenido( array('id'=>'1'),'configuracion');
			$this->email->from($this->input->post("email"), $this->input->post("nombre"));
			$this->email->to($correo_contactop->correo_contacto);
			$this->email->subject('Contacto desde Impot');
			$this->email->message( $content );
			$this->email->send();
			$this->contacto_enviado();
		}

 
	}

	public function cargar_contacto(){
		$data_header['count_packs']=$this->model_contenidos->cargar_mis_packs($this->session->userdata('id_cliente'),'');
		$data['packs1'] = $this->model_contenidos->get_contenido(45);
		$data['packs2'] = $this->model_contenidos->get_contenido(47);
        $data_header['contenido1']=$this->model_contenidos->get_contenido_texto(1);
		$this->load->view('view_header',$data_header);
		$this->load->view('view_contacto',$data);
		$this->load->view('view_footer');
	}

}