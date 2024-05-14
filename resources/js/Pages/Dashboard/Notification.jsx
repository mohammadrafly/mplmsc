import Layout from '../Layout';
import React from 'react';

export default function Notification({ title }) {
    return (
        <Layout>
            <div className='animate-slide-bottom-to-top p-5'>
                <div className='uppercase text-center bg-[#1858ac] rounded-lg px-7 py-5 text-white font-bold text-xl flex justify-center items-center'>
                    {title}
                </div>
            </div>
        </Layout>
    )
}