import React, { useState, useEffect } from 'react';
import { Link, router } from '@inertiajs/react';
import Layout from '../../Layout';

export default function Profile({ title, data }) {
    const [csrf, setCsrf] = useState('');

    useEffect(() => {
        const csrfToken = document.querySelector('meta[name="csrf"]').getAttribute('content');
        setCsrf(csrfToken);
    }, []);

    const handleSubmit = async (event) => {
        event.preventDefault();

        try {
            const response = await fetch('', {
                method: 'GET',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': csrf
                },
            });

            const data = await response.json();
            
            if (data.code === 200) {
                router.visit(data.redirect, { method: 'get' })
            } else {
                setError(data.message);
            }
        } catch (error) {
            console.error('Error:', error);
        }
    };

    return (
        <Layout>
            <div className='p-10 text-[#043474]'>
                <h1 className='font-bold text-3xl text-[#043474]'>{title}</h1>
                <form action="" className='mt-10'>
                    <div>
                        <label htmlFor="">Name</label>
                        <input type="text" className='rounded-lg py-2 px-4 bg-gray-200 w-full'/>
                    </div>
                    <div>
                        <label htmlFor="">Email</label>
                        <input type="text" className='rounded-lg py-2 px-4 bg-gray-200 w-full'/>
                    </div>
                    <div>
                        <label htmlFor="">Foto</label>
                        <input type="text" className='rounded-lg py-2 px-4 bg-gray-200 w-full'/>
                    </div>
                </form>
            </div>
        </Layout>
    )
}