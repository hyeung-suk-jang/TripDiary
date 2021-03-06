import React, { useEffect, useState } from "react";
import { ResponsivePie } from "@nivo/pie";
import axios from "axios";

const apiUrl = "/json/chartsRegion.json";
const ChartsRegion = ({ size }) => {
    const [data, setData] = useState([]);

    useEffect(() => {
        const fetchData = async () => {
            try {
                const response = await axios.get(apiUrl);
                setData(response.data);
            } catch (err) {
                console.error("CharsRegion Fetch Error:", err);
            }
        };
        fetchData();
    }, []);

    return (
        <div className={`dashboardCard ${size === "full" && "full"}`}>
            <div className="card">
                <div className="card-header bg-white">지역별 그래프</div>
                <div className="card-body bg-white">
                    <ResponsivePie
                        data={data}
                        margin={{ top: 40, right: 80, bottom: 80, left: 80 }}
                        innerRadius={0.5}
                        padAngle={0.7}
                        cornerRadius={3}
                        colors={{ scheme: "category10" }}
                        borderWidth={1}
                        borderColor={{
                            from: "color",
                            modifiers: [["darker", "0.3"]],
                        }}
                        radialLabelsSkipAngle={10}
                        radialLabelsTextXOffset={6}
                        radialLabelsTextColor="#333333"
                        radialLabelsLinkOffset={0}
                        radialLabelsLinkDiagonalLength={16}
                        radialLabelsLinkHorizontalLength={24}
                        radialLabelsLinkStrokeWidth={1}
                        radialLabelsLinkColor={{ from: "color" }}
                        slicesLabelsSkipAngle={10}
                        slicesLabelsTextColor="#333333"
                        animate={true}
                        motionStiffness={90}
                        motionDamping={15}
                        defs={[
                            {
                                id: "dots",
                                type: "patternDots",
                                background: "inherit",
                                color: "rgba(255, 255, 255, 0.3)",
                                size: 4,
                                padding: 1,
                                stagger: true,
                            },
                            {
                                id: "lines",
                                type: "patternLines",
                                background: "inherit",
                                color: "rgba(255, 255, 255, 0.3)",
                                rotation: -45,
                                lineWidth: 6,
                                spacing: 10,
                            },
                        ]}
                        fill={[
                            {
                                match: {
                                    id: "ruby",
                                },
                                id: "dots",
                            },
                            {
                                match: {
                                    id: "c",
                                },
                                id: "dots",
                            },
                            {
                                match: {
                                    id: "go",
                                },
                                id: "dots",
                            },
                            {
                                match: {
                                    id: "python",
                                },
                                id: "dots",
                            },
                            {
                                match: {
                                    id: "scala",
                                },
                                id: "lines",
                            },
                            {
                                match: {
                                    id: "lisp",
                                },
                                id: "lines",
                            },
                            {
                                match: {
                                    id: "elixir",
                                },
                                id: "lines",
                            },
                            {
                                match: {
                                    id: "javascript",
                                },
                                id: "lines",
                            },
                        ]}
                        legends={[
                            {
                                anchor: "bottom",
                                direction: "row",
                                translateY: 56,
                                itemWidth: 100,
                                itemHeight: 18,
                                itemTextColor: "#999",
                                symbolSize: 18,
                                symbolShape: "circle",
                                effects: [
                                    {
                                        on: "hover",
                                        style: {
                                            itemTextColor: "#000",
                                        },
                                    },
                                ],
                            },
                        ]}
                    />
                </div>
            </div>
        </div>
    );
};

export default ChartsRegion;
