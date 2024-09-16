
# NotIFica

**Atenção:** Este app foi desenvolvido pelos professores do curso desenvolvimento com linguagem swift e apenas replicado pelos alunos do curso. Todos os créditos pelo desenvolvimento do código e do design estão no final deste README. 

Este projeto foi feito como projeto final do curso, onde a cada aula uma nova branch era adicionada de acordo com a matéria aplicada no dia. Ao todo foram 14 aulas onde aprendemos a implantar novas funções ao aplicativo.

## Demonstração
- Protótipo no Figma: https://www.figma.com/design/jIlLGQbBMCO8siAzhLT8rH/AppTeste?node-id=9-655&node-type=frame&t=8ji9rXJzWW5Sge8M-0 


## Descrição
- Aplicativo desenvolvido pelos professores do curso Desenvolvimento de aplicativos utilizando a linguagem Swift do IFB com intuito de permitir que ocorrências sejam registradas e acompanhadas, bem como solucionadas.




## Funcionalidades
- Tela de Login: Interface para autenticação de usuários.
- Tela de Registro: Interface para registro dos usuários.
- Tela de Home: Interface com a lista de ocorrências
- Tela de Nova Ocorrência: Interface onde é possível registrar uma nova ocorrência
- Tela de Sobre: Interface onde estão as informações sobre o app e o crédito aos desenvolvedores. 

## Tecnologias Utilizadas
- Swift: É uma linguagem de programação moderna e poderosa desenvolvida pela Apple para criar aplicativos para todas as suas plataformas, incluindo iOS, macOS, watchOS e tvOS.
- Modelo MVVM (Model View ViewModel): É uma arquitetura que separa a interface do usuário (View) dos dados (Model) através de um intermediário, o ViewModel, que gerencia a lógica de apresentação e conecta as duas partes."
  - Model: Representa os dados da aplicação e a lógica de negócio subjacente.
  - View: Responsável pela interface do usuário, exibindo os dados e permitindo a interação do usuário.
  - ViewModel: Atua como intermediário, expondo os dados do Model de uma forma adequada para a View e implementando a lógica de apresentação, como validações e comandos."
- Xcode: Xcode é o ambiente de desenvolvimento integrado (IDE) oficial da Apple para criar aplicativos para iOS, macOS, watchOS e tvOS. Ele oferece um conjunto completo de ferramentas para facilitar o processo de desenvolvimento, desde a codificação até a publicação.

## Como Usar
- Esta linguagem é exclusiva para o sistema iOS, então para rodar o aplicativo você precisa de acesso de um iphone ou MacOS
1. Baixe o código no seu MacOs
2. Abra o arquivo com Xcode
3. Use o simulador para rodar a aplicação
4. Você também pode integrar seu Iphone no Xcode para visualizar o aplicativo no seu celular


## Estrutura do Projeto
- AppNotifica.xcodeproj: 
  - project.xcworkspace; Pasta criada automaticamente pelo Xcode
    - xcshareddata
      - IDEWorkspaceChecks.plist
    - xcuserdata/ifb-biotic-02.xcuserdatad
      - UserInterfaceState.xcuserstate
    - contents.xcworkspacedata
  - xcuserdata
    - dariopintor.xcuserdatad/xcschemes
      - xcschememanagement.plist
    - ifb-biotic-02.xcuserdatad
      - xcdebugger
        - Breakpoints_v2.xcbkptlist
      - xcschemes
        - xcschememanagement.plist
    - project.pbxproj
- AppNotifica
  - Resource
    - AppNotifica.xcdatamodeld
      - AppNotifica.xcdatamodel
        - contents
      - .xccurrentversion
    - Assets.xcassets
      - AccentColor.colorset
        - Contents.json
      - AppIcon.appiconset
        - Contents.json
      - Color.colorset
        - Contents.json
      - ImageLogin.imageset
        - Contents.json
        - logo-login@2x.png
      - ImageLogin2.imageset
        - Contents.json
        - logo-login@2x.png
      - LogoLouchScreen.imageset
        - Contents.json
        - logo-launch-screen@2x.png
      - LogoLounchScrren.imageset
        - Captura de Tela 2022-10-10 às 18.04.44 1.png
        - Contents.json
      - buttonBackGroundColor.colorset
        - Contents.json
      - imagemCamera.imageset
        - Contents.json
        - imagemCamera@2x.png
      - placeHolderColor.colorset
        - Contents.json
      - textFieldBackGroundColor.colorset
        - Contents.json
      - textLabelColor.colorset
        - Contents.json
      - viewBackgroundColor.colorset
        -Contents.json
      - Contents.json
    - Base.lproj
      - LaunchScreen.storyboard
      - Main.storyboard
    - AppDelegate.swift
    - SceneDelegate.swift
    - ViewController.swift
    - logo-launch-screen@2x.png
  - Source
    - Controller: Gerencia a interface do aplicativo
      - Home: Pasta que contém arquivos relacionados a página Home
        - HomeView.swift: Gerencia a interface comum da página Home
        - HomeViewController.swift: Gerencia comportamentos adicionais específico de elementos da página Home
        - HomeViewModel.swift: Gerencia a lógica da página Home
      - Login: Pasta que contém arquivos relacionados a página Login
        - LoginView.swift: Gerencia a interface comum da página Login
        - LoginViewController.swiftt: Gerencia comportamentos adicionais específico de elementos da página Login
      - NovaOcorrencia: Pasta que contém arquivos relacionados a página Nova Ocorrência
        - EscolherImagem.swift: Escolher a imagem da galeria 
        - NovaOcorrenciaView.swift: Gerencia comportamentos adicionais específico de elementos da página Nova Ocorrência
        - NovaOcorrenciaViewController.swiftt: Gerencia comportamentos adicionais específico de elementos da página Nova Ocorrência
        - NovaOcorrenciaViewModel.swift: Gerencia a lógica da página Nova Ocorrência
      - Register: : Pasta que contém arquivos relacionados a página Registro
        - RegisterView.swift: Gerencia a interface comum da página Registrar
        - RegisterViewController.swift: t: Gerencia comportamentos adicionais específico de elementos da página Registrar
      - Sobre: Pasta que contém arquivos relacionados a página Sobre
        - SobreView.swift: Gerencia a interface comum da página Sobre
        - SobreViewController.swiftt: Gerencia comportamentos adicionais específico de elementos da página Sobre
      - TabBar: Pasta que contém arquivos relacionados a TabBar
        - TabBarController.swiftt: Gerencia comportamentos adicionais específico de elementos da página da TabBar
    - Coordinator: Responsável pelo fluxo de navegação
      - Coordinator.swift: Responsável pelo fluxo de navegação da página
      - HomeCoordinator.swift: Responsável pelo fluxo de navegação da página Home
      - LoginCoordinator.swift: Responsável pelo fluxo de navegação da página Login
      - NovaOcorrenciaCoordinator.swift: Responsável pelo fluxo de navegação da página Nova Ocorrência
      - RegisterCoordinator.swift: Responsável pelo fluxo de navegação da página Registro
      - SobreCoordinator.swift: Responsável pelo fluxo de navegação da página Sobre
      - TabBarCoordinator.swift: Responsável pelo fluxo de navegação da TabBar
    - Extesions: Extensões
      - UIColor+.swift: Página onde são definidas as cores dos elementos do App
    - Infrastructure: Pasta onde contém a infraestrutura dos elementos do app
      - ButtonDefault.swift: Infraestrutura do botão
      - ImageDefault.swift: Infraestrutura da imagem
      - LabelDefault.swift: Infraestrutura
      - TextFieldDefault.swift: Infraestrutura do campo de texto
      - ViewControllerDefault.swift: Infraestrutura padrão da ViewController
      - ViewDefault.swift: Infraestrutura padrão da view
  - Info.plist
- AppNotificaTests
  - AppNotificaTests.swift
- AppNotificaUITests
  - AppNotificaUITests.swift
  - AppNotificaUITestsLaunchTests.swift




## Contato
Para mais informações, você pode entrar em contato:
Anne Gabrielly: annegfv@gmail.com 

## Créditos

### Desenvolvedores: 
- Caio Moura Daoud
- Diógenes Ferreira Reis Fustinoni
- Fábio Ferraz Fernandez
- Heitor José dos Santos Barros
- José Dario Pintor da Silva
- Tiago Henrique Faccio Segato
- 


