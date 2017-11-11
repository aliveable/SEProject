function regvalidate(){
        if(document.register.username.value==""){
        alert("กรุณาใส่ชื่อผู้ใช้งานให้ถูกต้อง");
        return(false);
    }
	else if(document.register.password.value==""){
        alert("กรุณาใส่รหัสผ่าน");
        return(false);
    }
    else if(document.register.password_confirmation.value==""){
        alert("กรุณายืนยันรหัสผ่าน");
        return(false);
    }
    else if(document.register.email.value==""){
        alert("กรุณาระบุอีเมลล์");
        return(false);
    }
    else if(document.register.first_name.value==""){
        alert("กรุณาระบุชื่อ");
        return(false);
    }
    else if(document.register.last_name.value==""){
        alert("กรุณาระบุนามสกุล");
        return(false);
    }else if(document.register.postal_code.value==""){
        alert("กรุณาระบุรหัสไปรษณีย์");
        return(false);
    }else if(document.register.province.value==""){
        alert("กรุณาเลือกจังหวัด");
        return(false);
    }else if(document.register.phone.value==""){
        alert("กรุณาระบุหมายเลขโทรศัพท์");
        return(false)
    }else if(document.register.district.value==""){
        alert("กรุณาระบุเขต/อำเภอ");
        return(false)
    }else if(document.register.sub_district.value==""){
        alert("กรุณาใส่หมายเลขโทรศัพท์");
        return(false)
    }else if(document.register.address.value==""){
        alert("กรุณาระบุบ้านเลขที่");
        return(false)
    }
    else{
        return(true);
    }
}