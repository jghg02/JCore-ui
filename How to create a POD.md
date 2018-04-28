# Crear un POD 

Lo primero que debemos hacer es installar `cocoapods`

	sudo gem install cocoapods
	
Luego debemos crear el repo en GitHub y hacer el push de nuestro código. 

Estando en GitHub hacemos click en el link de **Releases** > **Create a new release** colocamos una versión un título y una descripción y hacemos click en el boton `Publish release`

Este es el proceso con el cual `GitHub` crea y publica una lib. 

## Creamos Podspec

Todo Pod debe tener un archivo de configuración con extension `.podspec` el cual contiene toda las especificaciones del pod. 

Para crearlo vamos a directorio donde tenemos nuestro proyecto y estando en este path lo creamos. 

	code JCore-ui.podespec 
	
Por convencion el archivo debe llamarse igual que el proyecto. 

El contenido de este archivo debe ser el siguiente:

	Pod::Spec.new do |s|

  		s.name             = 'JCore-ui'
		s.version          = '0.0.1'
   	 	s.summary          = 'UI lib.'
	  	s.swift_version = '4.0'
 
		s.description      = <<-DESC
		This is the POD with all information bout ui
                   		DESC
 
		s.homepage         = 'http://www.google.com'
		s.license      	   = { :type => 'MIT', :file => 'LICENSE.txt' }
		s.author           = { 'Josue Hernandez' => 'jghg.02@gmail.com' }
		s.source           = { :git => 'https://github.com/jghg02/UIPod.git', :tag => s.version.to_s }
 
 		s.requires_arc = true

		s.ios.deployment_target = '10.0'
		s.source_files = 'JCore-ui/*'
    
	 end
	
Una vez creado este archivo es necesario validar que este correcto. Para poder realizar esto es necesario hacerle un `Linting`. 

Esto se realiza con el comando 
	
	pod lib lint 
	
Dicho comando se debe ejecutar en el directorio del proyecto. Si todo anda bien deberia de avisarte con el siguiente mensaje 

	<Pod name> passed validation.
	
## Publicando el Pod

Para poder publicar el repo es necesario ejecutar el siguiente comando 

	pod trunk register jghg.02@gmail.com 'JCore-UI' --description='JCore UI Lib by Josue H.'
	
Luego de realizar esto. Nos van a enviar un email a la direccion especificada el cual contendra un link con el cual nos valida para poder crear la sesion en CocoaPods y de esta forma quedar habilitados para poder publicar nuestro pod. 

Al tener esto ejecutamos el siguiente comando 

	pod trunk push JCore-ui.podspec
	
Esto nos publica nuestro Pod. 


## Posibles errores 

	[iOS] swift: The validator used Swift 3.2 by default because no Swift version was specified. To specify a Swift version during validation, add the `swift_version` attribute in your podspec. Note that usage of the `--swift-version` parameter or a `.swift-version` file is now deprecated.
	
Para solucionar esto se debe especificar al version de `swift` con la que se va a trabajar. La sigueinte linea debe colocarse en el `.podspec`

	s.swift_version = '4.0'





# NEW

[How to create a private pod](https://medium.com/@shahabejaz/create-and-distribute-private-libraries-with-cocoapods-5b6507b57a03)
