# Tutorial de uso do Catálogo Privado na IBM Cloud.

 Esse é um exemplo de como adicionar uma VPC provisionada pelo IBM Cloud Schematics no catálogo privado da IBM Cloud. Para isso, é necessário criar uma release

 ### Passo a passo:
 1. Faça um fork desse repositório para sua conta no Github.
 2. Na página do seu repositório no Github, crie uma release.

 <img src="https://github.com/RafaelLOliveira/catalogo-ibm-cloud/blob/main/imagens/release1.png" width="200"/>

 3. Crie uma tag e preencha os campos restantes

 ![imagem 2](https://github.com/RafaelLOliveira/catalogo-ibm-cloud/blob/main/imagens/release2.png)

 4. Acesse sua conta na IBM Cloud, acesse Catalog > Catalog Settings > Private Catalogs, e clique em Create para criar um Catálogo Privado.
 5. Após criar o catálogo privado, clique em Add. No campo Source Code coloque o link do "Source code (tar.gz)" que foi criado na release do passo 2 e 3.

 <img src="https://github.com/RafaelLOliveira/catalogo-ibm-cloud/blob/main/imagens/catalogo-privado.png"/>

 <img src="https://github.com/RafaelLOliveira/catalogo-ibm-cloud/blob/main/imagens/add-product.png" width="500"/>

 6. Em Versions List, clique na versão criada e siga o passo a passo indicado.

    OBS: Na etapa de Configure Version, inclua a variável 'ibmcloud_api_key'. Opcionalmente inclua as outras variáveis.

    OBS 2: Na etapa Validate Version, coloque sua chave de API, desabilite o Secret Manager e clique em Validate.

 <img src="https://github.com/RafaelLOliveira/catalogo-ibm-cloud/blob/main/imagens/version-list.png" />

 7. Com status 'Validated', finalize o processo clicando em 'Ready to share'.

 <img src="https://github.com/RafaelLOliveira/catalogo-ibm-cloud/blob/main/imagens/final.png" />
 
  8. Do lado direito em 'edit' é possível editar os campos do produto. Acesse o produto no catálogo em 'View catalog entry'.

 <img src="https://github.com/RafaelLOliveira/catalogo-ibm-cloud/blob/main/imagens/final2.png" />
