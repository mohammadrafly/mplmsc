import React from 'react';

export default function AuthLayout({ children }) {
  return (
    <div className='min-h-screen flex justify-center items-center bg-white'>
        {children}
    </div>
  )
}