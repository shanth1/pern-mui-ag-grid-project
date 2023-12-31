// Material Dashboard 2 React example components
import DashboardLayout from "examples/DashboardLayout";
import DashboardNavbar from "examples/DashboardNavbar";

import { useState } from "react";

import { officeColumnDefs } from "./columnDefs/officeColumnDefs";
import { employeeColumnDefs } from "./columnDefs/employeeColumnDefs";
import { Table } from "./components/Table";
import { EmployeeHeader } from "./components/EmployeeHeader";
import { EmployeeForm } from "./components/EmployeeForm";
import { BasicModal } from "./components/BasicModal";
import { getAllEmployeesFromOffice } from "api/employee";

function Tables() {
    const [employeeData, setEmployeeData] = useState([]);

    const [selectedEmployeeId, setSelectedEmployeeId] = useState();
    const [selectedOfficeId, setSelectedOfficeId] = useState();

    const officeCelListener = (e) => {
        const officeId = e?.data?.id;
        setSelectedOfficeId(officeId);
        setSelectedEmployeeId();
        getAllEmployeesFromOffice(officeId)
            .then(({ data }) => {
                setEmployeeData(data);
            })
            .catch((error) => console.error(error));
    };

    const employeeCelListener = (e) => {
        const employeeId = e?.data?.id;
        setSelectedEmployeeId(employeeId);
    };

    const [addModalActive, setAddModalActive] = useState(false);
    const addHandleOpen = () => setAddModalActive(true);
    const addHandleClose = () => setAddModalActive(false);

    const [editModalActive, setEditModalActive] = useState(false);
    const editHandleOpen = () => setEditModalActive(true);
    const editHandleClose = () => setEditModalActive(false);

    return (
        <>
            <BasicModal active={addModalActive} handleClose={addHandleClose}>
                <EmployeeForm
                    handleClose={addHandleClose}
                    officeId={selectedOfficeId}
                    setEmployeeData={setEmployeeData}
                />
            </BasicModal>
            <BasicModal active={editModalActive} handleClose={editHandleClose}>
                <EmployeeForm
                    employeeId={selectedEmployeeId}
                    setEmployeeId={setSelectedEmployeeId}
                    isEditForm
                    handleClose={editHandleClose}
                    officeId={selectedOfficeId}
                    setEmployeeData={setEmployeeData}
                />
            </BasicModal>
            <DashboardLayout>
                <DashboardNavbar />
                <Table
                    isInfinite
                    header={"Офисы компании"}
                    columnDefs={officeColumnDefs}
                    cellClickListener={officeCelListener}
                />
                <Table
                    header={
                        <EmployeeHeader
                            addHandleOpen={addHandleOpen}
                            editHandleOpen={editHandleOpen}
                            officeId={selectedOfficeId}
                            setEmployeeData={setEmployeeData}
                            employeeId={selectedEmployeeId}
                            setEmployeeId={setSelectedEmployeeId}
                        />
                    }
                    selectedOfficeId={selectedOfficeId}
                    columnDefs={employeeColumnDefs}
                    rowData={employeeData}
                    cellClickListener={employeeCelListener}
                />
            </DashboardLayout>
        </>
    );
}

export default Tables;
