import axios from "axios";

import { connectionConfig } from "./config";
const { protocol, host, port } = connectionConfig;

export const getAllOffices = async (params) => {
    return axios.get(`${protocol}://${host}:${port}/api/office`, {
        params,
    });
};
