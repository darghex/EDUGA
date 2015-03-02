<!DOCTYPE html>
<html lang="es">
<base href="<?=base_url()?>" /> 
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<title>Modulo <?php echo str_replace("_", " ", $titulo); ?> (Nuevo registro) - Administrador</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<?php $this->load->view('view_admin_css_js'); ?>
</head>

<body>
	<?php $this->load->view('view_root_header'); ?> 
	<div class="content">
		<?php $this->load->view('view_root_menu'); ?> 
		<div class="mainbar">
			<div class="page-head">
				<h2 class="pull-left"><i class="fa fa-table"></i>Modulo <?php echo str_replace("_", " ", $titulo); ?> (Nuevo registro)</h2>
				<div class="bread-crumb pull-right">
					<a href="inicio/root"><i class="fa fa-home"></i> Inicio</a> 
					<span class="divider">/</span> 
					<a href="<?php echo base_url(); ?><?php echo $this->uri->segment(1); ?>/<?php echo $this->uri->segment(2); ?>/lista" class="bread-current">Modulo <?php echo $titulo; ?></a>				</div>
					<div class="clearfix"></div>
				</div>
				<div class="matter">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="widget">
									<div class="widget-head">
										<div class="pull-left"><?php echo str_replace("_", " ", $titulo); ?></div>
										<div class="widget-icons pull-right">
											<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
											<a href="#" class="wclose"><i class="fa fa-times"></i></a>
										</div>  
										<div class="clearfix"></div>
									</div>
									<div class="widget-content">
										<div class="padd">
											<br />
											<?php $attributos=array('class'=>'form-horizontal','role'=>'form'); ?>
											<?=form_open_multipart(base_url().$titulo.'/root/guardar_pregunta',$attributos)?>


											<?php echo textarea ("Pregunta","pregunta","pregunta","Ingrese el nombre de la encuesta como referencia",$this->input->post('pregunta'),form_error('pregunta', '<div class="mensaje_error">', '</div>')); ?>
											<?php echo textarea ("A","opcion1","opcion1","Ingrese la primera opción de respuesta",$this->input->post('opcion1'),form_error('opcion1', '<div class="mensaje_error">', '</div>')); ?>
											<?php echo textarea ("B","opcion2","opcion2","Ingrese la segunda opción de respuesta",$this->input->post('opcion2'),form_error('opcion2', '<div class="mensaje_error">', '</div>')); ?>
											<?php echo textarea ("C","opcion3","opcion3","Ingrese la tercera opción de respuesta",$this->input->post('opcion3'),form_error('opcion3', '<div class="mensaje_error">', '</div>')); ?>
											<?php echo textarea ("D","opcion4","opcion4","Ingrese la cuarta opción de respuesta",$this->input->post('opcion4'),form_error('opcion4', '<div class="mensaje_error">', '</div>')); ?>
											

											<div class="form-group">
												<label class="col-lg-2 control-label">Respuesta correcta</label>
												<div class="col-lg-2">
													<select id="respuesta" name="respuesta" class="form-control">
														<option value="" selected>Seleccione</option>
														<option value="A">A</option>
														<option value="B">B</option>
														<option value="C">C</option>
														<option value="D">D</option>
													</select>
													<?php echo form_error('respuesta', '<div class="mensaje_error">', '</div>'); ?>
												</div>
											</div>





											<?php 
											$opciones=array("1"=>"Activo","0"=>"Inactivo");
											echo select ("Estado","id_estados","id_estados",$opciones); 
											?>
											<?php echo form_error('id_estados', '<div class="mensaje_error">', '</div>'); ?>
											<div class="form-group">
												<div class="col-lg-offset-2 col-lg-6">
													<button type="submit" class="btn btn-sm btn-primary btnguardar">Guardar</button>
													<a href="<?php echo base_url().$this->uri->segment(1)."/".$this->uri->segment(2); ?>"><button type="button" class="btn btn-sm btn-warning btncancelar">Cancelar</button></a>
												</div>
											</div>
											
											<input type="hidden" name="id_categoria" id="id_categoria" value="<?php if ($this->uri->segment(4)!='') { echo $this->uri->segment(4); } else {  echo $this->input->post('id_tesoro_saber_categoria'); } ?>">


											<?=form_close()?>
										</div>
									</div>
									<div class="widget-foot">
									</div>
								</div>
							</div>  

						</div>
					</div>
				</div>
			</div>
		</div>      
		<div class="clearfix"></div>
	</div>
	<?php $this->load->view('view_admin_footer'); ?>






</body>
</html>
