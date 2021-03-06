import React, { useState, useEffect } from "react";
import history from "../../history";
// redux
import { useDispatch, useSelector } from "react-redux";
import formActions from "../../redux/actions/formActions";
// containers
import SectionTour from "../../containers/Order/SectionTour";
import SectionCode from "../../containers/Order/SectionCode";
// components
import FormLayout from "../../components/Form/FormLayout";
import FormSection from "../../components/Form/FormSection";
import Input from "../../components/Form/Input";
import InputDate from "../../components/Form/InputDate";
import RadioSingle from "../../components/Form/RadioSingle";
//import InputNumRange from "../../components/Form/InputNumRange";
import InputTime from "../../components/Form/InputTime";

const initialValue = {
    tourtype: "E",
    touridx: "",
    tourdays: "",
    tourstartday: "",
    tourendday: "",
    tourmember: "1",
    price: "",
    tourstarttime: "",
    userid: "",
    purchasecodeidx: "",
};

const initialPurchCode = {
    idx: "",
    purchasedate: "",
    purchasetype: "",
    codenumber: "",
    price: "",
    purchaseuser: "",
};
//working ###
// ModalSearch
const OrderFormPurchase = () => {
    const dispatch = useDispatch();
    const [purchCode, setPurchCode] = useState(initialPurchCode);
    const [purchTour, setPurchTour] = useState([]);
    let { inputs, errors } = useSelector((state) => state.form);

    useEffect(() => {
        dispatch(formActions.init(initialValue));
        return () => dispatch(formActions.initialize());
    }, [dispatch]);

    const handleChangeInputs = (e) => {
        dispatch(formActions.changeValue(e));
    };

    const handleChangePurchCode = (data) => {
        setPurchCode(data);
        dispatch(
            formActions.changeValue({
                target: {
                    name: "purchasecodeidx",
                    value: data.idx,
                },
            })
        );
    };

    const handleChangePurchTour = (data) => {
        setPurchTour((state) => [...state, data]);
    };

    const handleClickInsert = async (e) => {
        e.preventDefault();

        const resPurchase = await dispatch(formActions.submit(inputs));
        if (resPurchase?.data) {
            console.log("???", resPurchase.data);
            const purchaseidx = resPurchase.data.idx;

            formActions.submitPurchaseTour(purchaseidx, purchTour);
        }
    };

    if (!Object.keys(inputs).length) {
        inputs = initialValue;
    }
    console.log(purchTour);
    return (
        <FormLayout
            onClickInsert={handleClickInsert}
            onClickBack={() => history.goBack()}
        >
            <FormSection>
                <RadioSingle
                    label="?????? ??????"
                    name="tourtype"
                    value={inputs.tourtype}
                    onChange={handleChangeInputs}
                    options={[
                        { value: "A", title: "?????? ??????" },
                        { value: "T", title: "?????? ??????" },
                        { value: "E", title: "?????? ??????" },
                    ]}
                    errors={errors}
                />
                <Input
                    label="????????? ??????"
                    name="touridx"
                    value={inputs.touridx}
                    onChange={handleChangeInputs}
                    errors={errors}
                />
                <Input
                    label="?????? ??????"
                    name="tourdays"
                    value={inputs.tourdays}
                    onChange={handleChangeInputs}
                    errors={errors}
                />
                <InputDate
                    label="?????? ?????????"
                    name="tourstartday"
                    value={inputs.tourstartday}
                    onChange={handleChangeInputs}
                    errors={errors}
                />
                <InputDate
                    label="?????? ?????????"
                    name="tourendday"
                    value={inputs.tourendday}
                    onChange={handleChangeInputs}
                    errors={errors}
                />
                <Input
                    label="?????? ?????????"
                    name="tourmember"
                    value={inputs.tourmember}
                    onChange={handleChangeInputs}
                    errors={errors}
                />
                {/* <InputNumRange
                    value={inputs.tourmember}
                    onChange={handleChangeInputs}
                    errors={errors}
                /> */}
                <Input
                    label="??????"
                    name="price"
                    value={inputs.price}
                    onChange={handleChangeInputs}
                    errors={errors}
                />
                <InputTime
                    label="?????? ????????????"
                    name="tourstarttime"
                    value={inputs.tourstarttime}
                    onChange={handleChangeInputs}
                    errors={errors}
                />

                <Input
                    label="?????? ?????????"
                    name="userid"
                    value={inputs.userid}
                    onChange={handleChangeInputs}
                    errors={errors}
                />
                <Input
                    label="?????? ??????"
                    name="purchasecode"
                    value={inputs.purchasecodeidx}
                    onChange={handleChangeInputs}
                    errors={errors}
                />
            </FormSection>

            <FormSection>
                <SectionCode
                    label="??????????????????"
                    searchPath="/order/purchasecode"
                    data={purchCode}
                    onChange={handleChangePurchCode}
                />

                <SectionTour
                    label="????????? ??????"
                    searchPath="/package/tour"
                    onChange={handleChangePurchTour}
                    data={purchTour}
                />
            </FormSection>
        </FormLayout>
    );
};

export default OrderFormPurchase;
