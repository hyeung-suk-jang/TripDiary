import React, { useState } from "react";
import api from "../../services/api";
import AsyncSelect from "react-select/async";

const ReactSelect = ({
    value,
    searchId,
    searchItems,
    onChange,
    placeholder,
    disabled,
    error,
}) => {
    const [options, setOptions] = useState([]);
    // 필터
    const filterOptions = (options, inputValue) => {
        if (!options.length) return;

        return options.filter((item) => {
            return (
                item.value.toLowerCase().includes(inputValue.toLowerCase()) ||
                item.label.toLowerCase().includes(inputValue.toLowerCase())
            );
        });
    };

    // ###☆ nationcode 데이터로 변경
    const loadOptions = async (inputValue) => {
        const res = await api.get(`/package/${searchId}`);

        const result = res.data.data.map((item) => {
            let label = "";
            searchItems.forEach((key) => {
                label += item[key] + " | ";
            });

            return {
                value: String(item.idx),
                label,
                name: searchId + "idx",
            };
        });

        setOptions(result);
        return filterOptions(result, inputValue);
    };

    return (
        <div>
            <AsyncSelect
                cacheOptions
                styles={{
                    control: (provided, state) => ({
                        ...provided,
                        borderColor: error ? "#dc3545" : provided.borderColor,
                    }),
                }}
                loadOptions={loadOptions}
                defaultOptions
                placeholder={placeholder + " 검색해주세요."}
                isDisabled={disabled}
                value={options.find((item) => item.value === value) || ""}
                onChange={(e) =>
                    onChange({
                        target: e,
                    })
                }
            />
        </div>
    );
};

export default React.memo(ReactSelect);
