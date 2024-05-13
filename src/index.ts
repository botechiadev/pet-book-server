import express, { Request, Response } from "express";
import cors from "cors";
import dotenv from "dotenv";


dotenv.config();

const app = express();

app.use(cors());
app.use(express.json());
app.get("/ping", (req: Request, res: Response) => {
  res.status(200).json("pong");
});

app.listen(Number(process.env.PORT) || 3030, () => {
  console.log(`Servidor rodando na porta ${Number(process.env.PORT) || 3003}`);
});

// routers das entidades
