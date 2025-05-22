import React from 'react'
import HomeOutlinedIcon from '@mui/icons-material/HomeOutlined';
import { useNavigate } from 'react-router-dom';
export const Plants = () => {
 const navigate = useNavigate();
  return (
    <>
      <button onClick={e=>navigate("/")}><HomeOutlinedIcon/></button>
    </>
  )
}
