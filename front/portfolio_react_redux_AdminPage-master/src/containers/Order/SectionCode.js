import React from "react";
import Input from "../../components/Form/Input";
import Select from "../../components/Form/Select";
import ModalSearch from "../../components/Modal/ModalSearch";

const PurchaseCode = ({ label, searchPath, data, onChange }) => {
    return (
        <React.Fragment>
            <tr>
                <td colSpan="2">
                    <ModalSearch
                        label={label}
                        searchPath={searchPath}
                        onChange={onChange}
                    />
                </td>
            </tr>
            <Input
                label="구매코드"
                name="idx"
                value={data.idx}
                disabled={true}
            />
            <Input
                label="구매일자"
                name="purchasedate"
                value={data.purchasedate}
                disabled={true}
            />
            <Select
                label="구매방식"
                name="purchasetype"
                value={data.purchasetype}
                disabled={true}
                options={[
                    { value: "1", title: "직접구매" },
                    { value: "3", title: "관광지 구매" },
                ]}
            />
            <Input
                label="구매코드번호"
                name="codenumber"
                value={data.codenumber}
                disabled={true}
            />
            <Input
                label="가격"
                name="price"
                value={data.price}
                disabled={true}
            />
            <Input
                label="구매자id"
                name="purchaseuser"
                value={data.purchaseuser}
                disabled={true}
            />
        </React.Fragment>
    );
};

export default PurchaseCode;
