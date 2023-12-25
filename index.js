import express from "express";
import cors from "cors";
import FileUpload from "express-fileupload";
import session from "express-session";
import SequelizeStore from "connect-session-sequelize"
import dotenv from "dotenv"
// import UserRoute from "./routes/UserRoute.js";
import ReservasiRoute from "./routes/ReservasiRoute.js"
import WhatsappRoute from "./routes/WaModel.js"
import GuruRoute from "./routes/GuruRoute.js"
import db from "./config/Database.js";
import UserRoute from "./routes/UserRoute.js"
import AuthRoute from "./routes/AuthRoute.js"


dotenv.config();

const app = express();
const sessionStore = SequelizeStore(session.Store)

const store = new sessionStore({
    db:db
})

app.use(session({
    secret: 'somevalue',
    // secret: process.env.SESS_SECRET,
    resave: false,
    saveUninitialized: true,
    store: store,
    cookie: {
        secure: 'auto'
    }
}))

// app.use(cors());
app.use(cors({
    credentials: true,
    origin: 'http://localhost:3000'
}));
app.use(express.json());
app.use(FileUpload())


// app.use(UserRoute);
app.use(ReservasiRoute)
app.use(WhatsappRoute)
app.use(GuruRoute)
app.use(UserRoute)
app.use(AuthRoute)

app.listen(process.env.APP_PORT, ()=> {
    console.log("Server up and running...");
})