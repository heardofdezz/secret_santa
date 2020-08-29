import "axios"
import Axios from "axios"

const API_URL = 'http://localhost:3000'

// const secureAxiosInstance = Axios.create({
//     baseURL: API_URL,
//     headers: {
//         'Content-Type': 'application/json'
//     }
// })

const plainAxiosInstance = Axios.create({
    baseURL: API_URL,
    withCredentials: true,
    headers: {
        'Content-Type': 'application/json'
    }
})

export {plainAxiosInstance}