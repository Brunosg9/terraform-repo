º PROJETO TERRAFORM AWS 

1 - Criar um Bucket S3: Comece criando um bucket S3 para armazenar os arquivos do seu site. O nome do bucket deve ser globalmente único em todas as contas da AWS.

2 - Configurar o Bucket para Hospedagem de Site Estático: Nas propriedades do bucket S3, habilite a hospedagem de site estático e especifique o documento de índice padrão (por exemplo, "index.html") e o documento de erro opcional (por exemplo, "error.html").

3 - Enviar Arquivos do Site: Faça o upload dos arquivos do seu site estático (HTML, CSS, JS, imagens, etc.) para o bucket S3. Certifique-se de definir as permissões apropriadas (public-read) para os objetos, tornando-os acessíveis ao público.

4 - Habilitar Acesso Público: Permita o acesso público ao bucket S3 e seus objetos configurando a política do bucket ou as Listas de Controle de Acesso (ACLs).


5 - Testar o Site: Após a configuração, teste seu site estático acessando-o através do URL do site do bucket S3 ou do seu domínio personalizado.