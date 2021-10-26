# React-Redux Torre-Api

Este proyecto tiene consume la Torre-Api, donde busca al usuario atraves del username.
El proceso de request lo hace atraves del back-end usando Rails-api.
Atraves del Redux se puede apreciar algunos detalles de la informacion personal de la app
Torre. Ademas tambien busca Post mendiante el codigo y regresa algunos detalles del Post del trabajo.

## WebSite Sections
- Esta captura es el Home, con un login de inicio, si no se tiene una cuenta es necesario registrarse
![image](./Assets/Login.png)

- Una vez que se hace el login o se registra, uno puede buscar un trabajo teniendo el codigo del post
![image](./Assets/Logged.png)


## Live demo

- UNDER CONSTRUCTION

## Built With

- Ruby on Rails
- Bcrypt
- JWT
- Active_model_serializers

### **Endpoints of API**

| Method  | Endpoint                      | Functionality                      |
| ---     | ---                           |  ---:                              | 
| POST    |  users/login                        | Log In Users                       | 
| POST    |  users                        | Create Users                       | 
| POST    |  job                        | request job post with id                       | 
| GET     |  info                 | Get the user's detailed information      |

## How to start the project from your Local environment

- Open your terminal and cd where you want to store the project
- Run the following command - `git clone https://github.com/Wusinho/Torre-be ` for front-end
- Cd into the created directory 
- Run `npm install` to install all dependencies
- Make sure you have [Yarn](https://yarnpkg.com/) installed in your machine.**
 
- Open the terminal and go to the folder of the game and run the following commands:

  `yarn install`

  `bundle install`

- You need to configure the database with the following commands:** <br>
`rails db:create db:migrate` <br>

## Author

👤 **Heber Lazo**

- Github: [@Wusinho](https://github.com/Wusinho)
- LinkedIn: [Heber Lazo](https://www.linkedin.com/in/heber-lazo-benza-523266133/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## Show your support

Give a star if you :star: like this project!

## Acknowledgments

- Microverse

## 📝 License

This project is [MIT](LICENSE) licensed.
