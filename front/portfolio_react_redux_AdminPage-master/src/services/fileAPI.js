import api from "../services/api";
import axios from "axios";
import { toast } from "react-toastify";
import { changeInputToFormData } from "../util/helperFunc";

const fileAPI = Object.freeze({
    async upload(resourceType, file) {
        const formData = new FormData();
        formData.append(
            "upload_preset",
            process.env.REACT_APP_CLOUDINARY_PRESET
        );
        formData.append("file", file);
        let toastId = null;
        const config = {
            onUploadProgress: (p) => {
                const progress = p.loaded / p.total;
                if (toastId === null) {
                    toastId = toast.info("업로드 중...", {
                        progress,
                    });
                } else {
                    toast.update(toastId, {
                        progress,
                    });
                }
            },
        };
        try {
            const { data } = await axios.post(
                `${process.env.REACT_APP_CLOUDINARY_URL}/${resourceType}/upload`,
                formData,
                config
            );

            toast.dismiss(toastId);
            toast.success("업로드 성공!");

            return data.secure_url;
        } catch (e) {
            toast.error("업로드 오류");
        }
    },
    download(name, path) {
        var link = document.createElement("a");
        link.href = name;
        link.download = path;
        document.body.appendChild(link);
        link.click();
    },

    async sendEmail(inputs) {
        let sendData;
        if (inputs.file) {
            sendData = changeInputToFormData(inputs, ["file"]);
        } else {
            const formData = new FormData();
            formData.append("jsonData", JSON.stringify(inputs));
            sendData = formData;
        }

        for (var key of sendData.entries()) {
            console.log(key[0] + ", " + key[1]);
        }

        await api.post("/cs/email", sendData);
    },
});

export default fileAPI;
