import React, { useState, useEffect } from "react";
import history from "../../history";
import fileAPI from "../../services/fileAPI";
import api from "../../services/api";

// 리덕스
import { useDispatch, useSelector } from "react-redux";
import formActions from "../../redux/actions/formActions";
// components
import FormLayout from "../../components/Form/FormLayout";
import FormSection from "../../components/Form/FormSection";
import Input from "../../components/Form/Input";
import InputFile from "../../components/Form/InputFile";
import Select from "../../components/Form/Select";
import Textarea from "../../components/Form/Textarea";

import { validate, validateAll } from "../../util/validate";
import { toast } from "react-toastify";

const initialValue = {
    useridx: "",
    email: "",
    replyYN: "N",
    contents: "",
    file: "",
    filename: "",
    filepath: "",
};

const initialValueSender = {
    title: "",
    heddenStatus: "",
    user: "",
    file: "",
    sendEmail: "",
    sendContent: "",
};
//working
const CSFormQuestion = () => {
    const dispatch = useDispatch();
    let { inputs } = useSelector((state) => state.form);
    let [sendInputs, setSendInputs] = useState(initialValueSender);
    let [errors, setErrors] = useState({});

    useEffect(() => {
        dispatch(formActions.init(initialValue));
        return () => dispatch(formActions.initialize());
    }, [dispatch]);

    const handleChangeInputs = (e) => {
        dispatch(formActions.changeValue(e));
    };

    const handleChangeSendInputs = (e) => {
        const { name, value } = e.target;
        const errorMessage = validate("sendEmail", name, value);
        setErrors((state) => ({
            ...state,
            [name]: errorMessage,
        }));

        setSendInputs((state) => ({
            ...state,
            [name]: value,
        }));
    };

    const handleChangeFile = (e) => {
        const { name, files } = e.target;
        setSendInputs((state) => ({
            ...state,
            [name]: files,
        }));
    };

    const handleSendEmail = async () => {
        const { isValid, checkedErrors } = validateAll(
            "/uploaod/sendEmail",
            sendInputs
        );

        if (!isValid) {
            setErrors(checkedErrors);
            return;
        }
        try {
            await fileAPI.sendEmail({
                to: inputs.email,
                subject: sendInputs.title,
                contents: sendInputs.sendContent,
                file: sendInputs.file,
            });

            await api.post("/cs/question/update", {
                ...inputs,
                replyYN: "Y",
            });
        } catch (e) {
            e.response && toast.error(e.response.data.error);
        }
    };

    if (!Object.keys(inputs).length) {
        inputs = initialValue;
    }

    return (
        <FormLayout
            onClickSend={handleSendEmail}
            onClickBack={() => history.goBack()}
        >
            <FormSection title="문의사항">
                <Input
                    label="등록자"
                    name="useridx"
                    value={inputs.useridx}
                    onChange={handleChangeInputs}
                    disabled
                />
                <Input
                    label="수신 이메일"
                    name="email"
                    value={inputs.email}
                    onChange={handleChangeInputs}
                    disabled
                />

                <InputFile // Done
                    label="첨부파일"
                    name="file"
                    value={inputs.file}
                    filename={inputs.filename}
                    onChange={handleChangeInputs}
                    filetype="raw"
                    disabled
                />

                <Textarea
                    label="내용"
                    name="contents"
                    value={inputs.contents}
                    onChange={handleChangeInputs}
                    rows={15}
                    disabled
                />
            </FormSection>

            <FormSection title="이메일 발송">
                <Input
                    label="제목"
                    name="title"
                    value={sendInputs.title}
                    onChange={handleChangeSendInputs}
                    errors={errors}
                />

                <Select
                    label="공개 여부"
                    name="hiddenStatus"
                    value={sendInputs.hiddenStatus}
                    onChange={handleChangeSendInputs}
                    errors={errors}
                    options={[
                        { value: "visible", title: "공개" },
                        { value: "hidden", title: "비공개" },
                    ]}
                />

                <InputFile // Done
                    label="첨부파일"
                    name="file"
                    value={sendInputs.file}
                    filename={sendInputs.filename}
                    onChange={handleChangeFile}
                    filetype="raw"
                />

                <Input
                    label="발신 이메일"
                    name="sendEmail"
                    value={sendInputs.sendEmail}
                    onChange={handleChangeSendInputs}
                    errors={errors}
                />

                <Textarea
                    label="내용"
                    name="sendContent"
                    value={sendInputs.sendContent}
                    onChange={handleChangeSendInputs}
                    rows={12}
                    errors={errors}
                />
            </FormSection>
        </FormLayout>
    );
};

export default CSFormQuestion;
