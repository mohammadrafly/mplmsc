import AuthLayout from '../AuthLayout';
import { Head, router } from '@inertiajs/react';
import React, { useState, useEffect } from 'react';

export default function Login() {
    const [username, setUsername] = useState('');
    const [password, setPassword] = useState('');
    const [error, setError] = useState('');
    const [csrf, setCsrf] = useState('');
    const [showError, setShowError] = useState(false);
    const [showPassword, setShowPassword] = useState(false);
    const [rememberToken, setRememberToken] = useState(false);

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
                body: JSON.stringify({ username, password, rememberToken }), 
            });

            const data = await response.json();
            
            if (data.code === 200) {
                router.visit(data.redirect, { method: 'get' })
            } else {
                setError(data.message);
                setShowError(true);
                setTimeout(() => setShowError(false), 5000);
            }
        } catch (error) {
            console.error('Error:', error);
        }
    };

    return (
        <AuthLayout>
            {showError && (
                <div className="animate-slide-top-to-bottom bg-red-500 text-white text-center py-2 fixed top-0 left-0 right-0 z-50">
                    {error}
                </div>
            )}
            <div className='animate-slide-bottom-to-top w-full mx-5 text-[#043474]'>
                <div className=''>
                    <h1 className='font-bold text-4xl'>MPLMSC</h1>
                </div>
                <form onSubmit={handleSubmit} className='py-10'>
                    <p className='font-bold'>Login with Your Email or NIM</p>
                    <div className='py-1'>
                        <div className='mt-2'>
                            <input 
                                type="text" 
                                id="username" 
                                name="username" 
                                value={username}
                                onChange={(e) => setUsername(e.target.value)}
                                placeholder='Email or NIM' 
                                className='w-full rounded-lg p-2 bg-gray-300 font-semibold focus:outline-none'
                            />
                        </div>
                    </div>
                    <div className='py-1'>
                        <div className='mt-2'>
                            <input 
                                type={showPassword ? "text" : "password"}
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
                            <input type="checkbox" className='mr-2' onChange={() => setShowPassword(!showPassword)} />
                            Show Password
                        </div>
                        <div>
                            <input type="checkbox" className='mr-2 mt-1' checked={rememberToken} onChange={() => setRememberToken(!rememberToken)} />
                            Remember Me
                        </div>
                    </div>
                    <div className='flex justify-center items-center mt-5'>
                        <button type="submit" className='rounded-lg py-2 px-10 bg-[#043474] text-white font-bold'>Log In</button>
                    </div>
                </form>
            </div>
        </AuthLayout>
    );
}
