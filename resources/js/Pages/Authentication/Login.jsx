import AuthLayout from '../AuthLayout';
import { Head, router } from '@inertiajs/react';
import React, { useState, useEffect } from 'react';

export default function Login() {
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [error, setError] = useState('');
    const [csrf, setCsrf] = useState('');

    useEffect(() => {
        const csrfToken = document.querySelector('meta[name="csrf"]').getAttribute('content');
        setCsrf(csrfToken);
    }, []);

    const handleSubmit = async (event) => {
        event.preventDefault();

        try {
            const response = await fetch('/', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': csrf
                },
                body: JSON.stringify({ email, password }),
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
        <AuthLayout>
            <Head title='Login' />
            <div className='w-full mx-5 text-[#043474]'>
                <div className=''>
                    <h1 className='font-bold text-4xl'>MPLMSC</h1>
                </div>
                <form onSubmit={handleSubmit} className='py-10'>
                    <p className='font-bold'>Login with Your Email</p>
                    <div className='py-1'>
                        <div className='mt-2'>
                            <input 
                                type="text" 
                                id="email" 
                                name="email" 
                                value={email}
                                onChange={(e) => setEmail(e.target.value)}
                                placeholder='Email' 
                                className='w-full rounded-lg p-2 bg-gray-300 font-semibold focus:outline-none'
                            />
                        </div>
                    </div>
                    <div className='py-1'>
                        <div className='mt-2'>
                            <input 
                                type="password" 
                                id="password" 
                                name="password" 
                                value={password}
                                onChange={(e) => setPassword(e.target.value)}
                                placeholder='Password' 
                                className='w-full rounded-lg p-2 bg-gray-300 font-semibold focus:outline-none'
                            />
                        </div>
                    </div>
                    <div className='block'>
                        <div>
                            <input type="checkbox" className='mr-2' />
                            Show Password
                        </div>
                        <div>
                            <input type="checkbox" className='mr-2 mt-1' />
                            Remember Username
                        </div>
                    </div>
                    {error && <p className="text-red-500">{error}</p>} {/* Display error message if exists */}
                    <div className='flex justify-center items-center mt-5'>
                        <button type="submit" className='rounded-lg py-2 px-10 bg-[#043474] text-white font-bold'>Log In</button>
                    </div>
                </form>
            </div>
        </AuthLayout>
    );
}
